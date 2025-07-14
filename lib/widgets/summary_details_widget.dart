import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_card_widget.dart';

class SummaryDetailsWidget extends StatelessWidget {
  const SummaryDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomCardWidget(
      color: Color(0xff2f353e),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SummaryDetail(title: 'Cal', value: '305'),
          SummaryDetail(title: 'Steps', value: '10983'),
          SummaryDetail(title: 'Distance', value: '3.5km'),
          SummaryDetail(title: 'Sleep', value: '7hr'),
        ],
      ),
    );
  }
}

class SummaryDetail extends StatelessWidget {
  final String title;
  final String value;

  const SummaryDetail({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        const SizedBox(height: 2),
        Text(value, style: const TextStyle(fontSize: 12, color: Colors.white)),
      ],
    );
  }
}
