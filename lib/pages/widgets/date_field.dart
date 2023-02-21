import 'package:assessment_app/helpers/colors.dart';
import 'package:assessment_app/helpers/helper.dart';
import 'package:flutter/material.dart';

class DateField extends StatefulWidget {
  DateField(
      {super.key,
      required this.initText,
      required this.height,
      required this.width});

  String initText;
  double height, width;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: colors.primaryColor,
            border: helper.activePage == "dashboard"
                ? Border.all(width: 0.1)
                : null,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Container(
            padding: EdgeInsets.only(
                left: helper.activePage == "dashboard" ? 8 : 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Text(widget.initText,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: colors.buttonTextColor)),
                  onTap: () {
                    //  select date
                  },
                ),
                IconButton(
                  icon: Icon(Icons.calendar_month,
                      size: helper.activePage == "dashboard" ? 14 : 22),
                  tooltip: 'Select Date',
                  onPressed: () {
                    //  select date
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
