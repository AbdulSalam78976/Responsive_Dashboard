import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/health_details.dart';
import 'package:responsive_dashboard/utils/responsive.dart';
import 'package:responsive_dashboard/widgets/custom_card_widget.dart';

class ActivityDetailsCardWidget extends StatelessWidget {
  const ActivityDetailsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthDetails healthDetails = HealthDetails();

    return GridView.builder(
      itemCount: healthDetails.healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
        crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        final item = healthDetails.healthDetails[index];

        return CustomCardWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(item.icon, width: 50, height: 50),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 4),
                child: Text(
                  item.value,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                item.title,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
