import 'package:assessment_app/helpers/colors.dart';
import 'package:assessment_app/pages/widgets/date_field.dart';
import 'package:flutter/material.dart';

class DashBoardTitle extends StatefulWidget {
  DashBoardTitle({Key? key, required this.title});

  String title;

  @override
  State<DashBoardTitle> createState() => _DashBoardTitleState();
}

class _DashBoardTitleState extends State<DashBoardTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: colors.dashboardTitleTextColor
            ),
          ),
          const SizedBox(width: 8),
          DateField(
              initText: 'From Date',
              height: MediaQuery.of(context).size.height * 0.035,
              width: MediaQuery.of(context).size.width * 0.265),
          const SizedBox(width: 4),
          DateField(
              initText: 'To Date',
              height: MediaQuery.of(context).size.height * 0.035,
              width: MediaQuery.of(context).size.width * 0.25),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            child: Text(
              "View All",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: colors.dashboardTextColor),
            ),
          )
        ],
      ),
    );
  }
}
