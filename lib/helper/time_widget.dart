import 'package:flutter/material.dart';
import 'package:mrt_map/helper/dijkstra.dart';
import 'package:mrt_map/helper/route_dialog_box.dart';

class TimeWidget extends StatefulWidget {
  int? time;
  List<int>? routeTree;
  int? numberOfStops;
  Dijkstra? alg;

  TimeWidget({
    Key? key,
    this.time,
    this.routeTree,
    this.numberOfStops,
    this.alg,
  }) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(context: context, builder: (builder) {
          return RouteDialogBox(
            routeTree: widget.routeTree,
            timeTaken: widget.time!,
            numberOfStops: widget.numberOfStops,
            alg: widget.alg,
          );
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 90,
        height: 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.time! > 1 ? widget.time.toString() + " mins" : widget.time.toString() + " min",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
