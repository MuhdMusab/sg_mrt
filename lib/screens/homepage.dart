import 'package:flutter/material.dart';
import 'package:mrt_map/helper/station_stack.dart';
import 'package:mrt_map/helper/time_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int time = 0;
  double visibility = 0;
  callback(varTime, varVisibility) {
    setState(() {
      time = varTime;
      visibility = varVisibility;
    });
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
                    child: StationStack(callbackFunction: callback),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.8, -0.8),
              child: TimeWidget(time: time, visibility: visibility,),
            ),
          ],
        ),
      ),
    );
  }
}
