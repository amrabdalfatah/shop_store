import 'package:flutter/material.dart';
import 'package:shop_store/widgets/appbar_widgets.dart';

class StoresTab extends StatelessWidget {
  const StoresTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarTitle(
          title: 'Stores',
        ),
      ),
    );
  }
}
