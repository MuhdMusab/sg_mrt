import 'package:flutter/material.dart';
import 'package:mrt_map/helper/dijkstra.dart';
import 'package:mrt_map/helper/station_stack.dart';
import 'package:mrt_map/helper/time_widget.dart';
import 'package:mrt_map/helper/travel_time_dialog_box.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int time = 0;
  List<int> _routeTree= [];
  bool _isTimeButtonVisible = false;
  double _transferTime = 5;
  int _numberOfStops = 0;
  Dijkstra? _alg;

  _callback(int varTime, bool newVisibility, List<int> routeTree, int numberOfStops, Dijkstra alg) {
    setState(() {
      time = varTime;
      _isTimeButtonVisible = newVisibility;
      _routeTree= routeTree;
      _numberOfStops = numberOfStops;
      _alg = alg;
    });
  }

  _setTransferTime(double newTime) {
    _transferTime = newTime;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: InteractiveViewer(
                  minScale: 1,
                  maxScale: 8,
                  clipBehavior: Clip.none,
                  child: Container(
                    width: 8464/13,
                    height: 4761/13,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/mrt_map.jpg"
                            )
                        )
                    ),
                    child: StationStack(callbackFunction: _callback, transferTime: _transferTime),
                  ),
                ),
              ),
            ),
            _isTimeButtonVisible
                ? Align(
                    alignment: Alignment(0.8, -0.8),
                    child: TimeWidget(time: time, routeTree: _routeTree, numberOfStops: _numberOfStops, alg: _alg,),
                    )
                : Container(),
            GestureDetector(
              onTap: () {
                showDialog(context: context, builder: (builder) {
                  return TravelTimeDialogBox(transferFunction: _setTransferTime, transferTime: _transferTime);
                });
              },
              child: Align(
                alignment: Alignment(0.95, -0.8),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
