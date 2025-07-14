import 'dart:core';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/bargraph_data.dart';
import 'package:responsive_dashboard/model/graph_model.dart';
import 'package:responsive_dashboard/widgets/custom_card_widget.dart';

class BargraphCardWidget extends StatelessWidget {
  const BargraphCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = BargraphData();

    return GridView.builder(
      itemCount: data.bargraph.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        final barData = data.bargraph[index];

        return CustomCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  barData.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: BarChart(
                  BarChartData(
                    gridData: const FlGridData(show: false),
                    alignment: BarChartAlignment.spaceAround,
                    barTouchData: const BarTouchData(enabled: false),
                    titlesData: const FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    barGroups: _chartGroups(
                      points: barData.data,
                      color: barData.color,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.X.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.Y.toDouble(),
                width: 12,
                color: color.withOpacity(point.Y > 4 ? 1 : 0.3),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  topRight: Radius.circular(3),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
