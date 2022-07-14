import 'package:mrt_map/model/edge.dart';
import 'package:mrt_map/helper/line.dart';
import 'package:mrt_map/data/stations.dart';

class Graph {
  static Line findCommonLine(List<Line> from, List<Line> to, Line fromLine) {
    if (fromLine != Line.PE) {
      for (int h = 0; h < to.length; h++) {
        if (to[h] == fromLine) {
          return fromLine;
        }
      }
    }
    for (int i = 0; i < from.length; i++) {
      for (int j = 0; j < to.length; j++) {
        if (from[i] == to[j]) {
          return from[i];
        }
      }
    }
    return Line.SW;
  }
  static Edge? getEdge(int fromId, int toId) {
    List<Line>? fromLines = Stations.stations[fromId].lines;
    List<Line>? toLines = Stations.stations[toId].lines;
    Line commonLine = findCommonLine(fromLines!, toLines!, Line.PE);
    List<Edge> edges = getLine(commonLine);
    for (int i = 0; i < edges.length; i++) {
      if ((edges[i].getFirst() == fromId && edges[i].getSecond() == toId) ||
          (edges[i].getFirst() == toId && edges[i].getSecond() == fromId)) {
        return edges[i];
      }
    }
    return null;
  }

  static List<Edge>? getAllEdges(int id) {

    List<Line>? lines = Stations.stations[id].lines;
    List<Edge> edgeList = [];
    for (int i = 0; i < lines!.length; i++) {
      List<Edge> currentLineList = getLine(lines[i]);
      for (int j = 0; j < currentLineList.length; j++) {
        if (currentLineList[j].getFirst() == id || currentLineList[j].getSecond() == id) {
          edgeList.add(currentLineList[j]);
        }
      }
    }
    return edgeList;
  }
  static List<Edge> getLine(Line line) {
    if (line == Line.Blue) {
      return blueLine;
    } else if (line == Line.Brown) {
      return brownLine;
    } else if (line == Line.Red) {
      return redLine;
    } else if (line == Line.Yellow) {
      return yellowLine;
    } else if (line == Line.Green) {
      return greenLine;
    } else if (line == Line.Purple) {
      return purpleLine;
    } else if (line == Line.CE) {
      return ceLine;
    } else {
      return cgLine;
    }
  }
  static List<Edge> blueLine = [
    Edge(86, 87, 2),
    Edge(87, 88, 2),
    Edge(88, 89, 3),
    Edge(89, 90, 2),
    Edge(90, 91, 2),
    Edge(91, 92, 2),
    Edge(92, 70, 2),
    Edge(70, 93, 2),
    Edge(93, 53, 2),
    Edge(53, 94, 3),
    Edge(94, 95, 1),
    Edge(95, 21, 2),
    Edge(21, 82, 2),
    Edge(82, 83, 2),
    Edge(83, 96, 2),
    Edge(96, 97, 1),
    Edge(97, 98, 2),
    Edge(98, 99, 2),
    Edge(99, 100, 2),
    Edge(100, 101, 1),
    Edge(101, 102, 2),
    Edge(102, 103, 2),
    Edge(103, 104, 2),
    Edge(104, 77, 2),
    Edge(77, 105, 2),
    Edge(91, 92, 2),
    Edge(105, 106, 2),
    Edge(106, 107, 2),
    Edge(107, 108, 2),
    Edge(108, 110, 3),
    Edge(110, 31, 2),
    Edge(31, 111, 2),
    Edge(111, 112, 3),
    Edge(112, 33, 2),
  ];

  static List<Edge> purpleLine = [
    Edge(61, 17, 4),
    Edge(17, 98, 1),
    Edge(98, 113, 2),
    Edge(113, 56, 3),
    Edge(56, 94, 1),
    Edge(94, 114, 1),
    Edge(114, 115, 2),
    Edge(115, 116, 3),
    Edge(116, 117, 1),
    Edge(117, 74, 2),
    Edge(74, 118, 3),
    Edge(118, 119, 2),
    Edge(119, 120, 2),
    Edge(120, 121, 2),
    Edge(121, 122, 3),
  ];

  static List<Edge> redLine = [
    Edge(9, 35, 3),
    Edge(35, 36, 2),
    Edge(36, 37, 3),
    Edge(37, 38, 3),
    Edge(38, 39, 4),
    Edge(39, 40, 3),
    Edge(40, 41, 2),
    Edge(41, 42, 3),
    Edge(42, 43, 3),
    Edge(43, 44, 2),
    Edge(44, 45, 2),
    Edge(45, 46, 3),
    Edge(46, 47, 5),
    Edge(47, 48, 2),
    Edge(48, 49, 3),
    Edge(49, 50, 2),
    Edge(50, 51, 2),
    Edge(51, 52, 2),
    Edge(52, 53, 2),
    Edge(53, 54, 2),
    Edge(54, 55, 2),
    Edge(55, 56, 1),
    Edge(56, 20, 2),
    Edge(20, 19, 2),
    Edge(19, 59, 2),
    Edge(59, 60, 2),
  ];

  static List<Edge> greenLine = [
    Edge(32, 31, 3),
    Edge(31, 30, 2),
    Edge(30, 29, 3),
    Edge(29, 28, 3),
    Edge(28, 27, 2),
    Edge(27, 26, 2),
    Edge(26, 25, 2),
    Edge(25, 24, 2),
    Edge(24, 23, 2),
    Edge(23, 22, 2),
    Edge(22, 21, 2),
    Edge(21, 20, 2),
    Edge(20, 19, 2),
    Edge(19, 18, 2),
    Edge(18, 17, 2),
    Edge(17, 16, 2),
    Edge(16, 15, 2),
    Edge(15, 14, 2),
    Edge(14, 13, 2),
    Edge(13, 12, 2),
    Edge(12, 11, 2),
    Edge(11, 10, 2),
    Edge(10, 9, 2),
    Edge(9, 8, 2),
    Edge(8, 7, 4),
    Edge(7, 6, 2),
    Edge(6, 5, 2),
    Edge(5, 4, 4),
    Edge(4, 3, 3),
    Edge(3, 2, 2),
    Edge(2, 1, 2),
    Edge(1, 0, 2),
  ];

  static List<Edge> cgLine = [
    Edge(29, 33, 5),
    Edge(33, 34, 8),
  ];

  static List<Edge> yellowLine = [
    Edge(56, 85, 2),
    Edge(85, 84, 1),
    Edge(84, 82, 3),
    Edge(82, 81, 2),
    Edge(81, 80, 2),
    Edge(80, 79, 2),
    Edge(79, 78, 1),
    Edge(78, 25, 3),
    Edge(25, 77, 1),
    Edge(77, 76, 1),
    Edge(76, 75, 1),
    Edge(75, 74, 3),
    Edge(74, 73, 2),
    Edge(73, 49, 3),
    Edge(49, 72, 2),
    Edge(72, 71, 2),
    Edge(71, 70, 5),
    Edge(70, 69, 2),
    Edge(69, 68, 3),
    Edge(68, 12, 2),
    Edge(12, 67, 2),
    Edge(67, 66, 1),
    Edge(66, 65, 3),
    Edge(65, 64, 2),
    Edge(64, 63, 2),
    Edge(63, 62, 1),
    Edge(62, 61, 2),
  ];

  static List<Edge> ceLine = [
    Edge(82, 83, 2),
    Edge(83, 59, 2),
  ];

  static List<Edge> brownLine = [
    Edge(123, 41, 2),
    Edge(41, 124, 3),
    Edge(124, 125, 5),
    Edge(125, 126, 3),
    Edge(126, 127, 3),
    Edge(127, 128, 2),
    Edge(128, 129, 2),
    Edge(129, 71, 3),
  ];
}



