import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelling/constant/constant.dart';
import 'package:travelling/widget/custom_list_tile.dart';
import '../controller/home_controller.dart';
import 'categories_view.dart';
import 'favourite_view.dart';

class Home extends StatelessWidget {
  HomeController controller = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        endDrawer: drawer(),
        appBar: controller.currentBage == 0
            ? AppBar(
                centerTitle: true,
                title: Text(
                  "التصنيفات",
                ),
              )
            : AppBar(
                centerTitle: true,
                title: Text(
                  "المفضلة",
                ),
              ),
        body: controller.currentBage == 0 ? CategoriesView() : FavouriteView(),
        bottomNavigationBar: bottomNavigationBar(),
      ),
    );
  }

  bottomNavigationBar() {
    return BottomNavigationBar(
        onTap: (index) {
          controller.changeCurrentBage(index);
        },
        currentIndex: controller.currentBage,
        items: [
          BottomNavigationBarItem(
            label: "التصنيفات",
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: "المفضلة",
            icon: Icon(
              Icons.favorite,
            ),
          ),
        ]);
  }

  drawer() {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(20),
              color: Colors.orange,
              alignment: Alignment.bottomCenter,
              child: Text(
                "دليلك السياحي",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: [
                CustomListTile(
                  title: 'الرحلات',
                  icon: Icons.add_card,
                  onTap: () {},
                ),
                CustomListTile(
                  title: 'الفلترة',
                  icon: Icons.filter_list_outlined,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
