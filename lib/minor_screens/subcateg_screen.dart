import 'package:flutter/material.dart';

class SubCategScreen extends StatelessWidget {
  final String maincategName;
  final String subcategName;
  const SubCategScreen({
    Key? key,
    required this.subcategName,
    required this.maincategName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          subcategName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(maincategName),
      ),
    );
  }
}
