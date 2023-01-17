import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'designs/home_page.dart';
import 'provider/provider_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Provider_class(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const ItemList(),
      )));
}
