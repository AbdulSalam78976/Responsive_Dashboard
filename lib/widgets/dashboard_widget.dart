import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/responsive.dart';
import 'package:responsive_dashboard/widgets/activity_details_card_widget.dart';
import 'package:responsive_dashboard/widgets/bargraph_card_widget.dart';
import 'package:responsive_dashboard/widgets/header_widget.dart';
import 'package:responsive_dashboard/widgets/line_chart_card_widget.dart';
import 'package:responsive_dashboard/widgets/summary_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 18),
          const HeaderWidget(),
          const SizedBox(height: 18),
          const ActivityDetailsCardWidget(),
          const SizedBox(height: 18),
          const LineChartCardWidget(),
          const SizedBox(height: 18),
          const BargraphCardWidget(),
          const SizedBox(height: 18),
          if (isTablet) const SummaryWidget(),
        ],
      ),
    );
  }
}
