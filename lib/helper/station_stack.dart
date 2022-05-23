import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/click_button.dart';

class StationStack extends StatefulWidget {
  Function? callbackFunction;
  StationStack({
    this.callbackFunction,
  });

  @override
  State<StationStack> createState() => _StationStackState();
}

class _StationStackState extends State<StationStack> {
  void refresh() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    Stations.initialiseColors();
    return Stack(
      children: [
        ClickButton(-0.4105, -0.7988, 123, refresh, widget.callbackFunction),
        ClickButton(-0.364, -0.7099, 41, refresh, widget.callbackFunction), //Wdlds
        ClickButton(-0.2925, -0.7099, 42, refresh, widget.callbackFunction), //Admiralty
        ClickButton(-0.2264, -0.7099, 43, refresh, widget.callbackFunction), //Sembawang
        ClickButton(-0.1602, -0.7099, 44, refresh, widget.callbackFunction), //Canberra
        ClickButton(-0.4771, -0.6739, 40, refresh, widget.callbackFunction), //Marsiling
        ClickButton(-0.521, -0.503, 39, refresh, widget.callbackFunction), //Kranji
        ClickButton(-0.521, -0.355, 38, refresh, widget.callbackFunction), //Yew Tee
        ClickButton(-0.5135, -0.197, 37, refresh, widget.callbackFunction), //Choa Chu Kang
        ClickButton(-0.523, -0.0461, 36, refresh, widget.callbackFunction), //Bukit Gombak
        ClickButton(-0.523, 0.086, 35, refresh, widget.callbackFunction), //Bukit Batok
        ClickButton(-0.523, 0.2615, 9, refresh, widget.callbackFunction), //Jurong East
        ClickButton(-0.0919, -0.671, 45, refresh, widget.callbackFunction), //Yishun
        ClickButton(-0.0568, -0.594, 46, refresh, widget.callbackFunction), //Khatib
        ClickButton(-0.0478, -0.5035, 47, refresh, widget.callbackFunction), //YCK
        ClickButton(-0.0471, -0.413, 48, refresh, widget.callbackFunction), //AMK
        ClickButton(-0.0475, -0.309, 49, refresh, widget.callbackFunction), //Bishan
        ClickButton(-0.0478, -0.2478, 50, refresh, widget.callbackFunction), //Braddell
        ClickButton(-0.0478, -0.1605, 51, refresh, widget.callbackFunction), //TPY
        ClickButton(-0.1, 0.015, 53, refresh, widget.callbackFunction), //Newton
        ClickButton(-0.173, 0.1412, 54, refresh, widget.callbackFunction), //Orchard
        ClickButton(-0.1223, 0.2405, 55, refresh, widget.callbackFunction), //Somerset
        ClickButton(-0.04, 0.3891, 56, refresh, widget.callbackFunction), //Dhoby Ghaut
        ClickButton(-0.0642, 0.4334, 113, refresh, widget.callbackFunction), //Clarke Quay
        ClickButton(0.056, 0.5585, 20, refresh, widget.callbackFunction), //City Hall
        ClickButton(0.056, 0.644, 19, refresh, widget.callbackFunction), //Raffles Place
        ClickButton(0.056, 0.7758, 59, refresh, widget.callbackFunction), //Marina Bay
        ClickButton(0.112, 0.853, 60, refresh, widget.callbackFunction), //Marina South Pier
        ClickButton(0.00375, 0.003, 115, refresh, widget.callbackFunction), //Boon Keng
        ClickButton(0.00375, 0.085, 114, refresh, widget.callbackFunction), //Farrer Park
        ClickButton(-0.0765, -0.059, 52, refresh, widget.callbackFunction), //Novena
        ClickButton(-0.3338, -0.6523, 124, refresh, widget.callbackFunction), //Wdlds Sth
        ClickButton(-0.3033, -0.5956, 125, refresh, widget.callbackFunction), //Springleaf
        ClickButton(-0.2736, -0.539, 126, refresh, widget.callbackFunction), //Lentor
        ClickButton(-0.2432, -0.482, 127, refresh, widget.callbackFunction), //Mayflower
        ClickButton(-0.2128, -0.425, 128, refresh, widget.callbackFunction), //Bright Hill
        ClickButton(-0.1848, -0.3228, 129, refresh, widget.callbackFunction), //Upper Thomson
        ClickButton(-0.1848, -0.2291, 71, refresh, widget.callbackFunction), //Caldecott
        ClickButton(-0.1285, -0.2803, 72, refresh, widget.callbackFunction), //Marymount
        ClickButton(-0.1848, -0.0735, 93, refresh, widget.callbackFunction), //Stevens
        ClickButton(-0.284, -0.0733, 70, refresh, widget.callbackFunction), //Botanic Gardens
        ClickButton(-0.361, -0.0721, 92, refresh, widget.callbackFunction), //Tan Kah Kee
        ClickButton(-0.4115, -0.1395, 91, refresh, widget.callbackFunction), //Sixth Avenue
        ClickButton(-0.411, -0.1936, 90, refresh, widget.callbackFunction), //King Albert Park
        ClickButton(-0.4114, -0.248, 89, refresh, widget.callbackFunction), //Beauty World
        ClickButton(-0.4112, -0.3015, 88, refresh, widget.callbackFunction), //Hillview
        ClickButton(-0.4112, -0.355, 87, refresh, widget.callbackFunction), //Cashew
        ClickButton(-0.4112, -0.43, 86, refresh, widget.callbackFunction), //Bukit Panjang
        //ClickButton(-0.4612, -0.4532, 41, refresh, widget.callbackFunction), //Phoenix
        //ClickButton(-0.4984, -0.386), //Teck Whye
        //ClickButton(-0.4984, -0.3245), //Keat Hong
        //ClickButton(-0.4984, -0.2601), //South View
        ClickButton(-0.689, -0.306, 0, refresh, widget.callbackFunction), //Tuas Link
        ClickButton(-0.6892, -0.2285, 1, refresh, widget.callbackFunction), //Tuas West Road
        ClickButton(-0.6892, -0.1495, 2, refresh, widget.callbackFunction), //Tuas Crescent
        ClickButton(-0.689, -0.071, 3, refresh, widget.callbackFunction), //Gul Circle
        ClickButton(-0.689, 0.007, 4, refresh, widget.callbackFunction), //Joo Koon
        ClickButton(-0.689, 0.0855, 5, refresh, widget.callbackFunction), //Pioneer
        ClickButton(-0.689, 0.164, 6, refresh, widget.callbackFunction), //Boon Lay
        ClickButton(-0.6377, 0.2612, 7, refresh, widget.callbackFunction), //Lakeside
        ClickButton(-0.5826, 0.2612, 8, refresh, widget.callbackFunction), //Chinese Garden
        ClickButton(-0.4487, 0.2612, 10, refresh, widget.callbackFunction), //Clementi
        ClickButton(-0.3985, 0.2612, 11, refresh, widget.callbackFunction), //Dover
        ClickButton(-0.3435, 0.2597, 12, refresh, widget.callbackFunction), //Buona Vista
        ClickButton(-0.2972, 0.318, 13, refresh, widget.callbackFunction), //Commonwealth
        ClickButton(-0.2677, 0.369, 14, refresh, widget.callbackFunction), //Queenstown
        ClickButton(-0.2308, 0.431, 15, refresh, widget.callbackFunction), //Redhill
        ClickButton(-0.1963, 0.494, 16, refresh, widget.callbackFunction), //Tiong Bahru
        ClickButton(-0.1463, 0.58, 17, refresh, widget.callbackFunction), //Outram Park
        ClickButton(-0.0858, 0.6845, 18, refresh, widget.callbackFunction), //Tanjong Pagar
        ClickButton(-0.162, 0.7888, 61, refresh, widget.callbackFunction), //HarbourFront
        ClickButton(-0.2205, 0.715, 62, refresh, widget.callbackFunction), //Telok Blangah
        ClickButton(-0.2605, 0.6501, 63, refresh, widget.callbackFunction), //Labrador Park
        ClickButton(-0.292, 0.58, 64, refresh, widget.callbackFunction), //Pasir Panjang
        ClickButton(-0.314, 0.5089, 65, refresh, widget.callbackFunction), //Haw Par Villa
        ClickButton(-0.3299, 0.4289, 66, refresh, widget.callbackFunction), //Kent Ridge
        ClickButton(-0.3408, 0.341, 67, refresh, widget.callbackFunction), //one-north
        ClickButton(-0.3363, 0.1364, 68, refresh, widget.callbackFunction), //Holland Village
        ClickButton(-0.3175, 0.041, 69, refresh, widget.callbackFunction), //Farrer Road
        ClickButton(0.047, -0.2975, 73, refresh, widget.callbackFunction), //Lorong Chuan
        ClickButton(0.1233, -0.2468, 74, refresh, widget.callbackFunction), //Serangoon
        ClickButton(0.1883, -0.1655, 75, refresh, widget.callbackFunction), //Bartley
        ClickButton(0.2316, -0.086, 76, refresh, widget.callbackFunction), //Tai Seng
        ClickButton(0.265, 0.0135, 77, refresh, widget.callbackFunction), //MacPherson
        ClickButton(0.2888, 0.142, 25, refresh, widget.callbackFunction), //Paya Lebar
        ClickButton(0.2958, 0.249, 78, refresh, widget.callbackFunction), //Dakota
        ClickButton(0.293, 0.3365, 79, refresh, widget.callbackFunction), //Mountbatten
        ClickButton(0.282, 0.4273, 80, refresh, widget.callbackFunction), //Stadium
        ClickButton(0.2642, 0.5115, 81, refresh, widget.callbackFunction), //Nicoll Highway
        ClickButton(0.2253, 0.6028, 82, refresh, widget.callbackFunction), //Promenade
        ClickButton(0.16, 0.7127, 83, refresh, widget.callbackFunction), //Bayfront
        ClickButton(0.1329, 0.5578, 84, refresh, widget.callbackFunction), //Esplanade
        ClickButton(0.0638, 0.431, 85, refresh, widget.callbackFunction), //Bras Basah
        ClickButton(0.006, 0.171, 94, refresh, widget.callbackFunction), //Little India
        ClickButton(0.0505, 0.253, 95, refresh, widget.callbackFunction), //Rochor
        ClickButton(0.0771, 0.3615, 100, refresh, widget.callbackFunction), //Bencoolen
        ClickButton(-0.0915, 0.3882, 99, refresh, widget.callbackFunction), //Fort Canning
        ClickButton(-0.0881, 0.485, 98, refresh, widget.callbackFunction), //Chinatown
        ClickButton(0.0096, 0.646, 97, refresh, widget.callbackFunction), //Telok Ayer
        ClickButton(0.1006, 0.741, 96, refresh, widget.callbackFunction), //Downtown
        ClickButton(0.138, 0.411, 21, refresh, widget.callbackFunction), //Bugis
        ClickButton(0.1146, 0.2921, 101, refresh, widget.callbackFunction), //Jalan Besar
        ClickButton(0.1649, 0.203, 102, refresh, widget.callbackFunction), //Bendemeer
        ClickButton(0.1971, 0.14, 103, refresh, widget.callbackFunction), //Geylang Bahru
        ClickButton(0.2325, 0.077, 104, refresh, widget.callbackFunction), //Mattar
        ClickButton(0.3062, -0.0548, 105, refresh, widget.callbackFunction), //Ubi
        ClickButton(0.3438, -0.124, 106, refresh, widget.callbackFunction), //Kaki Bukit
        ClickButton(0.3803, -0.1857, 107, refresh, widget.callbackFunction), //Bedok North
        ClickButton(0.444, -0.2079, 108, refresh, widget.callbackFunction), //Bedok Reservoir
        ClickButton(0.5078, -0.2079, 110, refresh, widget.callbackFunction), //Tampines West
        ClickButton(0.564, -0.2079, 31, refresh, widget.callbackFunction), //Tampines
        ClickButton(0.564, -0.3115, 32, refresh, widget.callbackFunction), //Pasir Ris
        ClickButton(0.564, -0.154, 30, refresh, widget.callbackFunction), //Simei
        ClickButton(0.559, -0.1025, 29, refresh, widget.callbackFunction), //Tanah Merah
        ClickButton(0.457, -0.1025, 28, refresh, widget.callbackFunction), //Bedok
        ClickButton(0.3815,-0.03, 27, refresh, widget.callbackFunction), //Kembangan
        ClickButton(0.3358, 0.052, 26, refresh, widget.callbackFunction), //Eunos
        ClickButton(0.2442, 0.2175, 24, refresh, widget.callbackFunction), //Aljunied
        ClickButton(0.2115, 0.277, 23, refresh, widget.callbackFunction), //Kallang
        ClickButton(0.1766, 0.3405, 22, refresh, widget.callbackFunction), //Lavender
        ClickButton(0.6354, -0.0037, 33, refresh, widget.callbackFunction), //Expo
        ClickButton(0.6354, -0.093, 112, refresh, widget.callbackFunction), //Upper Changi
        ClickButton(0.6354, -0.1535, 111, refresh, widget.callbackFunction), //Tampines East
        ClickButton(0.6913, -0.0035, 34, refresh, widget.callbackFunction), //Changi Airport
        ClickButton(0.0317, -0.082, 116, refresh, widget.callbackFunction), //Potong Pasir
        ClickButton(0.0745, -0.163, 117, refresh, widget.callbackFunction), //Woodleigh
        ClickButton(0.1605, -0.314, 118, refresh, widget.callbackFunction), //Kovan
        ClickButton(0.1932, -0.3725, 119, refresh, widget.callbackFunction), //Hougang
        ClickButton(0.2244, -0.4301, 120, refresh, widget.callbackFunction), //Buangkok
        ClickButton(0.2578, -0.4873, 121, refresh, widget.callbackFunction), //Sengkang
        ClickButton(0.327, -0.619, 122, refresh, widget.callbackFunction), //Punggol
      ],
    );
  }
}