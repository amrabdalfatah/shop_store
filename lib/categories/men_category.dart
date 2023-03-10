import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

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
        const CategHeader(categHeader: 'Men'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              menImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'men',
                  subCateg: men[index],
                  assetName: menImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
