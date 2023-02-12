import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> beautyImages = const [
  beauty0,
  beauty1,
  beauty2,
  beauty3,
  beauty4,
  beauty5,
];

class BeautyCategory extends StatelessWidget {
  const BeautyCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Beauty'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              beautyImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'beauty',
                  subCateg: beauty[index],
                  assetName: beautyImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
