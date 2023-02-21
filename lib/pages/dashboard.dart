import 'package:assessment_app/helpers/helper.dart';
import 'package:assessment_app/pages/widgets/dashboard_title.dart';
import 'package:assessment_app/pages/widgets/scrollable_cards.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState(){
    super.initState();
    helper.activePage = "dashboard";
  }

  @override
  Widget build(BuildContext context) {
    helper.activePage = "dashboard";
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        children: [
          Column(
            children: [
              DashBoardTitle(title: "Pending Jobs"),
              const ScrollableCards(),
              DashBoardTitle(title: "In-Progress"),
              const ScrollableCards(),
              DashBoardTitle(title: "Closed Jobs"),
              const ScrollableCards(),
            ],
          ),
        ],
      ),
    );
  }
}
