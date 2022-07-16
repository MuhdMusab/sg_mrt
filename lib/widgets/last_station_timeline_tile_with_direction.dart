import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/line.dart';
import 'package:timelines/timelines.dart';

class LastStationTimelineTileWithDirection extends StatefulWidget {
  int? index;
  List<Line>? colorList;
  List<int>? routeTree;

  LastStationTimelineTileWithDirection({
    Key? key,
    this.index,
    this.colorList,
    this.routeTree,
  }) : super(key: key);

  @override
  State<LastStationTimelineTileWithDirection> createState() => _LastStationTimelineTileWithDirectionState();
}

class _LastStationTimelineTileWithDirectionState extends State<LastStationTimelineTileWithDirection> {
  @override
  Widget build(BuildContext context) {
    int _lastIndex = widget.colorList!.length - 1;
    //print(Stations.stations[widget.routeTree![_lastIndex - widget.index!]].toString() + ' ' + Stations.stations[widget.routeTree![_lastIndex - widget.index! - 1]].toString());
    return TimelineTile(
      nodePosition: 0.2,
      contents: Center(
        child: Column(
          children: [
            Text(
              getDirection(widget.routeTree![_lastIndex - widget.index! + 1], widget.routeTree![_lastIndex - widget.index!], widget.colorList![_lastIndex - widget.index!]),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Card(
              child: Container(
                width: 200,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0,),
                  child: Center(
                    child: Text(
                      Stations.stations[widget.routeTree![_lastIndex - widget.index!]].toString(),
                      style: TextStyle(
                        color: getColor2(widget.colorList![_lastIndex -  widget.index!]),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      node: TimelineNode(
        indicator: Stack(
          children: [
            DotIndicator(
              color: Colors.black87,
              size: 20,
            ),
            Positioned(
              left: 2.8,
              bottom: 3,
              child: DotIndicator(
                color: Colors.white,
                size: 14,
              ),
            ),
          ],
        ),
        startConnector: SolidLineConnector(
          color: getColor2(widget.colorList![_lastIndex -  widget.index!]),
          thickness: 8,
        ),
        endConnector: SolidLineConnector(
          color: getColor2(widget.colorList![_lastIndex -  widget.index!]),
          thickness: 8,
        ),
      ),
    );
  }
}

