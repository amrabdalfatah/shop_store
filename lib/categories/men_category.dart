import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';

List<String> menImages = const [
  men0,
  men1,
  men2,
  men3,
  men4,
  men5,
  men6,
  men7,
  men8,
];

class MenCategory extends StatelessWidget {
  const MenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Men',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              menImages.length,
              (index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset(menImages[index]),
                    ),
                    Text(men[index]),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
