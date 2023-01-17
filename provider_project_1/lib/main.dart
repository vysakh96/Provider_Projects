import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'designs/home_page.dart';
import 'provider/provider_class.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProviderPage(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.brown),
        debugShowCheckedModeBanner: false,
        home: GroceriesList(),
      ),
    ),
  );
}
