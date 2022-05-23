import 'package:flutter/material.dart';

enum Line {
  Blue,
  Brown,
  Green,
  Purple,
  BP,
  SW,
  PW,
  STC,
  PTC,
  PE,
  CG,
  Red,
  Yellow,
  CE,
}

Color getColor(Line line) {
  switch (line) {
    case Line.Blue : return Colors.blue.withOpacity(0.9);
    case Line.Green : return Colors.green.withOpacity(0.9);
    case Line.CG: return Colors.green.withOpacity(0.9);
    case Line.Yellow : return Colors.yellow.withOpacity(0.9);
    case Line.CE : return Colors.yellow.withOpacity(0.9);
    case Line.Red : return Colors.red.withOpacity(0.9);
    case Line.Purple: return Colors.purple.withOpacity(0.9);
    case Line.Brown: return Color(0xFFB37A4C).withOpacity(0.9);
    default : return Colors.grey.withOpacity(0.5);
  }
}