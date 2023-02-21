import 'package:assessment_app/helpers/colors.dart';
import 'package:assessment_app/helpers/helper.dart';
import 'package:assessment_app/model/inventory.dart';
import 'package:assessment_app/pages/widgets/create_inventory.dart';
import 'package:assessment_app/pages/widgets/custom_app_bar.dart';
import 'package:assessment_app/pages/widgets/custom_dropdown.dart';
import 'package:assessment_app/pages/widgets/date_field.dart';
import 'package:assessment_app/pages/widgets/inventory_item.dart';
import 'package:flutter/material.dart';

class JobCreation extends StatefulWidget {
  const JobCreation({super.key});

  @override
  State<JobCreation> createState() => _JobCreationState();
}

class _JobCreationState extends State<JobCreation> {
  TextEditingController unit = TextEditingController(text: "");

  int count = 0;
  List<Inventory> inventoryItems = [
    Inventory("02 RED", "Tape", "3 mm", 0, "2 Nos"),
    Inventory("02 GREEN", "Plastic", "5 mm", 0, "5 Nos"),
    Inventory("02 YELLOW", "Rubber", "9 mm", 0, "7 Nos"),
    Inventory("09 BLACK", "Wire", "27 mm", 0, "6 Nos"),
  ];

  @override
  void initState() {
    super.initState();
    helper.activePage = "job creation";
  }

  @override
  Widget build(BuildContext context) {
    helper.activePage = "job creation";
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.495,
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
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        quantityButton(context),
                        const SizedBox(width: 20),
                        unitButton(context),
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
                        backgroundColor: colors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Upload User Invoice',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.upload_rounded)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.1),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Inventory Items",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.07),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: inventoryText("Item Code", true),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.21,
                        child: inventoryText("Name", true),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: inventoryText("Size", true),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: inventoryText("Quantity", true),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: inventoryText("Unit", true),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InventoryItem(inventory: inventoryItems[index]);
              },
              itemCount: inventoryItems.length,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.025),
          CreateInventory(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.008),
          Container(
            padding: const EdgeInsets.all(1),
            width: MediaQuery.of(context).size.width * 0.825,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
              ),
              child: Text(
                'Requesting for approval'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Container unitButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.055,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
        color: colors.primaryColor,
        border:
            helper.activePage == "dashboard" ? Border.all(width: 0.1) : null,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Container(
        padding:
            EdgeInsets.only(left: helper.activePage == "dashboard" ? 8 : 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Text("Unit",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colors.buttonTextColor)),
              onTap: () {
                //  select date
              },
            ),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.grey),
                ],
              ),
              child: TextField(
                controller: unit,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.001),
          ],
        ),
      ),
    );
  }

  Container quantityButton(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.055,
      width: MediaQuery.of(context).size.width / 2.6,
      decoration: BoxDecoration(
        color: colors.primaryColor,
        border:
            helper.activePage == "dashboard" ? Border.all(width: 0.1) : null,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Container(
        padding:
            EdgeInsets.only(left: helper.activePage == "dashboard" ? 8 : 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Text("Quantity",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: colors.buttonTextColor)),
              onTap: () {
                //  select date
              },
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      if (count == 0) return;
                      count--;
                      setState(() {});
                    },
                    child:
                        const Icon(Icons.remove, size: 12, color: Colors.white),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.005),
                Container(
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, spreadRadius: 1),
                    ],
                  ),
                  child: Text(
                    " $count ",
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey,
                  ),
                  child: InkWell(
                    onTap: () {
                      count++;
                      setState(() {});
                    },
                    child: const Icon(Icons.add, size: 12, color: Colors.white),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
