// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, unused_label

import 'package:flutter/material.dart';
import 'package:quiz_application_1/view/leader_screen/tabs/alltime_tab.dart';
import 'package:quiz_application_1/view/leader_screen/tabs/month_tab.dart';
import 'package:quiz_application_1/view/leader_screen/tabs/thisweek_tab.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 44, 129, 199),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Leaderboard",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25),
              ),
            ),
            bottom: TabBar(
              
               isScrollable: true, // Makes tabs scrollable if they exceed the width
            indicatorColor: Colors.white, // Line color under the active tab
            indicatorWeight: 3.0, // Thickness of the indicator
            indicatorPadding: EdgeInsets.symmetric(horizontal: 16),
            unselectedLabelColor: Colors.white70, // Color of the inactive tab label
            unselectedLabelStyle: TextStyle(fontSize: 14),
                tabAlignment: TabAlignment.center,
                
                indicatorSize: TabBarIndicatorSize.tab,
                onTap: (value) {},
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
                     splashBorderRadius:  BorderRadius.circular(90),
                     labelColor: Colors.white,
                tabs: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "All time",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "This Week",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Tab(
                      text: "Month",
                    ),
                  ),
                ])),
        body: TabBarView(
          children: [
            AlltimeTab(),
            ThisweekTab(),
            MonthTab(),
          ],
        ),
      ),
    );
  }
}
