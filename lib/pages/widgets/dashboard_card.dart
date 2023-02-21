import 'package:assessment_app/helpers/colors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26, blurRadius: 7.0, offset: Offset(0.0, 0.7))
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: colors.primaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Job Code",
                style: TextStyle(
                  fontSize: 20,
                  color: colors.dashboardTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Job Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: colors.dashboardTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Size",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: colors.dashboardTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Quantity",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: colors.dashboardTextColor,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "09-02-23 to 10-02-23",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: colors.dashboardTextColor),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035,
                width: MediaQuery.of(context).size.width / 2.3,
                child: ElevatedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                  child: Text(
                    'View Full Detail',
                    style: TextStyle(
                      color: colors.dashboardTextColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
