import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/cosntants.dart';
import 'package:responsive_dashboard/widgets/pie_chart_widget.dart';
import 'package:responsive_dashboard/widgets/schedule_widget.dart';
import 'package:responsive_dashboard/widgets/summary_details_widget.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: const Column(
        children: ([
          SizedBox(height: 50),
          PieChartWidget(),
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),

          Padding(padding: EdgeInsets.all(20.0), child: SummaryDetailsWidget()),
          SizedBox(height: 10),

          ScheduleWidget(),
        ]),
      ),
    );
  }
}
