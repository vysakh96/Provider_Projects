import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/provider_class.dart';
import 'cart_page.dart';

class GroceriesList extends StatelessWidget {
  const GroceriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      'Milk',
      'Butter',
      'Salt',
      'Pepper',
      'Sugar',
      'Vanilla',
      'Cookies',
      'Chips',
      'Nuts',
      'Soap',
      'Cleaner',
      'Shampoo',
      'Toothpaste'
    ];
    final object = Provider.of<ProviderPage>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartPage()));
        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        title: Text(
          'Grocery Items',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            trailing: Checkbox(
              checkColor: Colors.white,
              activeColor: Colors.blue,
              value: object.check(items[index]),
              onChanged: (bool? value) {
                object.favorites(items[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
