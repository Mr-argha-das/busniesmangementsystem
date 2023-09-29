import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text("Dashboard", style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 26
        ),),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Container(
                height: 200,
                width: 200,
                child: LineChart(
                   LineChartData(
                    
                    lineBarsData: [
                    LineChartBarData(
                      show: true,
                      spots: [
                        FlSpot(0, 7)
                      ]
                    )
    
                    ]
                  )
                  ) 
                )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
    
            ],
          )
        ],
      ),
    );
  }
}



Dashboard dashboard(){
  return const Dashboard();
}