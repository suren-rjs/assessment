import 'package:assessment_app/model/inventory.dart';
import 'package:flutter/material.dart';

class InventoryItem extends StatefulWidget {
  InventoryItem({Key? key, required this.inventory});

  Inventory inventory;

  @override
  State<InventoryItem> createState() => _InventoryItemState();
}

class _InventoryItemState extends State<InventoryItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * 0.08,
        top: MediaQuery.of(context).size.height * 0.025,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.22,
              child: inventoryText(widget.inventory.itemCode, false),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
              child: inventoryText(widget.inventory.name, false),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.17,
              child: inventoryText(widget.inventory.size, false),
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
                      if (widget.inventory.qty == 0) return;
                      widget.inventory.qty--;
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
                    " ${widget.inventory.qty} ",
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
                      widget.inventory.qty++;
                      setState(() {});
                    },
                    child: const Icon(Icons.add, size: 12, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
              child: inventoryText(widget.inventory.unit, false),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          ],
        ),
      ),
    );
  }
}

Text inventoryText(String text, bool isTitle) {
  return Text(
    text,
    style: TextStyle(
      fontSize: isTitle ? 18 : 16,
      fontWeight: isTitle ? FontWeight.normal : FontWeight.w500,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
