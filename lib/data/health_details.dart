import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/health_model.dart';

class HealthDetails {
  final List<HealthModel> healthDetails = [
    HealthModel(
      icon: "assets/images/fire.png",
      value: "300",
      title: "Calories Burned",
    ),
    HealthModel(
      icon: "assets/images/feet.png",
      value: "10,983",
      title: "Steps",
    ),
    HealthModel(
      icon: "assets/images/distance.png",
      value: "700km",
      title: "Distance",
    ),
    HealthModel(icon: "assets/images/sleep.png", value: "8h", title: "Sleep"),
  ];
}
