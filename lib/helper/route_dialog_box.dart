import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/dijkstra.dart';
import 'package:mrt_map/helper/line.dart';
import 'package:mrt_map/widgets/station_timeline_tile.dart';

class RouteDialogBox extends StatefulWidget {
  List<int>? routeTree;
  int? timeTaken;
  int? numberOfStops;
  Dijkstra? alg;

  RouteDialogBox({Key? key,
    this.routeTree,
    this.timeTaken,
    this.numberOfStops,
    this.alg,
  }) : super(key: key);

  @override
  State<RouteDialogBox> createState() => _RouteDialogBoxState();
}

class _RouteDialogBoxState extends State<RouteDialogBox> {
  void initState() {
    super.initState();
  }
  List<Line> colorList = [];
  List<bool> lineChangedList = [];

  @override
  Widget build(BuildContext context) {
    int _lastIndex = widget.routeTree!.length - 1;
    colorList = widget.alg!.getRouteLineTree();
    lineChangedList = widget.alg!.getLineChangedTree();
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 20),
              ]),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Stations.stations[widget.routeTree![_lastIndex]].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      ' to ',
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      Stations.stations[widget.routeTree![0]].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Time Required',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                          widget.timeTaken! == 1
                              ? widget.timeTaken!.toString() + ' min'
                              : widget.timeTaken!.toString() + ' mins',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Stations',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        widget.numberOfStops! - 1 == 1
                            ? (widget.numberOfStops! - 1).toString() + ' station'
                            : (widget.numberOfStops! - 1).toString() + ' stations',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ListView.builder(
                      itemCount: widget.routeTree!.length,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Card(
                                child: Container(
                                  width: 320,
                                  height: 50,
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      Icon(Icons.circle,
                                        color: Color(0xFF154c79),
                                        size: 8,
                                      ),
                                      Icon(CupertinoIcons.arrow_right,
                                        color: Color(0xFF154c79),
                                        size: 20,
                                      ),
                                      SizedBox(width: 10,),
                                      Text(
                                        'Start',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                    ],),
                                ),
                              ),
                              StationTimelineTile(index: index, colorList: colorList, routeTree: widget.routeTree,),
                            ],
                          );
                        } else if (index == _lastIndex) {
                          return Column(
                            children: [
                              StationTimelineTile(index: index, colorList: colorList, routeTree: widget.routeTree,),
                              Card(
                                child: Container(
                                  width: 320,
                                  height: 50,
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 40,),
                                      Icon(Icons.arrow_forward_rounded,
                                        color: Color(0xFF154c79),
                                        size: 20,
                                      ),
                                      Icon(Icons.circle,
                                        color: Color(0xFF154c79),
                                        size: 8,
                                      ),
                                      SizedBox(width: 10,),
                                      Text('Arrive in ',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                      Text(
                                        widget.timeTaken! == 1
                                            ? widget.timeTaken!.toString() + ' min'
                                            : widget.timeTaken!.toString() + ' mins',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],),
                                ),
                              ),
                            ],
                          );
                        } else if (lineChangedList[_lastIndex - (index + 1)]) {
                          return Column(
                            children: [
                              StationTimelineTile(index: index, colorList: colorList, routeTree: widget.routeTree,),
                              Card(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 320,
                                      height: 50,
                                      padding: EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 30,),
                                          Icon(Icons.arrow_forward_rounded,
                                            color: Color(0xFF154c79),
                                            size: 18,
                                          ),
                                          Icon(Icons.circle,
                                            color: Color(0xFF154c79),
                                            size: 8,
                                          ),
                                          Icon(Icons.arrow_forward_rounded,
                                            color: Color(0xFF154c79),
                                            size: 18,
                                          ),
                                          SizedBox(width: 10,),
                                          Text('Change at ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey.shade500,
                                            ),
                                          ),
                                          Text(
                                            Stations.stations[widget.routeTree![_lastIndex - (index)]].toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        } else {
                          return StationTimelineTile(index: index,
                            colorList: colorList,
                            routeTree: widget.routeTree,);
                        }
                        // return ListTile(
                        //   leading: Text(Stations.stations[widget.routeTree![index]].toString()),
                        // );
                      }
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
