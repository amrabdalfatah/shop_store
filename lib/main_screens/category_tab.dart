import 'package:flutter/material.dart';
import 'package:shop_store/categories/accessories_category.dart';
import 'package:shop_store/categories/bags_category.dart';
import 'package:shop_store/categories/beauty_category.dart';
import 'package:shop_store/categories/electronics_category.dart';
import 'package:shop_store/categories/home_category.dart';
import 'package:shop_store/categories/kids_category.dart';
import 'package:shop_store/categories/men_category.dart';
import 'package:shop_store/categories/shoes_category.dart';
import 'package:shop_store/categories/women_category.dart';
import 'package:shop_store/widgets/fake_search.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: _buildSideNav(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: _buildCategView(size),
          ),
        ],
      ),
    );
  }

  Widget _buildSideNav(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.width * 0.2,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _pageController.jumpToPage(index);
            },
            child: Container(
              height: size.height * 0.15,
              color:
                  items[index].isSelected ? Colors.white : Colors.grey.shade300,
              child: Center(
                child: Text(
                  items[index].label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        onPageChanged: (value) {
          for (var element in items) {
            element.isSelected = false;
          }
          setState(() {
            items[value].isSelected = true;
          });
        },
        children: const [
          MenCategory(),
          WomenCategory(),
          ElectronicsCategory(),
          AccessoriesCategory(),
          ShoesCategory(),
          HomeCategory(),
          BeautyCategory(),
          KidsCategory(),
          BagsCategory(),
        ],
      ),
    );
  }
}

List<ItemCateg> items = [
  ItemCateg(label: 'men'),
  ItemCateg(label: 'women'),
  ItemCateg(label: 'electronics'),
  ItemCateg(label: 'accessories'),
  ItemCateg(label: 'shoes'),
  ItemCateg(label: 'home & garden'),
  ItemCateg(label: 'beauty'),
  ItemCateg(label: 'kids'),
  ItemCateg(label: 'bags'),
];

class ItemCateg {
  final String label;
  bool isSelected;

  ItemCateg({required this.label, this.isSelected = false});
}
