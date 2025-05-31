import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpinnerPage extends StatefulWidget {
  const SpinnerPage({super.key});

  @override
  State<SpinnerPage> createState() => _SpinnerPageState();
}

class _SpinnerPageState extends State<SpinnerPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20),
          child: Column(
            children: [
              // MAppBar(),
              SizedBox(
                height: 20,
              ),
              // Wallets(),
              WalletItem(
                color: Colors.black,
              ),
              SizedBox(
                height: 200,
              ),
              // Center(
              //   child: ProgressIndicator(
              //     color: Colors.teal,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProgressIndicator extends StatefulWidget {
  final Color color;
  const ProgressIndicator({
    required this.color,
    super.key,
  });

  @override
  State<ProgressIndicator> createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> indicatorAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    indicatorAnimation =
        Tween<double>(begin: 0, end: 100).animate(animationController)
          ..addListener(() {
            setState(() {
              value = indicatorAnimation.value;
            });
          });
    animationController.forward();
    super.initState();
  }

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CustomPaint(
          foregroundPainter: SpinnerPainter(
              value: indicatorAnimation.value, color: widget.color),
          child: Center(
            child: Text(
              '${value.floor().toString()}%',
              style: TextStyle(
                  color: widget.color,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          )),
    );
  }
}

class SpinnerPainter extends CustomPainter {
  double value;
  Color color;
  SpinnerPainter({
    required this.value,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final outlinePaint = Paint()
      ..color = color.withOpacity(0.1)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final linePaint = Paint()
      ..color = color
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    Rect rect = Rect.fromCircle(center: center, radius: size.height / 2);
    canvas.drawArc(rect, pi * 1.5, 2 * pi * (value / 100), false, linePaint);
    canvas.drawCircle(center, size.width / 2, outlinePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class MAppBar extends StatelessWidget {
  const MAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20

          //  pageHorizontalPadding
          ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.square_grid_2x2_fill,
            size: 29,
          ),
          CircleAvatar(
            radius: 23,
            backgroundImage: AssetImage('avatar.jpeg'),
          )
        ],
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final Color color;
  const WalletItem({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                colors: [color, color.withOpacity(0.8)]),
            color: color,
            borderRadius: BorderRadius.circular(15)),
        width: 320,
        height: 190,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 17.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "HSBC-Saving",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Balance",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    r"$" "4345.00",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "/usd",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.archivebox_fill,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Deposit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.tray_arrow_down_fill,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Withdraw",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.link,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "More",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Wallets extends StatelessWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            WalletItem(
              color: Colors.black,
            ),
            WalletItem(
              color: Colors.teal,
            ),
            WalletItem(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
