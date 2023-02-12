import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> homeImages = const [
  home0,
  home1,
  home2,
  home3,
  home4,
  home5,
  home6,
  home7,
  home8,
  home9,
];

class HomeCategory extends StatelessWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Home & Garden'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              homeImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'homeandgarden',
                  subCateg: homeandgarden[index],
                  assetName: homeImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
