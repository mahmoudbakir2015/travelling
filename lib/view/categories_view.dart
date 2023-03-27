import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelling/model/category.dart';
import '../widget/category.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ListView(
        children: [
          GridView.builder(
              shrinkWrap: true,
              itemCount: category.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 750 ? 3 : 2,
                childAspectRatio: 1.7,
              ),
              itemBuilder: (BuildContext context, int i) {
                return SizedBox(
                  child: GestureDetector(
                    child: Categories(
                      title: '${category[i]["title"]}',
                      image: '${category[i]["image"]}',
                    ),
                    onTap: () {
                      Get.toNamed("/categoriesInside", arguments: [
                        category[i],
                      ]);
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}
