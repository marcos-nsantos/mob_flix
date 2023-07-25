import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/category_button.dart';

List<dynamic> categoryList = const [
  SizedBox(width: 30.0),
  CategoryButton(name: 'Ação', color: Color.fromARGB(255, 6, 119, 211)),
  CategoryButton(name: 'Comédia', color: Color.fromARGB(255, 245, 108, 4)),
  CategoryButton(name: 'Drama', color: Color.fromARGB(255, 98, 128, 143)),
  CategoryButton(name: 'Ficção', color: Color.fromARGB(255, 253, 192, 8)),
  CategoryButton(name: 'Terror', color: Color.fromARGB(255, 2, 202, 175)),
  CategoryButton(name: 'Suspense', color: Color.fromARGB(255, 194, 194, 23)),
  CategoryButton(name: 'Romance', color: Color.fromARGB(255, 92, 15, 136)),
  CategoryButton(name: 'Aventura', color: Color.fromARGB(255, 202, 11, 11)),
  CategoryButton(
      name: 'Documentário', color: Color.fromARGB(255, 175, 207, 29)),
  SizedBox(width: 10.0)
];

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Expanded(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return categoryList[index];
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 15.0);
          },
          itemCount: categoryList.length,
        ),
      ),
    );
  }
}
