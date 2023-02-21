import 'package:assessment_app/helpers/helper.dart';
import 'package:assessment_app/pages/widgets/custom_app_bar.dart';
import 'package:assessment_app/pages/widgets/custom_dropdown.dart';
import 'package:assessment_app/pages/widgets/date_field.dart';
import 'package:assessment_app/pages/widgets/inventory_card.dart';
import 'package:flutter/material.dart';

class InventorySearch extends StatefulWidget {
  const InventorySearch({super.key});

  @override
  State<InventorySearch> createState() => _InventorySearchState();
}

class _InventorySearchState extends State<InventorySearch> {
  @override
  void initState() {
    super.initState();
    helper.activePage = "inventory search";
  }

  @override
  Widget build(BuildContext context) {
    helper.activePage = "inventory search";
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.985,
            child: Container(
              padding: const EdgeInsets.all(30.25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        DateField(
                            initText: "From Date",
                            height: MediaQuery.of(context).size.height * 0.055,
                            width: MediaQuery.of(context).size.width / 2.6),
                        const SizedBox(width: 20),
                        DateField(
                            initText: "To Date",
                            height: MediaQuery.of(context).size.height * 0.055,
                            width: MediaQuery.of(context).size.width / 2.6),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CustomDropDown(initText: "Item Code"),
                        const SizedBox(width: 20),
                        CustomDropDown(initText: "Name"),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CustomDropDown(initText: "Type"),
                        const SizedBox(width: 20),
                        CustomDropDown(initText: "Size"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(1),
                    width: MediaQuery.of(context).size.width * 0.825,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 15.0,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'SEARCH',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: InventoryCard(),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
