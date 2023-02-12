import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> bagsImages = const [
  bags0,
  bags1,
  bags2,
  bags3,
  bags4,
  bags5,
  bags6,
  bags7,
];

class BagsCategory extends StatelessWidget {
  const BagsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Bags'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              bagsImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'bags',
                  subCateg: bags[index],
                  assetName: bagsImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
