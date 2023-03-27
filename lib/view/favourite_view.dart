import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/control_favourite_of_category.dart';

import '../widget/instant_of_category.dart';

class FavouriteView extends StatelessWidget {
  FavouriteView({Key? key}) : super(key: key);

  FavouriteCategoryController controller =
      Get.put(FavouriteCategoryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("favourite"),
        centerTitle: true,
      ),
      body: controller.favourite.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GetBuilder<FavouriteCategoryController>(
              builder: (controller) => ListView.builder(
                  itemCount: controller.favourite.length,
                  itemBuilder: (BuildContext context, int i) {
                    return GestureDetector(
                      child: InstantCategory(
                        image: '${controller.favourite[i]["image"]}',
                        title: '${controller.favourite[i]["name"]}',
                        days: '${controller.favourite[i]["days"]}',
                        weather: '${controller.favourite[i]["weather"]}',
                        etc: '${controller.favourite[i]["etc"]}',
                      ),
                      onTap: () {
                        Get.toNamed(
                          "detailsOfCategory",
                          arguments: [
                            controller.favourite[i],
                          ],
                        );
                      },
                    );
                  }),
            ),
    );
  }
}
