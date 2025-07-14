import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/model/graph_model.dart';

class BargraphModel {
  final String title;
  final Color color;
  final List<GraphModel> data;

  BargraphModel({required this.title, required this.color, required this.data});
}
