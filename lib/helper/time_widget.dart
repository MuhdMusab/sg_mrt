import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  int? time;
  double? visibility;
  TimeWidget({
    Key? key,
    this.time,
    this.visibility,
  }) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      height: 40,
      child: Text(
        widget.time! > 1 ? widget.time.toString() + " mins" : widget.time.toString() + " min",
        style: TextStyle(
          color: Colors.white.withOpacity(widget.visibility == 0.0 ? 0.0 : 1.0),
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(widget.visibility!),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
