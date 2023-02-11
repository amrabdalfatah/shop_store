import 'package:flutter/material.dart';
import 'package:shop_store/minor_screens/search_screen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 1.4),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'What are you looking for?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 32,
                    width: 75,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.red,
            indicatorWeight: 3,
            tabs: [
              RepeatedTab(label: 'Men'),
              RepeatedTab(label: 'Women'),
              RepeatedTab(label: 'Shoes'),
              RepeatedTab(label: 'Bags'),
              RepeatedTab(label: 'Electronics'),
              RepeatedTab(label: 'Home & Garden'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Accessories'),
              RepeatedTab(label: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Men Tap')),
            Center(child: Text('Women Tap')),
            Center(child: Text('Shoes Tap')),
            Center(child: Text('Bags Tap')),
            Center(child: Text('Electronics Tap')),
            Center(child: Text('Home & Garden Tap')),
            Center(child: Text('Kids Tap')),
            Center(child: Text('Accessories Tap')),
            Center(child: Text('Beauty Tap')),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
