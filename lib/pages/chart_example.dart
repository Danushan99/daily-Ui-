// ignore_for_file: library_private_types_in_public_api
import 'package:animate_do/animate_do.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ChartExample extends StatefulWidget {
  const ChartExample({super.key});

  @override
  _ChartExampleState createState() => _ChartExampleState();
}

class _ChartExampleState extends State<ChartExample> {
  bool _isLoaded = false;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // make _isLoaded true after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.blueGrey,
              ),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: const Color(0xff161621),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          margin:
              const EdgeInsets.only(bottom: 30, top: 10, right: 20, left: 20),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
                selectedColor: Colors.white),
            SalomonBottomBarItem(
                icon: const Icon(Icons.explore_outlined),
                title: const Text("Likes"),
                selectedColor: Colors.pink),
            SalomonBottomBarItem(
                icon: const Icon(Icons.data_usage),
                title: const Text("Search"),
                selectedColor: Colors.orange),
            SalomonBottomBarItem(
                icon: const Icon(Icons.settings),
                title: const Text("Profile"),
                selectedColor: Colors.teal),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          children: [
                            FadeInUp(
                                duration: const Duration(milliseconds: 800),
                                child: Text(
                                  "Balance",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade300,
                                      fontSize: 20),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            FadeInUp(
                              duration: const Duration(milliseconds: 800),
                              child: Text(
                                "\$ 12,500.00",
                                style: GoogleFonts.sora(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: Container(
                          width: double.infinity,
                          height: 250,
                          child: LineChart(
                            mainData(),
                            duration:
                                const Duration(milliseconds: 1000), // Optional
                            curve: Curves.linear, // Optional
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/');
                      },
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: const Color(0xff02d39a).withOpacity(0.7),
                      child: const Row(
                        children: [
                          Icon(
                            Iconsax.wallet,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Payment",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: const Color(0xff02d39a).withOpacity(0.4),
                              width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      splashColor: const Color(0xff02d39a).withOpacity(0.4),
                      highlightColor: const Color(0xff02d39a).withOpacity(0.4),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      color: Colors.transparent,
                      elevation: 0,
                      child: const Row(
                        children: [
                          Icon(
                            Iconsax.arrow_3,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Transfer",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // recent transactions
              FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    "Recent Transactions",
                    style: TextStyle(
                        color: Colors.blueGrey.shade300, fontSize: 16),
                  )),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  height: 200,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return FadeInUp(
                        from: 50,
                        duration: Duration(milliseconds: 1000 + index * 100),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.black.withOpacity(0.3),
                              border: Border.all(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                  width: 1)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Iconsax.arrow_3,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Transfer",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$ 12,500.00",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12:00 PM",
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ]),
          ),
        ));
  }

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  LineChartData mainData() {
    return LineChartData(
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
          show: true,
          horizontalInterval: 1.6,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              dashArray: const [3, 3],
              color: const Color(0xff37434d).withOpacity(0.2),
              strokeWidth: 2,
            );
          },
          drawVerticalLine: false),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 22,
            interval: 1,
            getTitlesWidget: (value, meta) {
              String text = '';
              switch (value.toInt()) {
                case 0:
                  text = 'MAR';
                  break;
                case 4:
                  text = 'JUN';
                  break;
                case 8:
                  text = 'SEP';
                  break;
                case 11:
                  text = 'OCT';
                  break;
              }
              return Text(
                text,
                style: const TextStyle(
                  color: Color(0xff68737d),
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                ),
              );
            },
            //  margin: 10,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            getTitlesWidget: (value, meta) {
              String text = '';
              switch (value.toInt()) {
                case 1:
                  text = '10k';
                  break;
                case 3:
                  text = '30k';
                  break;
                case 5:
                  text = '50k';
                  break;
              }
              return Text(
                text,
                style: const TextStyle(
                  color: Color(0xff67727d),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              );
            },
            reservedSize: 25,
            //  margin: 12,
          ),
        ),
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: _isLoaded
              ? [
                  const FlSpot(0, 3),
                  const FlSpot(2.4, 2),
                  const FlSpot(4.4, 3),
                  const FlSpot(6.4, 3.1),
                  const FlSpot(8, 4),
                  const FlSpot(9.5, 4),
                  const FlSpot(11, 5),
                ]
              : [
                  const FlSpot(0, 0),
                  const FlSpot(2.4, 0),
                  const FlSpot(4.4, 0),
                  const FlSpot(6.4, 0),
                  const FlSpot(8, 0),
                  const FlSpot(9.5, 0),
                  const FlSpot(11, 0)
                ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          barWidth: 2,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              colors: [
                const Color(0xff02d39a).withOpacity(0.1),
                const Color(0xff02d39a).withOpacity(0),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ],
    );
  }
}
