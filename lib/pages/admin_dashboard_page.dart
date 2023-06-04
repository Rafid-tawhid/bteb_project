import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../custom_widgets/admin_drawer.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);
  static const String routeName='/admin_dashboard';

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AdminDrawer(),
        appBar: AppBar(title: Text('Dashboard'),),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PieChart(
                dataMap: {
                  'Student':3300,
                  'Trainer':579,
                    'Assessor':500
                },
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                colorList: [
                  Color(0xff0021f3),
                  Color(0xffFF0000),
                  Color(0xffFFFF00),
                ],
                initialAngleInDegree: 0,
                chartType: ChartType.ring,
                ringStrokeWidth: 32,
                centerText: "Total",
                legendOptions: LegendOptions(
                  showLegendsInRow: false,
                  legendPosition: LegendPosition.right,
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: false,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
                ),
                // gradientList: ---To add gradient colors---
                // emptyColorGradient: ---Empty Color gradient---
              ),
            )
          ],
        ),
      ),
    );
  }
}
