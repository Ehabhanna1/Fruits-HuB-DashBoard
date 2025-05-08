 import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("Add Product"),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
    );
  }