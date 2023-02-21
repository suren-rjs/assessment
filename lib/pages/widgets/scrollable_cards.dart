import 'package:flutter/material.dart';

import 'dashboard_card.dart';

class ScrollableCards extends StatelessWidget {
  const ScrollableCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: CardWidget(),
          );
        },
      ),
    );
  }
}