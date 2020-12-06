import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../models/rate.dart';

class ResultPage extends StatelessWidget {
  ResultPage();

  void _onPressedFloatingActionButton(){
    // rate更新処理
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PointsLineChart.withSampleData()
          ) ,
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PointsLineChart.withSampleData()
          ) ,
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PointsLineChart.withSampleData()
          ) ,
          Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PointsLineChart.withSampleData()
          ) ,
        ],
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: _onPressedFloatingActionButton ,
        child: Icon(Icons.replay_outlined),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}

class PointsLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  PointsLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory PointsLineChart.withSampleData() {
    return new PointsLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(seriesList,
        animate: animate,
        defaultRenderer: new charts.LineRendererConfig(includePoints: true));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Rate, int>> _createSampleData() {
    final data = [
      new Rate(5, "12/01", 1),
      new Rate(25, "12/02", 2),
      new Rate(100, "12/05", 5),
      new Rate(75, "12/06", 6),
    ];

    return [
      new charts.Series<Rate, int>(
        id: 'Rates',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Rate rates, _) => rates.order,
        measureFn: (Rate rates, _) => rates.rate,
        data: data,
      )
    ];
  }
}
