import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/bargraph_model.dart';
import 'package:responsive_dashboard/model/graph_model.dart';

class BargraphData {
  final List<BargraphModel> bargraph = [
    BargraphModel(
      title: "Activity Level",
      color: Colors.green,
      data: [
        GraphModel(0, 8),
        GraphModel(1, 4),
        GraphModel(2, 5),
        GraphModel(3, 6),
        GraphModel(4, 3),
        GraphModel(5, 2),
        GraphModel(6, 1),
      ],
    ),
    BargraphModel(
      title: "Nutrition Level",
      color: Colors.purple,
      data: [
        GraphModel(0, 8),
        GraphModel(1, 4),
        GraphModel(2, 5),
        GraphModel(3, 6),
        GraphModel(4, 3),
        GraphModel(5, 2),
        GraphModel(6, 1),
      ],
    ),
    BargraphModel(
      title: "Hydration Level",
      color: Colors.blue,
      data: [
        GraphModel(0, 8),
        GraphModel(1, 4),
        GraphModel(2, 5),
        GraphModel(3, 6),
        GraphModel(4, 3),
        GraphModel(5, 2),
        GraphModel(6, 1),
      ],
    ),
  ];
}
