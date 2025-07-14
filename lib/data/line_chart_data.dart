import 'package:fl_chart/fl_chart.dart';

class MyLineChartData {
  final List<FlSpot> spots = [
    FlSpot(0, 21.04),
    FlSpot(10, 22.04),
    FlSpot(20, 23.04),
    FlSpot(30, 100.04),
    FlSpot(40, 25.04),
    FlSpot(50, 26.04),
    FlSpot(60, 27.04),
    FlSpot(70, 28.04),
    FlSpot(80, 50.04),
    FlSpot(90, 30.04),
    FlSpot(100, 31.04),
  ];

  final Map<int, String> leftTitle = {
    0: '2K',
    20: '4K',
    40: '6K',
    60: '8K',
    80: '10K',
    100: '12K',
  };

  final Map<int, String> bottomTitle = {
    0: 'Jan',
    10: 'Feb',
    20: 'Mar',
    30: 'Apr',
    40: 'May',
    50: 'Jun',
    60: 'Jul',
    70: 'Aug',
    80: 'Sep',
    90: 'Oct',
    100: 'Nov',
    110: 'Dec',
  };
}
