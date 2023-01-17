import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider_page.dart';
import 'cart_page.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List img = [
      'images/apple-fruit.jpg',
      'images/banana.jpg',
      'images/grape.jpg',
      'images/kiwi.jpg',
      'images/mango.jpg',
      'images/orange.jpg',
      'images/papaya.jpg',
      'images/pineapple.jpg',
      'images/strawberry.jpg',
      'images/Dragon-Fruit.jpg',
      'images/chiku.jpg'
    ];
    List name = [
      'Apple',
      'Banana',
      'Grape',
      'Kiwi',
      'Mango',
      'Orange',
      'Papaya',
      'Pineapple',
      'Strawberry',
      'Dragon Fruit',
      'Chikoo'
    ];
    final object = Provider.of<Provider_class>(context);
    return Scaffold(
      backgroundColor: Colors.grey[700],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart_store()));
        },
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(
          'F R U I T S',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(img[index]),
                ),
                title: Text(
                  name[index],
                  style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                ),
                trailing: IconButton(
                  onPressed: () {
                    object.favorites(name[index], img[index]);
                  },
                  icon: object.icn_change(name[index])
                      ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: Colors.blue,
                        ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
