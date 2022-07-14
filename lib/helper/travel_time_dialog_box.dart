import 'package:flutter/material.dart';

class TravelTimeDialogBox extends StatefulWidget {
  Function? transferFunction;
  double? transferTime;

  TravelTimeDialogBox({Key? key,
    this.transferFunction,
    this.transferTime,
  }) : super(key: key);

  @override
  State<TravelTimeDialogBox> createState() => _TravelTimeDialogBoxState();
}

class _TravelTimeDialogBoxState extends State<TravelTimeDialogBox> {

  double? _currentSliderValue;

  void initState() {
    super.initState();
    _currentSliderValue = widget.transferTime;
  }
  @override
  Widget build(BuildContext context) {

    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          height: 100,
          width: 500,
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
                padding: EdgeInsets.only(left: 10, top: 10,),
                child: Align(
                  child: Text('Transfer time: '
                      + (widget.transferTime!.round() == 1 ? widget.transferTime!.round().toString() + ' minute'
                      : widget.transferTime!.round().toString() + ' minutes'),
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
              Slider(
                activeColor: Color(0xFF1B3997),
                inactiveColor: Colors.grey,
                value: _currentSliderValue!,
                label: _currentSliderValue!.round().toString(),
                onChanged: (double newvalue) {
                  setState(() {
                    _currentSliderValue = newvalue;
                    widget.transferFunction!(newvalue);
                    widget.transferTime = newvalue;
                  });
                },
                min: 0,
                max: 10,
                divisions: 10,
              ),
            ],
          ),
        )
    );
  }
}
