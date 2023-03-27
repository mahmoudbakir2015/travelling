import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/instant_of_category.dart';

class CategoriesInside extends StatelessWidget {
  const CategoriesInside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${Get.arguments[0]["title"]}"),
      ),
      body: ListView.builder(
          itemCount: Get.arguments[0]["list"].length,
          itemBuilder: (BuildContext context, int i) {
            return GestureDetector(
              child: InstantCategory(
                image: '${Get.arguments[0]["list"][i]['image']}',
                title: '${Get.arguments[0]["list"][i]['name']}',
                days: '${Get.arguments[0]["list"][i]['days']}',
                weather: '${Get.arguments[0]["list"][i]['weather']}',
                etc: '${Get.arguments[0]["list"][i]['etc']}',
              ),
              onTap: () {
                Get.toNamed(
                  "detailsOfCategory",
                  arguments: [
                    Get.arguments[0]["list"][i],
                  ],
                );
              },
            );
          }),
    );
  }
}
