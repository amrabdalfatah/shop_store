import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> shoesImages = const [
  shoes0,
  shoes1,
  shoes2,
  shoes3,
  shoes4,
  shoes5,
  shoes6,
  shoes7,
  shoes8,
  shoes9,
  shoes10,
  shoes11,
  shoes12,
  shoes13,
];

class ShoesCategory extends StatelessWidget {
  const ShoesCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Shoes'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              shoesImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'shoes',
                  subCateg: shoes[index],
                  assetName: shoesImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
