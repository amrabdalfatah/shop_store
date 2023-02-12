import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> electronicsImages = const [
  electronics0,
  electronics1,
  electronics2,
  electronics3,
  electronics4,
  electronics5,
  electronics6,
  electronics7,
  electronics8,
  electronics9,
  electronics10,
  electronics11,
  electronics12,
  electronics13,
];

class ElectronicsCategory extends StatelessWidget {
  const ElectronicsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Electronics'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              electronicsImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'electronics',
                  subCateg: electronics[index],
                  assetName: electronicsImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
