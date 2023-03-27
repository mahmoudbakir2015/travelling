import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelling/constant/constant.dart';
import 'package:travelling/responsive/responsive.dart';
import '../controller/control_favourite_of_category.dart';
import '../widget/custom_column.dart';
import '../widget/custom_text.dart';
import 'test.dart';

class DetailsOfCategory extends StatelessWidget {
  DetailsOfCategory({Key? key}) : super(key: key);

  FavouriteCategoryController controller = Get.put(
    FavouriteCategoryController(),
    permanent: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Get.arguments[0]["name"]}"),
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: Responsive.isDesktop(context) ? 3.5 : 1.7,
            child: Image.asset(
              "${Get.arguments[0]["image"]}",
              fit: BoxFit.cover,
            ),
          ),
          CustomText(
            text: 'الأنشطة',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Card(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Get.arguments[0]["activites"].length,
                  itemBuilder: (BuildContext context, int i) {
                    return CustomColumn(
                      text: '${Get.arguments[0]["activites"][i]}',
                    );
                  }),
            ),
          ),
          CustomText(
            text: 'البرنامج اليومي',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Card(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Get.arguments[0]["programs"].length,
                  itemBuilder: (BuildContext context, int i) {
                    return CustomColumn(
                      text: '${Get.arguments[0]["programs"][i]}',
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => Test(),
              );
            },
            child: Text("Go to test "),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: GetBuilder<FavouriteCategoryController>(
        builder: (controller) => FloatingActionButton(
          onPressed: () {
            controller.changeStatus();
            controller.isCliked == true
                ? controller.favourite.add(Get.arguments[0])
                : controller.favourite.remove(Get.arguments[0]);
          },
          foregroundColor:
              controller.isCliked == true ? Colors.red : Colors.black87,
          child: Icon(
            Icons.star,
          ),
        ),
      ),
    );
  }
}
