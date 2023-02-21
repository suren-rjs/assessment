import 'package:flutter/material.dart';

class CreateInventory extends StatefulWidget {
  CreateInventory({Key? key});

  @override
  State<CreateInventory> createState() => _CreateInventoryState();
}

class _CreateInventoryState extends State<CreateInventory> {
  TextEditingController itemCode = TextEditingController(text: "");
  TextEditingController name = TextEditingController(text: "");
  TextEditingController size = TextEditingController(text: "");
  TextEditingController qty = TextEditingController(text: "");
  TextEditingController unit = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.09),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  controller: itemCode,
                  style: TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: "Item Code",
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  controller: name,
                  style: TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: "Name",
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  controller: size,
                  style: TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: "Size",
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  controller: qty,
                  style: TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: "Quantity",
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.width * 0.2,
                child: TextFormField(
                  controller: unit,
                  style: TextStyle(fontSize: 12),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    hintText: "Unit",
                  ),
                ),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            Flexible(
                child: InkWell(
              onTap: () {
                //  Method implementation for add inventory
              },
              child: Container(
                width: 30,
                height: 30,
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, spreadRadius: 1),
                  ],
                ),
                child: Icon(Icons.add, size: 20),
              ),
            )),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          ],
        ),
      ),
    );
  }
}
