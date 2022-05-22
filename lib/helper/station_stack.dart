import 'package:flutter/material.dart';
import 'package:mrt_map/data/stations.dart';
import 'package:mrt_map/helper/click_button.dart';

class StationStack extends StatefulWidget {
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
        ClickButton(-0.4105, -0.7988, 123, refresh,),
        ClickButton(-0.364, -0.7099, 41, refresh,), //Wdlds
        ClickButton(-0.2925, -0.7099, 42, refresh,), //Admiralty
        ClickButton(-0.2264, -0.7099, 43, refresh,), //Sembawang
        ClickButton(-0.1602, -0.7099, 44, refresh,), //Canberra
        ClickButton(-0.4771, -0.6739, 40, refresh,), //Marsiling
        ClickButton(-0.521, -0.503, 39, refresh,), //Kranji
        ClickButton(-0.521, -0.355, 38, refresh,), //Yew Tee
        ClickButton(-0.5135, -0.197, 37, refresh,), //Choa Chu Kang
        ClickButton(-0.523, -0.0461, 36, refresh,), //Bukit Gombak
        ClickButton(-0.523, 0.086, 35, refresh,), //Bukit Batok
        ClickButton(-0.523, 0.2615, 9, refresh,), //Jurong East
        ClickButton(-0.0919, -0.671, 45, refresh,), //Yishun
        ClickButton(-0.0568, -0.594, 46, refresh,), //Khatib
        ClickButton(-0.0478, -0.5035, 47, refresh,), //YCK
        ClickButton(-0.0471, -0.413, 48, refresh,), //AMK
        ClickButton(-0.0475, -0.309, 49, refresh,), //Bishan
        ClickButton(-0.0478, -0.2478, 50, refresh,), //Braddell
        ClickButton(-0.0478, -0.1605, 51, refresh,), //TPY
        ClickButton(-0.1, 0.015, 53, refresh,), //Newton
        ClickButton(-0.173, 0.1412, 54, refresh,), //Orchard
        ClickButton(-0.1223, 0.2405, 55, refresh,), //Somerset
        ClickButton(-0.04, 0.3891, 56, refresh,), //Dhoby Ghaut
        ClickButton(-0.0642, 0.4334, 113, refresh,), //Clarke Quay
        ClickButton(0.056, 0.5585, 20, refresh,), //City Hall
        ClickButton(0.056, 0.644, 19, refresh,), //Raffles Place
        ClickButton(0.056, 0.7758, 59, refresh,), //Marina Bay
        ClickButton(0.112, 0.853, 60, refresh,), //Marina South Pier
        ClickButton(0.00375, 0.003, 115, refresh,), //Boon Keng
        ClickButton(0.00375, 0.085, 114, refresh,), //Farrer Park
        ClickButton(-0.0765, -0.059, 52, refresh,), //Novena
        ClickButton(-0.3338, -0.6523, 124, refresh,), //Wdlds Sth
        ClickButton(-0.3033, -0.5956, 125, refresh,), //Springleaf
        ClickButton(-0.2736, -0.539, 126, refresh,), //Lentor
        ClickButton(-0.2432, -0.482, 127, refresh,), //Mayflower
        ClickButton(-0.2128, -0.425, 128, refresh,), //Bright Hill
        ClickButton(-0.1848, -0.3228, 129, refresh,), //Upper Thomson
        ClickButton(-0.1848, -0.2291, 71, refresh,), //Caldecott
        ClickButton(-0.1285, -0.2803, 72, refresh,), //Marymount
        ClickButton(-0.1848, -0.0735, 93, refresh,), //Stevens
        ClickButton(-0.284, -0.0733, 70, refresh,), //Botanic Gardens
        ClickButton(-0.361, -0.0721, 92, refresh,), //Tan Kah Kee
        ClickButton(-0.4115, -0.1395, 91, refresh,), //Sixth Avenue
        ClickButton(-0.411, -0.1936, 90, refresh,), //King Albert Park
        ClickButton(-0.4114, -0.248, 89, refresh,), //Beauty World
        ClickButton(-0.4112, -0.3015, 88, refresh,), //Hillview
        ClickButton(-0.4112, -0.355, 87, refresh,), //Cashew
        ClickButton(-0.4112, -0.43, 86, refresh,), //Bukit Panjang
        //ClickButton(-0.4612, -0.4532, 41, refresh,), //Phoenix
        //ClickButton(-0.4984, -0.386), //Teck Whye
        //ClickButton(-0.4984, -0.3245), //Keat Hong
        //ClickButton(-0.4984, -0.2601), //South View
        ClickButton(-0.689, -0.306, 0, refresh,), //Tuas Link
        ClickButton(-0.6892, -0.2285, 1, refresh,), //Tuas West Road
        ClickButton(-0.6892, -0.1495, 2, refresh,), //Tuas Crescent
        ClickButton(-0.689, -0.071, 3, refresh,), //Gul Circle
        ClickButton(-0.689, 0.007, 4, refresh,), //Joo Koon
        ClickButton(-0.689, 0.0855, 5, refresh,), //Pioneer
        ClickButton(-0.689, 0.164, 6, refresh,), //Boon Lay
        ClickButton(-0.6377, 0.2612, 7, refresh,), //Lakeside
        ClickButton(-0.5826, 0.2612, 8, refresh,), //Chinese Garden
        ClickButton(-0.4487, 0.2612, 10, refresh,), //Clementi
        ClickButton(-0.3985, 0.2612, 11, refresh,), //Dover
        ClickButton(-0.3435, 0.2597, 12, refresh,), //Buona Vista
        ClickButton(-0.2972, 0.318, 13, refresh,), //Commonwealth
        ClickButton(-0.2677, 0.369, 14, refresh,), //Queenstown
        ClickButton(-0.2308, 0.431, 15, refresh,), //Redhill
        ClickButton(-0.1963, 0.494, 16, refresh,), //Tiong Bahru
        ClickButton(-0.1463, 0.58, 17, refresh,), //Outram Park
        ClickButton(-0.0858, 0.6845, 18, refresh,), //Tanjong Pagar
        ClickButton(-0.162, 0.7888, 61, refresh,), //HarbourFront
        ClickButton(-0.2205, 0.715, 62, refresh,), //Telok Blangah
        ClickButton(-0.2605, 0.6501, 63, refresh,), //Labrador Park
        ClickButton(-0.292, 0.58, 64, refresh,), //Pasir Panjang
        ClickButton(-0.314, 0.5089, 65, refresh,), //Haw Par Villa
        ClickButton(-0.3299, 0.4289, 66, refresh,), //Kent Ridge
        ClickButton(-0.3408, 0.341, 67, refresh,), //one-north
        ClickButton(-0.3363, 0.1364, 68, refresh,), //Holland Village
        ClickButton(-0.3175, 0.041, 69, refresh,), //Farrer Road
        ClickButton(0.047, -0.2975, 73, refresh,), //Lorong Chuan
        ClickButton(0.1233, -0.2468, 74, refresh,), //Serangoon
        ClickButton(0.1883, -0.1655, 75, refresh,), //Bartley
        ClickButton(0.2316, -0.086, 76, refresh,), //Tai Seng
        ClickButton(0.265, 0.0135, 77, refresh,), //MacPherson
        ClickButton(0.2888, 0.142, 25, refresh,), //Paya Lebar
        ClickButton(0.2958, 0.249, 78, refresh,), //Dakota
        ClickButton(0.293, 0.3365, 79, refresh,), //Mountbatten
        ClickButton(0.282, 0.4273, 80, refresh,), //Stadium
        ClickButton(0.2642, 0.5115, 81, refresh,), //Nicoll Highway
        ClickButton(0.2253, 0.6028, 82, refresh,), //Promenade
        ClickButton(0.16, 0.7127, 83, refresh,), //Bayfront
        ClickButton(0.1329, 0.5578, 84, refresh,), //Esplanade
        ClickButton(0.0638, 0.431, 85, refresh,), //Bras Basah
        ClickButton(0.006, 0.171, 94, refresh,), //Little India
        ClickButton(0.0505, 0.253, 95, refresh,), //Rochor
        ClickButton(0.0771, 0.3615, 100, refresh,), //Bencoolen
        ClickButton(-0.0915, 0.3882, 99, refresh,), //Fort Canning
        ClickButton(-0.0881, 0.485, 98, refresh,), //Chinatown
        ClickButton(0.0096, 0.646, 97, refresh,), //Telok Ayer
        ClickButton(0.1006, 0.741, 96, refresh,), //Downtown
        ClickButton(0.138, 0.411, 21, refresh,), //Bugis
        ClickButton(0.1146, 0.2921, 101, refresh,), //Jalan Besar
        ClickButton(0.1649, 0.203, 102, refresh,), //Bendemeer
        ClickButton(0.1971, 0.14, 103, refresh,), //Geylang Bahru
        ClickButton(0.2325, 0.077, 104, refresh,), //Mattar
        ClickButton(0.3062, -0.0548, 105, refresh,), //Ubi
        ClickButton(0.3438, -0.124, 106, refresh,), //Kaki Bukit
        ClickButton(0.3803, -0.1857, 107, refresh,), //Bedok North
        ClickButton(0.444, -0.2079, 108, refresh,), //Bedok Reservoir
        ClickButton(0.5078, -0.2079, 110, refresh,), //Tampines West
        ClickButton(0.564, -0.2079, 31, refresh,), //Tampines
        ClickButton(0.564, -0.3115, 32, refresh,), //Pasir Ris
        ClickButton(0.564, -0.154, 30, refresh,), //Simei
        ClickButton(0.559, -0.1025, 29, refresh,), //Tanah Merah
        ClickButton(0.457, -0.1025, 28, refresh,), //Bedok
        ClickButton(0.3815,-0.03, 27, refresh,), //Kembangan
        ClickButton(0.3358, 0.052, 26, refresh,), //Eunos
        ClickButton(0.2442, 0.2175, 24, refresh,), //Aljunied
        ClickButton(0.2115, 0.277, 23, refresh,), //Kallang
        ClickButton(0.1766, 0.3405, 22, refresh,), //Lavender
        ClickButton(0.6354, -0.0037, 33, refresh,), //Expo
        ClickButton(0.6354, -0.093, 112, refresh,), //Upper Changi
        ClickButton(0.6354, -0.1535, 111, refresh,), //Tampines East
        ClickButton(0.6913, -0.0035, 34, refresh,), //Changi Airport
        ClickButton(0.0317, -0.082, 116, refresh,), //Potong Pasir
        ClickButton(0.0745, -0.163, 117, refresh,), //Woodleigh
        ClickButton(0.1605, -0.314, 118, refresh,), //Kovan
        ClickButton(0.1932, -0.3725, 119, refresh,), //Hougang
        ClickButton(0.2244, -0.4301, 120, refresh,), //Buangkok
        ClickButton(0.2578, -0.4873, 121, refresh,), //Sengkang
        ClickButton(0.327, -0.619, 122, refresh,), //Punggol
      ],
    );
  }
}