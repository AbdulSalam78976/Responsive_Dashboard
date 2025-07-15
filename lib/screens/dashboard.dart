import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/responsive.dart';
import 'package:responsive_dashboard/widgets/dashboard_widget.dart';
import 'package:responsive_dashboard/widgets/side_menu.dart';
import 'package:responsive_dashboard/widgets/summary_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      drawer: !isDesktop ? const SizedBox(width: 250, child: SideMenu()) : null,
      endDrawer: isMobile
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const SummaryWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(flex: 2, child: SizedBox(child: SideMenu())),
            const Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: DashboardWidget(),
              ),
            ),
            if (isDesktop) const Expanded(flex: 3, child: SummaryWidget()),
          ],
        ),
      ),
    );
  }
}
