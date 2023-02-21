import 'package:assessment_app/helpers/colors.dart';
import 'package:assessment_app/pages/inventory_search.dart';
import 'package:flutter/material.dart';
import 'package:assessment_app/helpers/helper.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 100,
      automaticallyImplyLeading: false,
      actions: helper.activePage == "dashboard"
          ? [
              Center(
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width / 3,
                  height: 20,
                  child: OutlinedButton(
                    onPressed: () {
                      Get.to(() => const InventorySearch());
                    },
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'View Inventory',
                      style: TextStyle(
                          color: Colors.black54,
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.notifications_rounded),
                color: Colors.black,
                onPressed: () {},
              ),
            ]
          : helper.activePage == "job creation"
              ? [
                  Center(
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: [
                          TextSpan(
                              text: 'Job Code : ',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: '10123 ',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 20)
                ]
              : [],
      title: helper.activePage == "dashboard"
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Hi Suresh,",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            )
          : Container(
              padding: const EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: () {
                  helper.activePage = "dashboard";
                  Get.back();
                },
                child: Container(
                  color: colors.primaryColor,
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.height * 0.04,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        helper.activePage == "job creation"
                            ? "job creation"
                            : "Inventory",
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400,
                            fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
