import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> kidsImages = const [
  kids0,
  kids1,
  kids2,
  kids3,
  kids4,
  kids5,
  kids6,
  kids7,
  kids8,
  kids9,
  kids10,
  kids11,
  kids12,
];

class KidsCategory extends StatelessWidget {
  const KidsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Kids'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              kidsImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'kids',
                  subCateg: kids[index],
                  assetName: kidsImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
