import 'dart:collection';
import 'package:mrt_map/model/station.dart';

class TreeMapPriorityQueue {


  SplayTreeSet<Station> m_tree =
  SplayTreeSet<Station>(
          (Station a, Station b) => a.priority > b.priority ? 1
          : (a.priority < b.priority ? -1
          : (a.priority == b.priority && a.name == b.name ? 0
          : 1 ))
  );
  HashMap<int,Station> m_map = HashMap<int, Station>();


  TreeMapPriorityQueue(){
    m_tree = SplayTreeSet((Station a, Station b) => a.priority > b.priority ? 1
        : (a.priority < b.priority ? -1
        : (a.priority == b.priority  && a.name == b.name ? 0
        : 1 )));
    m_map = HashMap();
  }

  void add(Station stn){
    m_tree.add(stn);
    m_map[stn.id!] = stn;
  }
  bool contains(int id) {
    return m_map.containsKey(id);
  }
  int length() {
    return m_tree.length;
  }
  bool decreasePriority(int id, int newpriority){
    Station n = m_map[id]!;
    if (newpriority < n.priority) {
      m_tree.remove(n);;
      m_map.remove(n.id);
      n.priority = newpriority;
      m_tree.add(n);
      m_map[n.id!] = n;
      return true;
    }
    return false;
  }

  Station extractMin(){
    Station n = m_tree.first;
    m_tree.remove(n);
    m_map.remove(n.id);
    return n;
  }

  int lookup(int id){
    Station? n = m_map[id];
    if (n != null)
      return n.priority;
    else return -max;
  }

  bool isEmpty(){
    return m_tree.isEmpty;
  }

}


