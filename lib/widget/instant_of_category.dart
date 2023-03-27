import 'package:flutter/material.dart';
import 'custom_row.dart';

class InstantCategory extends StatelessWidget {
  final String image, title, days, weather, etc;
  const InstantCategory({
    Key? key,
    required this.image,
    required this.title,
    required this.days,
    required this.weather,
    required this.etc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 40,
        right: 40,
      ),
      child: SizedBox(
        height: 300,
        child: Card(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomRow(
                        title: etc,
                        icon: Icons.add_card,
                      ),
                      CustomRow(
                        title: weather,
                        icon: Icons.add_card,
                      ),
                      CustomRow(
                        title: days,
                        icon: Icons.add_card,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
