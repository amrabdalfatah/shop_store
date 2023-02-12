import 'package:flutter/material.dart';
import 'package:shop_store/utils/categ_list.dart';
import 'package:shop_store/utils/images_strings.dart';
import 'package:shop_store/widgets/categ_widgets.dart';

List<String> accessoriesImages = const [
  accessories0,
  accessories1,
  accessories2,
  accessories3,
  accessories4,
  accessories5,
  accessories6,
  accessories7,
  accessories8,
  accessories9,
  accessories10,
];

class AccessoriesCategory extends StatelessWidget {
  const AccessoriesCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategHeader(categHeader: 'Accessories'),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: List.generate(
              accessoriesImages.length,
              (index) {
                return CategContent(
                  mainCateg: 'accessories',
                  subCateg: accessories[index],
                  assetName: accessoriesImages[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
