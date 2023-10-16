import 'package:ecomerce_frontend/controllers/mainscreen_provider.dart';
import 'package:ecomerce_frontend/views/shared/appstyle.dart';
import 'package:ecomerce_frontend/views/shared/bottom_nav.dart';
import 'package:ecomerce_frontend/views/ui/cartpage.dart';
import 'package:ecomerce_frontend/views/ui/homepage.dart';
import 'package:ecomerce_frontend/views/ui/profile.dart';
import 'package:ecomerce_frontend/views/ui/searchpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:community_material_icon/community_material_icon.dart';

import '../shared/botom_nav_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        backgroundColor: const Color(0xFFE2E2E2),
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottNavBar(),
      );
    });
  }
}
