import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'view/categories_inside.dart';
import 'view/datails_of_category.dart';
import 'view/favourite_view.dart';
import 'view/home_view.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travelling',
      initialRoute: "/homeView",
      getPages: [
        GetPage(
          name: "/homeView",
          page: () => Home(),
        ),
        GetPage(
          name: "/favouriteView",
          page: () => FavouriteView(),
        ),
        GetPage(
          name: "/categoriesInside",
          page: () => CategoriesInside(),
          transitionDuration: Duration(
            milliseconds: 500,
          ),
          transition: Transition.rightToLeftWithFade,
        ),
        GetPage(
          name: "/detailsOfCategory",
          page: () => DetailsOfCategory(),
          transitionDuration: Duration(
            milliseconds: 500,
          ),
          transition: Transition.rightToLeftWithFade,
        ),
      ],
    );
  }
}
