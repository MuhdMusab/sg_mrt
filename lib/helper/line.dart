import 'package:flutter/material.dart';
import 'package:mrt_map/model/edge.dart';
import 'package:mrt_map/model/graph.dart';

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
    case Line.Yellow : return Color(0xFFf8d958).withOpacity(0.9);
    case Line.CE : return Color(0xFFf8d958).withOpacity(0.9);
    case Line.Red : return Colors.red.withOpacity(0.9);
    case Line.Purple: return Colors.purple.withOpacity(0.9);
    case Line.Brown: return Color(0xFFB37A4C).withOpacity(0.9);
    default : return Colors.grey.withOpacity(0.5);
  }
}

Color getColor2(Line line) {
  switch (line) {
    case Line.Blue : return Color(0xFF1B3997).withOpacity(0.9);
    case Line.Green : return Colors.green.withOpacity(0.9);
    case Line.CG: return Colors.green.withOpacity(0.9);
    case Line.Yellow : return Color(0xFFf29619).withOpacity(0.9);
    case Line.CE : return Color(0xFFf29619).withOpacity(0.9);
    case Line.Red : return Colors.red.withOpacity(0.9);
    case Line.Purple: return Colors.purple.withOpacity(0.9);
    case Line.Brown: return Color(0xFFB37A4C).withOpacity(0.9);
    default : return Colors.grey.withOpacity(0.5);
  }
}

String getDirection(int from, int to, Line line) {
  if (line == Line.Green) {
    List<Edge> direction = Graph.greenLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Tuas Link Station';
      }
    }
    return 'Towards Pasir Ris Station';
  } else if (line == Line.Red) {
    List<Edge> direction = Graph.redLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Marina South Pier Station';
      }
    }
    return 'Towards Jurong East Station';
  } else if (line == Line.Blue) {
    List<Edge> direction = Graph.blueLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Expo Station';
      }
    }
    return 'Towards Bukit Panjang Station';
  } else if (line == Line.Brown) {
    List<Edge> direction = Graph.brownLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Caldecott Station';
      }
    }
    return 'Towards Woodlands North Station';
  } else if (line == Line.Yellow) {
    List<Edge> direction = Graph.yellowLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards HarbourFront Station';
      }
    }
    return 'Towards Dhoby Ghaut Station';
  } else if (line == Line.Brown) {
    List<Edge> direction = Graph.brownLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Caldecott Station';
      }
    }
    return 'Towards Woodlands North Station';
  } else if (line == Line.Purple) {
    List<Edge> direction = Graph.purpleLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Punggol Station';
      }
    }
    return 'Towards HarbourFront Station';
  } else if (line == Line.CE) {
    List<Edge> direction = Graph.ceLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Marina Bay Station';
      }
    }
    return 'Towards Promenade Station';
  } else {
    List<Edge> direction = Graph.cgLine;
    for (int i = 0; i < direction.length; i++) {
      if (from == direction[i].getFirst() && to == direction[i].getSecond()) {
        return 'Towards Changi Airport Station';
      }
    }
    return 'Towards Tanah Merah Station';
  }
}
