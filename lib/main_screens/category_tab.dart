import 'package:flutter/material.dart';
import 'package:shop_store/widgets/fake_search.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
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
              for (var element in items) {
                element.isSelected = false;
              }
              setState(() {
                items[index].isSelected = true;
              });
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
