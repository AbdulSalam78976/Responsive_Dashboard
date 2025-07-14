import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';

class MyPieChartData {
  final List<PieChartSectionData> sections = [
    PieChartSectionData(
      color: const Color(0xff0293ee),
      value: 25,
      title: "25%",
      radius: 25,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xfff8b250),
      value: 26,
      title: '26%',
      radius: 20,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xff845bef),
      value: 18,
      title: '18%',
      radius: 15,
      showTitle: false,
    ),
    PieChartSectionData(
      color: const Color(0xff13d38e),
      value: 12,
      title: '12%',
      radius: 10,
      showTitle: false,
    ),
  ];
}
