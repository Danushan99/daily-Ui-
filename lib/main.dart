import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_migration/pages/animated_container.dart';
import 'package:ui_migration/pages/chart_example.dart';
import 'package:ui_migration/pages/learn_flutter.dart';
import 'package:ui_migration/pages/salomon_bottom_bar.dart';
import 'package:ui_migration/pages/spinner_page.dart';
import 'package:ui_migration/pages/stocks.dart';
import 'package:ui_migration/pages/verification.dart';
import 'package:ui_migration/shop/provider/cart_provider.dart';
import 'package:ui_migration/shop/provider/product_provider.dart';
import 'package:ui_migration/shop/screens/cart_screen.dart';
import 'package:ui_migration/shop/screens/home_screen.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LearnFlutter(),
    ));
// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(
//       create: (_) => CartProvider(),
//     ),
//     ChangeNotifierProvider(
//       create: (_) => ProductProvider(),
//     ),
//   ], child: const ChartExample()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/home': (context) => const HomeScreen(),
//         '/cart': (context) => const CartScreen(),
//       },
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/home',
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        color: const Color(0xff8186F0),
        child: const Center(child: Box()),
      ),
    );
  }
}
