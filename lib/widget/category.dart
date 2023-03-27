import 'package:flutter/material.dart';
import 'package:travelling/constant/constant.dart';

class Categories extends StatelessWidget {
  final String title, image;
  const Categories({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
