import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/cosntants.dart';
import 'package:responsive_dashboard/data/line_chart_data.dart';
import 'package:responsive_dashboard/widgets/custom_card_widget.dart';

class LineChartCardWidget extends StatelessWidget {
  const LineChartCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MyLineChartData(); // renamed

    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 15),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(enabled: true),
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final title = data.bottomTitle[value.toInt()];
                        return title != null
                            ? SideTitleWidget(
                                meta: meta,
                                child: Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      reservedSize: 40,
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        final title = data.leftTitle[value.toInt()];
                        return title != null
                            ? SideTitleWidget(
                                meta: meta,
                                child: Text(title, textAlign: TextAlign.center),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),

                lineBarsData: [
                  LineChartBarData(
                    dotData: FlDotData(show: false),
                    spots: data.spots,
                    show: true,
                    color: selectionColor,
                    barWidth: 2.5,

                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          selectionColor.withOpacity(0.5),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
                minX: 0,
                minY: -5,
                maxX: 120,
                maxY: 105,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
