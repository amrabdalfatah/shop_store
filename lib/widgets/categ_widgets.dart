import 'package:flutter/material.dart';
import 'package:shop_store/minor_screens/subcateg_screen.dart';

class CategHeader extends StatelessWidget {
  final String categHeader;
  const CategHeader({
    Key? key,
    required this.categHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      categHeader,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CategContent extends StatelessWidget {
  final String mainCateg;
  final String subCateg;
  final String assetName;
  const CategContent({
    Key? key,
    required this.mainCateg,
    required this.subCateg,
    required this.assetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return SubCategScreen(
              subcategName: subCateg,
              maincategName: mainCateg,
            );
          }),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(assetName),
          ),
          Text(
            subCateg,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
