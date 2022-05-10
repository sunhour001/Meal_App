import 'package:flutter/material.dart';

import './category_item.dart';
import './dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  // const CategoryScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('DeliMeal'),
        ),
        body: GridView(
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.title,
                  catData.color,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 3 / 2,
          ),
        ));
  }
}
