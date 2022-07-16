import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/custom_box_shadow.dart';
import 'package:mrt_map/helper/line.dart';
import 'package:mrt_map/model/station.dart';
import 'package:mrt_map/helper/dijkstra.dart';

final Station _defaultStation = Station();
Station _first = _defaultStation;
int _count = 0;
bool _colored = false;
int? _start;

bool _changePathColor(ClickButton widget, Dijkstra alg) {
  int current = widget.getStationId();
  bool shouldChange = false;
  while (current != max) {
    if (current == 21 && alg.parentTree[current] == 20 && alg.parentTree[alg.parentTree[current]] == 19 && alg.parentTree[alg.parentTree[alg.parentTree[current]]] == max) {
      shouldChange = true;
      alg.changeColor(current);
      alg.addToRoute(current);
      alg.changeStartColor(current);
      current = alg.parentTree[current];
      alg.lineTree[21] = Line.Green;
      alg.lineTree[20] = Line.Green;
      alg.lineTree[19] = Line.Green;
    } else {
      alg.changeColor(current);
      alg.addToRoute(current);
      alg.changeStartColor(current);
      current = alg.parentTree[current];
    }
  }
  if (shouldChange) {
    int routeLength = alg.routeList.length;
    for (int i = 0; i < routeLength; i++) {
      if (alg.routeList[i] == 21) {
        alg.lineChangedTree[i] = false;
      }
    }
  }
  return shouldChange;
}

class ClickButton extends StatefulWidget {
  int? _stationId;
  double? _x;
  double? _y;
  Function? notifyParent;
  Function? callbackFunction;
  double? transferTime;

  ClickButton(double x, double y, int stationId, Function? notifyParent, Function? callbackFunction, double? transferTime) {
    this._stationId = stationId;
    this._x = x;
    this._y = y;
    this.notifyParent = notifyParent;
    this.callbackFunction = callbackFunction;
    this.transferTime = transferTime;

  }

  @override
  State<ClickButton> createState() => _ClickButtonState();

  int getStationId() {
    return this._stationId!;
  }
}

class _ClickButtonState extends State<ClickButton> {
  List<int> emptyList = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Align(
          alignment: Alignment(widget._x!, widget._y!),
          child: Container(
            width: 11,
            height: 11,
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
                widget.callbackFunction!(0, false, emptyList, 0, Dijkstra(0));
              }),
            } else {
              setState(() {
                _count++;
                _start = widget._stationId;
                Stations.changeNodeColor(widget._stationId!);
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
                widget.callbackFunction!(0, false, emptyList, 0, Dijkstra(0));
              }),
            } else if (_first != _defaultStation) {
              setState(() {
                _count--;
                _first = _defaultStation;
                _colored = true;
                Dijkstra alg = Dijkstra(widget.transferTime!);
                int a = alg.shortestPathTime(_start!, widget._stationId!);
                bool shouldChange = _changePathColor(widget, alg);
                if (shouldChange) {
                  a -= widget.transferTime!.round();
                }
                List<int> routeTree = alg.getRouteTree();
                int numberOfStops = alg.getNumberOfStops();
                widget.callbackFunction!(a, true, routeTree, numberOfStops, alg);
                widget.notifyParent!();
              }),
            }
          }
        }
    );
  }
}
