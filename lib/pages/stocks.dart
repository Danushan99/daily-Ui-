import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StocksPage extends StatefulWidget {
  const StocksPage({Key? key}) : super(key: key);

  @override
  _StocksPageState createState() => _StocksPageState();
}

class _StocksPageState extends State<StocksPage> {
  // crate list of spots for the graph by monthly, yearly of Google Stocks
  List<FlSpot> _daylySpots = [
    FlSpot(0, 20.0),
    FlSpot(1, 20.0),
    FlSpot(2, 30.0),
    FlSpot(3, 10.0),
    FlSpot(4, 40.0),
    FlSpot(5, 60.0),
    FlSpot(6, 40.0),
    FlSpot(7, 80.0),
    FlSpot(8, 60.0),
    FlSpot(9, 70.0),
    FlSpot(10, 50.0),
    FlSpot(11, 150.0),
    FlSpot(12, 70.0),
    FlSpot(13, 80.0),
    FlSpot(14, 60.0),
    FlSpot(15, 70.0),
    FlSpot(16, 60.0),
    FlSpot(17, 80.0),
    FlSpot(18, 110.0),
    FlSpot(19, 130.0),
    FlSpot(20, 100.0),
    FlSpot(21, 130.0),
    FlSpot(22, 160.0),
    FlSpot(23, 190.0),
    FlSpot(24, 150.0),
    FlSpot(25, 170.0),
    FlSpot(26, 180.0),
    FlSpot(27, 140.0),
    FlSpot(28, 150.0),
    FlSpot(29, 150.0),
    FlSpot(30, 130.0)
  ];

  List<FlSpot> _monthlySpots = [
    FlSpot(0, 110.0),
    FlSpot(1, 110.0),
    FlSpot(2, 130.0),
    FlSpot(3, 100.0),
    FlSpot(4, 130.0),
    FlSpot(5, 160.0),
    FlSpot(6, 190.0),
    FlSpot(7, 150.0),
    FlSpot(8, 170.0),
    FlSpot(9, 180.0),
    FlSpot(10, 140.0),
    FlSpot(11, 150.0),
  ];

  // Add yearly data
  List<FlSpot> _yearlySpots = [
    FlSpot(0, 100.0),
    FlSpot(1, 120.0),
    FlSpot(2, 140.0),
    FlSpot(3, 160.0),
    FlSpot(4, 180.0),
    FlSpot(5, 200.0),
    FlSpot(6, 220.0),
    FlSpot(7, 240.0),
    FlSpot(8, 260.0),
    FlSpot(9, 280.0),
    FlSpot(10, 300.0),
    FlSpot(11, 320.0),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0E1117),
        appBar: AppBar(
          backgroundColor: Color(0xff0E1117),
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.blueGrey),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Stocks',
            style: TextStyle(
              color: Colors.blueGrey.shade200,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  from: 30,
                  child: Text(
                    '\$ 4,777.12',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.blueGrey.shade100,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  from: 30,
                  child: Text(
                    '+1.5%',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  from: 60,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: LineChart(
                        mainData(),
                        curve: Curves.easeInOutCubic,
                        duration: Duration(milliseconds: 1000),
                      )),
                ),
                AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: MediaQuery.of(context).size.height * 0.3,
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex == 0
                                  ? Color(0xff161b22)
                                  : Color(0xff161b22).withOpacity(0.0),
                            ),
                            child: Text(
                              "D",
                              style: TextStyle(
                                  color: _currentIndex == 0
                                      ? Colors.blueGrey.shade200
                                      : Colors.blueGrey,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 1;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex == 1
                                  ? Color(0xff161b22)
                                  : Color(0xff161b22).withOpacity(0.0),
                            ),
                            child: Text(
                              "M",
                              style: TextStyle(
                                  color: _currentIndex == 1
                                      ? Colors.blueGrey.shade200
                                      : Colors.blueGrey,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = 2;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex == 2
                                  ? Color(0xff161b22)
                                  : Color(0xff161b22).withOpacity(0.0),
                            ),
                            child: Text(
                              "Y",
                              style: TextStyle(
                                  color: _currentIndex == 2
                                      ? Colors.blueGrey.shade200
                                      : Colors.blueGrey,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    )),
              ]),
        ));
  }

  // Charts Data
  List<Color> gradientColors = [
    const Color(0xffe68823),
    const Color(0xffe68823),
  ];

  LineChartData mainData() {
    List<FlSpot> currentSpots = _currentIndex == 0
        ? _daylySpots
        : _currentIndex == 1
            ? _monthlySpots
            : _yearlySpots;

    return LineChartData(
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
          show: false, horizontalInterval: 1.6, drawVerticalLine: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 22,
            interval: 1,
            getTitlesWidget: (value, meta) {
              final monthLabels = [
                'JAN',
                'FEB',
                'MAR',
                'APR',
                'MAY',
                'JUN',
                'JUL',
                'AUG',
                'SEP',
                'OCT',
                'NOV',
                'DEC'
              ];
              if (_currentIndex == 1 || _currentIndex == 2) {
                int idx = value.toInt();
                if (idx >= 0 && idx < monthLabels.length) {
                  return Text(
                    monthLabels[idx],
                    style: const TextStyle(
                      color: Color(0xff68737d),
                      fontWeight: FontWeight.bold,
                      fontSize: 8,
                    ),
                  );
                }
              }
              return const SizedBox.shrink();
            },
            //  margin: 10,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 10:
                  return const Text('10k',
                      style: TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12));
                case 30:
                  return const Text('30k',
                      style: TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12));
                case 50:
                  return const Text('50k',
                      style: TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12));
              }
              return const SizedBox.shrink();
            },
            reservedSize: 40,
          ),
        ),
      ),
      minX: 0,
      maxX: currentSpots.length - 1.toDouble(),
      minY: 0,
      maxY: 200,
      lineTouchData: LineTouchData(
        getTouchedSpotIndicator:
            (LineChartBarData barData, List<int> spotIndexes) {
          return spotIndexes.map((index) {
            return TouchedSpotIndicatorData(
              FlLine(
                color: Colors.white.withOpacity(0.1),
                strokeWidth: 2,
                dashArray: [3, 3],
              ),
              FlDotData(
                show: false,
                getDotPainter: (spot, percent, barData, index) =>
                    FlDotCirclePainter(
                  radius: 8,
                  color: [
                    Colors.black,
                    Colors.black,
                  ][index],
                  strokeWidth: 2,
                  strokeColor: Colors.black,
                ),
              ),
            );
          }).toList();
        },
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipPadding: const EdgeInsets.all(8),
          // tooltipBackgroundColor: Color(0xff2e3747).withOpacity(0.8),
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((touchedSpot) {
              return LineTooltipItem(
                '\$${touchedSpot.y.round()}.00',
                const TextStyle(color: Colors.white, fontSize: 12.0),
              );
            }).toList();
          },
        ),
        handleBuiltInTouches: true,
      ),
      lineBarsData: [
        LineChartBarData(
          spots: currentSpots,
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 2,
          dotData: FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                Color(0xffe68823).withOpacity(0.1),
                Color(0xffe68823).withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        )
      ],
    );
  }
}
