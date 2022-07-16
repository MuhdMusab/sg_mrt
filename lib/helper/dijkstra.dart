import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/treemap_priority_queue.dart';
import 'package:mrt_map/model/station.dart';
import 'package:mrt_map/model/edge.dart';
import 'package:mrt_map/model/graph.dart';
import 'package:mrt_map/helper/line.dart';

class Dijkstra {
  TreeMapPriorityQueue pq = TreeMapPriorityQueue();
  List<int> weights = [];
  List<int> parentTree = [];
  List<bool> visitedTree = [];
  List<Line> lineTree = [];
  int _changeLineTime = 5;
  List<int> routeList = [];
  int numberOfStops = 0;
  List<Line> routeLineTree = [];
  List<bool> lineChangedTree = [];
  List<bool> fullLineChangedTree = [];

  Dijkstra(double transferTime) {
    _changeLineTime = transferTime.round();
  }

  int shortestPathTime(int startId, int endId) {
    pq = TreeMapPriorityQueue();
    Station startStation = Stations.stations[startId];
    startStation.priority = 0;
    if (weights.length < 134) {
      for (int i = 0; i < 133; i++) {
        weights.add(max);
        visitedTree.add(false);
        parentTree.add(max);
        lineTree.add(Line.PE);
        fullLineChangedTree.add(false);
      }
    }
    for (int i = 0; i < 133; i++) {
      weights[i] = max;
      visitedTree[i] = false;
      parentTree[i] = max;
      lineTree[i] = Line.PE;
      fullLineChangedTree[i] = false;
    }
    pq.add(Stations.stations[startId]);
    weights[startId] = 0;
    lineTree[startId] = Stations.stations[startId].lines![0];
    routeList = [];
    routeLineTree = [];
    lineChangedTree = [];
    numberOfStops = 0;
    while (!pq.isEmpty()) {
      Station w = pq.extractMin();
      if (w.id == endId) {
        lineTree[w.id!] = Graph.findCommonLine(Stations.stations[w.id!].lines!,
            Stations.stations[parentTree[w.id!]].lines!, lineTree[w.id!]);
        return weights[endId];
      }
      visitedTree[w.id!] = true;
      if (w.id! != startId) {
        lineTree[w.id!] = Graph.findCommonLine(Stations.stations[w.id!].lines!,
            Stations.stations[parentTree[w.id!]].lines!, lineTree[w.id!]);
      }
      List<Edge> neighbours = Graph.getAllEdges(w.id!)!;
      for (int j = 0; j < neighbours.length; j++) {
        relax(neighbours[j], w.id!);
      }
    }
    return weights[endId];
  }

  void relax(Edge e, int from) {
    int to = e.getFirst() != from
        ? e.getFirst()
        : e.getSecond() != from
        ? e.getSecond()
        : e.getFirst();

    int weight = e.getWeight();
    bool lineChanged = false;
    if (visitedTree[to]) {
      return;
    }
    if (parentTree[from] == max) {
      lineTree[from] = Graph.findCommonLine(Stations.stations[from].lines!,
          Stations.stations[to].lines!, Line.PE);
      lineTree[to] = lineTree[from];
    } else {
        lineTree[to] = Graph.findCommonLine(Stations.stations[from].lines!,
            Stations.stations[to].lines!, lineTree[from]);
        lineChanged = (lineTree[from] != lineTree[to]);
      // if (to == 21 && from == 20 && parentTree[from] == 19) {
      //   lineTree[to] = Line.Green;
      //   lineTree[from] = Line.Green;
      //   lineTree[parentTree[from]] = Line.Green;
      // } else {
      //   lineTree[to] = Graph.findCommonLine(Stations.stations[from].lines!,
      //       Stations.stations[to].lines!, lineTree[from]);
      //   lineChanged = (lineTree[from] != lineTree[to]);
      // }
    }
    if (lineChanged) {
      fullLineChangedTree[to] = true;
      lineChanged = false;
      if (weights[to] > weights[from] + weight + _changeLineTime) {
        weights[to] = weights[from] + weight + _changeLineTime;
        if (pq.contains(to)) {
          pq.decreasePriority(to, weights[to]);
        } else {
          Stations.stations[to].priority = weights[to];
          pq.add(Stations.stations[to]);
        }
        parentTree[to] = from;
      }
    } else {
      if (weights[to] > weights[from] + weight) {
        weights[to] = weights[from] + weight;
        if (pq.contains(to)) {
          pq.decreasePriority(to, weights[to]);
        } else {
          Stations.stations[to].priority = weights[to];
          pq.add(Stations.stations[to]);
        }
        parentTree[to] = from;
      }
    }
  }

  void changeColor(int current) {
    Stations.changeOnPathColor(current, lineTree[current]);
  }

  void changeStartColor(int id) {
    if (parentTree[id] != max && parentTree[parentTree[id]] == max) {
      lineTree[parentTree[id]] = lineTree[id];
    }
  }

  void addToRoute(int current) {
    routeList.add(current);
    routeLineTree.add(lineTree[current]);
    lineChangedTree.add(fullLineChangedTree[current]);
    numberOfStops++;
  }

  List<int> getRouteTree() {
    return routeList;
  }

  int getNumberOfStops() {
    return numberOfStops;
  }

  List<Line> getRouteLineTree() {
    return routeLineTree;
  }

  List<bool> getLineChangedTree() {
    return lineChangedTree;
  }
}