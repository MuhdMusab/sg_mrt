import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:mrt_map/helper/line.dart';

int max = 0x7fffffff;

class Station extends LinkedListEntry<Station> implements Comparable<Station>{
  final String? name;
  final List<Line>? lines;
  final int? id;
  int priority = max;
  Station({
    this.name,
    this.lines,
    this.id,
  });

  @override
  int compareTo(Station other) {
   if (this.priority > other.priority) {
     return 1;
   } else if (this.priority < other.priority) {
     return -1;
   } else if (this.name == other.name) {
     return 0;
   } else {
     return 1;
   }
  }

  @override
  String toString() {
    return this.name!;
  }

  @override
  bool equals(Object other) {
    if (other is Station) {
      Station stn = other as Station;
      if (this.name == stn.name && this.priority == stn.priority) {
        return true;
      }
    }
    return false;
  }
}