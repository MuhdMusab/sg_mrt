import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/custom_box_shadow.dart';
import 'package:mrt_map/model/station.dart';
import 'package:mrt_map/helper/dijkstra.dart';

final Station _defaultStation = Station();
Station _first = _defaultStation;
int _count = 0;
bool _colored = false;
int? _start;

void _changePathColor(ClickButton widget, Dijkstra alg) {
  int current = widget.getStationId();
  while (current != max) {
    Stations.changeColor(current);
    current = alg.parentTree[current];
  }
}

class ClickButton extends StatefulWidget {
  int? _stationId;
  double? _x;
  double? _y;
  Function? notifyParent;

  ClickButton(double x, double y, int stationId, Function? notifyParent) {
    this._stationId = stationId;
    this._x = x;
    this._y = y;
    this.notifyParent = notifyParent;

  }

  @override
  State<ClickButton> createState() => _ClickButtonState();

  int getStationId() {
    return this._stationId!;
  }
}

class _ClickButtonState extends State<ClickButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Align(
          alignment: Alignment(widget._x!, widget._y!),
          child: Container(
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: Stations.colors[widget._stationId!],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black12.withOpacity(0.6),
                width: 0.75,
              ),
              boxShadow: <BoxShadow>[
                CustomBoxShadow(
                    color: Colors.black,
                    blurRadius: 0.5,
                    blurStyle: BlurStyle.outer
                ),
              ],
            ),
          ),
        ),
        onTap: () => {
          if (_count == 0) {
            if (_colored) {
              setState(() {
                Stations.resetAll();
                _start = null;
                widget.notifyParent!();
                _colored = false;
              }),
            } else {
              setState(() {
                _count++;
                _start = widget._stationId;
                Stations.changeColor(widget._stationId!);
                _first = Stations.stations[widget._stationId!];
              }),
            },
          } else if (_count == 1) {
            if (_first == Stations.stations[widget._stationId!]) {
              setState(() {
                _first = _defaultStation;
                _count--;
                Stations.resetColor(widget._stationId!);
                _start = null;
              }),
            } else if (_first != _defaultStation) {
              setState(() {
                _count--;
                Stations.changeColor(widget._stationId!);
                _first = _defaultStation;
                _colored = true;
                Dijkstra alg = Dijkstra();
                int a = alg.shortestPathTime(_start!, widget._stationId!);
                print(a);
                _changePathColor(widget, alg);
                widget.notifyParent!();
              }),
            }
          }
        }
    );
  }
}
