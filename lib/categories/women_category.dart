import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> womenImages = const [
  women0,
  women1,
  women2,
  women3,
  women4,
  women5,
  women6,
  women7,
  women8,
  women9,
];

class WomenCategory extends StatelessWidget {
  const WomenCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Women'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              womenImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'women',
                  subCateg: women[index],
                  assetName: womenImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
