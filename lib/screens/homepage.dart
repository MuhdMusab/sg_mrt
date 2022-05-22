import 'package:flutter/material.dart';
import 'package:mrt_map/helper/station_stack.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            InteractiveViewer(
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
                child: StationStack(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
