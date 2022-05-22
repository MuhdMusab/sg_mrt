import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/treemap_priority_queue.dart';
import 'package:mrt_map/model/station.dart';
import 'package:mrt_map/model/edge.dart';
import 'package:mrt_map/model/graph.dart';
class Dijkstra {
  TreeMapPriorityQueue pq = TreeMapPriorityQueue();
  List<int> weights = [];
  List<int> parentTree = [];
  List<bool> visitedTree = [];

  void resetWeights() {
    for (int i = 0; i < 133; i++) {
      weights[i] = max;
      visitedTree[i] = false;
    }
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
      }
    }
    for (int i = 0; i < 133; i++) {
      weights[i] = max;
      visitedTree[i] = false;
      parentTree[i] = max;
    }
    pq.add(Stations.stations[startId]);
    weights[startId] = 0;
    while (!pq.isEmpty()) {
      Station w = pq.extractMin();
      visitedTree[w.id!] = true;
      if (w.id == endId) {
        return weights[endId];
      }
      List<Edge> neighbours = Graph.getAllEdges(w.id!)!;
      for (int j = 0; j < neighbours.length; j++) {
        relax(neighbours[j], w.id!);
      }
    }
    return weights[endId];
  }

  int? relax(Edge e, int from) {
    int to = e.getFirst() != from ? e.getFirst() : e.getSecond();
    int weight = e.getWeight();
    if (weights[to] > weights[from] + weight) {
      if (visitedTree[to]) {
        return 0;
      }
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