import 'package:flutter/material.dart';

class InventoryCard extends StatelessWidget {
  const InventoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.125,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.21),
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "01-RED",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.08),
              const Text(
                "Socket",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.08),
              const Text(
                "10 mm",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.08),
              const Text(
                "STRIP",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Current Stock",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              const Text(
                "-",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.02),
              const Text(
                "10 NOS",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
