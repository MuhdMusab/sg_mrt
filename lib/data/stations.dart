import 'package:flutter/material.dart';
import 'package:mrt_map/helper/line.dart';
import 'package:mrt_map/model/station.dart';

class Stations {
  static List<Station> stations = [
    Station(name: "Tuas Link", lines: [Line.Green], id: 0),
    Station(name: "Tuas West Road", lines: [Line.Green], id: 1),
    Station(name: "Tuas Crescent", lines: [Line.Green], id: 2),
    Station(name: "Gul Circle", lines: [Line.Green], id: 3),
    Station(name: "Joo Koon", lines: [Line.Green], id: 4),
    Station(name: "Pioneer", lines: [Line.Green], id: 5),
    Station(name: "Boon Lay", lines: [Line.Green], id: 6),
    Station(name: "Lakeside", lines: [Line.Green], id: 7),
    Station(name: "Chinese Garden", lines: [Line.Green], id: 8),
    Station(name: "Jurong East", lines: [Line.Red, Line.Green], id: 9),
    Station(name: "Clementi", lines: [Line.Green], id: 10),
    Station(name: "Dover", lines: [Line.Green], id: 11),
    Station(name: "Buona Vista", lines: [Line.Yellow, Line.Green], id: 12),
    Station(name: "Commonwealth", lines: [Line.Green], id: 13),
    Station(name: "Queenstown", lines: [Line.Green], id: 14),
    Station(name: "Redhill", lines: [Line.Green], id: 15),
    Station(name: "Tiong Bahru", lines: [Line.Green], id: 16),
    Station(name: "Outram Park", lines: [Line.Green, Line.Purple], id: 17),
    Station(name: "Tanjong Pagar", lines: [Line.Green], id: 18),
    Station(name: "Raffles Place", lines: [Line.Red, Line.Green], id: 19),
    Station(name: "City Hall", lines: [Line.Red, Line.Green], id: 20),
    Station(name: "Bugis", lines: [Line.Green, Line.Blue], id: 21),
    Station(name: "Lavender", lines: [Line.Green], id: 22),
    Station(name: "Kallang", lines: [Line.Green], id: 23),
    Station(name: "Aljunied", lines: [Line.Green], id: 24),
    Station(name: "Paya Lebar", lines: [Line.Green, Line.Yellow], id: 25),
    Station(name: "Eunos", lines: [Line.Green], id: 26),
    Station(name: "Kembangan", lines: [Line.Green], id: 27),
    Station(name: "Bedok", lines: [Line.Green], id: 28),
    Station(name: "Tanah Merah", lines: [Line.Green, Line.CG], id: 29),
    Station(name: "Simei", lines: [Line.Green], id: 30),
    Station(name: "Tampines", lines: [Line.Green, Line.Blue], id: 31),
    Station(name: "Pasir Ris", lines: [Line.Green], id: 32),
    Station(name: "Expo", lines: [Line.CG, Line.Blue], id: 33),
    Station(name: "Changi Airport", lines: [Line.CG], id: 34),
    Station(name: "Bukit Batok", lines: [Line.Red], id: 35),
    Station(name: "Bukit Gombak", lines: [Line.Red], id: 36),
    Station(name: "Choa Chu Kang", lines: [Line.Red, Line.BP], id: 37),
    Station(name: "Yew Tee", lines: [Line.Red], id: 38),
    Station(name: "Kranji", lines: [Line.Red], id: 39),
    Station(name: "Marsiling", lines: [Line.Red], id: 40),
    Station(name: "Woodlands", lines: [Line.Red, Line.Brown], id: 41),
    Station(name: "Admiralty", lines: [Line.Red], id: 42),
    Station(name: "Sembawang", lines: [Line.Red], id: 43),
    Station(name: "Canberra", lines: [Line.Red], id: 44),
    Station(name: "Yishun", lines: [Line.Red], id: 45),
    Station(name: "Khatib", lines: [Line.Red], id: 46),
    Station(name: "Yio Chu Kang", lines: [Line.Red], id: 47),
    Station(name: "Ang Mo Kio", lines: [Line.Red], id: 48),
    Station(name: "Bishan", lines: [Line.Red, Line.Yellow], id: 49),
    Station(name: "Braddell", lines: [Line.Red], id: 50),
    Station(name: "Toa Payoh", lines: [Line.Red], id: 51),
    Station(name: "Novena", lines: [Line.Red], id: 52),
    Station(name: "Newton", lines: [Line.Red, Line.Blue], id: 53),
    Station(name: "Orchard", lines: [Line.Red], id: 54),
    Station(name: "Somerset", lines: [Line.Red], id: 55),
    Station(name: "Dhoby Ghaut",
        lines: [Line.Red, Line.Purple, Line.Yellow],
        id: 56),
    Station(name: "City Hall", lines: [Line.Red, Line.Green], id: 57),
    Station(name: "Raffles Place", lines: [Line.Red, Line.Green], id: 58),
    Station(name: "Marina Bay", lines: [Line.Red, Line.CE], id: 59),
    Station(name: "Marina South Pier", lines: [Line.Red], id: 60),
    Station(name: "HarbourFront", lines: [Line.Yellow, Line.Purple], id: 61),
    Station(name: "Telok Blangah", lines: [Line.Yellow], id: 62),
    Station(name: "Labrador Park", lines: [Line.Yellow], id: 63),
    Station(name: "Pasir Panjang", lines: [Line.Yellow], id: 64),
    Station(name: "Haw Par Villa", lines: [Line.Yellow], id: 65),
    Station(name: "Kent Ridge", lines: [Line.Yellow], id: 66),
    Station(name: "one-north", lines: [Line.Yellow], id: 67),
    Station(name: "Holland Village", lines: [Line.Yellow], id: 68),
    Station(name: "Farrer Road", lines: [Line.Yellow], id: 69),
    Station(name: "Botanic Gardens", lines: [Line.Yellow, Line.Blue], id: 70),
    Station(name: "Caldecott", lines: [Line.Yellow, Line.Brown], id: 71),
    Station(name: "Marymount", lines: [Line.Yellow], id: 72),
    Station(name: "Lorong Chuan", lines: [Line.Yellow], id: 73),
    Station(name: "Serangoon", lines: [Line.Purple, Line.Yellow,], id: 74),
    Station(name: "Bartley", lines: [Line.Yellow], id: 75),
    Station(name: "Tai Seng", lines: [Line.Yellow], id: 76),
    Station(name: "MacPherson", lines: [Line.Blue, Line.Yellow,], id: 77),
    Station(name: "Dakota", lines: [Line.Yellow], id: 78),
    Station(name: "Mountbatten", lines: [Line.Yellow], id: 79),
    Station(name: "Stadium", lines: [Line.Yellow], id: 80),
    Station(name: "Nicoll Highway", lines: [Line.Yellow], id: 81),
    Station(name: "Promenade", lines: [Line.Blue, Line.Yellow], id: 82),
    Station(name: "Bayfront", lines: [Line.Blue, Line.CE], id: 83),
    Station(name: "Esplanade", lines: [Line.Yellow], id: 84),
    Station(name: "Bras Basah", lines: [Line.Yellow], id: 85),
    Station(name: "Bukit Panjang", lines: [Line.Blue, Line.BP], id: 86),
    Station(name: "Cashew", lines: [Line.Blue], id: 87),
    Station(name: "Hillview", lines: [Line.Blue], id: 88),
    Station(name: "Beauty World", lines: [Line.Blue], id: 89),
    Station(name: "King Albert Park", lines: [Line.Blue], id: 90),
    Station(name: "Sixth Avenue", lines: [Line.Blue], id: 91),
    Station(name: "Tan Kah Kee", lines: [Line.Blue], id: 92),
    Station(name: "Stevens", lines: [Line.Blue], id: 93),
    Station(name: "Little India", lines: [Line.Purple, Line.Blue], id: 94),
    Station(name: "Rochor", lines: [Line.Blue], id: 95),
    Station(name: "Downtown", lines: [Line.Blue], id: 96),
    Station(name: "Telok Ayer", lines: [Line.Blue], id: 97),
    Station(name: "Chinatown", lines: [Line.Blue, Line.Purple], id: 98),
    Station(name: "Fort Canning", lines: [Line.Blue], id: 99),
    Station(name: "Bencoolen", lines: [Line.Blue], id: 100),
    Station(name: "Jalan Besar", lines: [Line.Blue], id: 101),
    Station(name: "Bendemeer", lines: [Line.Blue], id: 102),
    Station(name: "Geylang Bahru", lines: [Line.Blue], id: 103),
    Station(name: "Mattar", lines: [Line.Blue], id: 104),
    Station(name: "Ubi", lines: [Line.Blue], id: 105),
    Station(name: "Kaki Bukit", lines: [Line.Blue], id: 106),
    Station(name: "Bedok North", lines: [Line.Blue], id: 107),
    Station(name: "Bedok Reservoir", lines: [Line.Blue], id: 108),
    Station(name: "South View", lines: [Line.BP], id: 109),
    Station(name: "Tampines West", lines: [Line.Blue], id: 110),
    Station(name: "Tampines East", lines: [Line.Blue], id: 111),
    Station(name: "Upper Changi", lines: [Line.Blue], id: 112),
    Station(name: "Clarke Quay", lines: [Line.Purple], id: 113),
    Station(name: "Farrer Park", lines: [Line.Purple], id: 114),
    Station(name: "Boon Keng", lines: [Line.Purple], id: 115),
    Station(name: "Potong Pasir", lines: [Line.Purple], id: 116),
    Station(name: "Woodleigh", lines: [Line.Purple], id: 117),
    Station(name: "Kovan", lines: [Line.Purple], id: 118),
    Station(name: "Hougang", lines: [Line.Purple], id: 119),
    Station(name: "Buangkok", lines: [Line.Purple], id: 120),
    Station(name: "Sengkang", lines: [Line.Purple], id: 121),
    Station(name: "Punggol", lines: [Line.Purple], id: 122),
    Station(name: "Woodlands North", lines: [Line.Brown], id: 123),
    Station(name: "Woodlands South", lines: [Line.Brown], id: 124),
    Station(name: "Springleaf", lines: [Line.Brown], id: 125),
    Station(name: "Lentor", lines: [Line.Brown], id: 126),
    Station(name: "Mayflower", lines: [Line.Brown], id: 127),
    Station(name: "Bright Hill", lines: [Line.Brown], id: 128),
    Station(name: "Upper Thomson", lines: [Line.Brown], id: 129),
    Station(name: "Phoenix", lines: [Line.BP], id: 130),
    Station(name: "Teck Whye", lines: [Line.BP], id: 131),
    Station(name: "Keat Hong", lines: [Line.BP], id: 132),
  ];

  static List<Color> colors = [];

  static void initialiseColors() {
    for (int i = 0; i < 133; i++) {
      colors.add(Colors.grey.withOpacity(0.5));
    }
  }

  static void changeNodeColor(int id) {
    colors[id] = calculateColor(id);
  }

  static void changeOnPathColor(int id, Line line) {
    colors[id] = getColor(line);
  }

  static void resetColor(int id) {
    colors[id] = Colors.grey.withOpacity(0.5);
  }

  static void resetAll() {
    for (int i = 0; i < 133; i++) {
      colors[i] = (Colors.grey.withOpacity(0.5));
    }
  }

  static Color calculateColor(int stationId) {
    Station station = stations[stationId];
    Color color = getColor(station.lines![0]);
    return color;
  }
}