import 'package:concentric_transition/page_view.dart';
import 'package:flutter/material.dart';
import 'package:ui_migration/pages/animated_container.dart';
import 'package:ui_migration/pages/awesome_dropdown_example.dart';
import 'package:ui_migration/pages/chart_example.dart';
import 'package:ui_migration/pages/concentric_transition.dart';
import 'package:ui_migration/pages/design_tools.dart';
import 'package:ui_migration/pages/discover.dart';
import 'package:ui_migration/pages/dream_job.dart';
import 'package:ui_migration/pages/expenses.dart';
import 'package:ui_migration/pages/github_users.dart';
import 'package:ui_migration/pages/learn_flutter.dart';
import 'package:ui_migration/pages/loading.dart';
import 'package:ui_migration/pages/movies.dart';
import 'package:ui_migration/pages/new_collection.dart';
import 'package:ui_migration/pages/no_connection.dart';
import 'package:ui_migration/pages/product_card.dart';
import 'package:ui_migration/pages/spinner_page.dart';
import 'package:ui_migration/pages/squid_game.dart';
import 'package:ui_migration/pages/staggered_gridview.dart';
import 'package:ui_migration/pages/tea_page.dart';
import 'package:ui_migration/pages/vartical_card_pager.dart';
import 'package:ui_migration/pages/verification.dart';
import 'package:ui_migration/pages/vero.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VeroPage(),
    ));

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
