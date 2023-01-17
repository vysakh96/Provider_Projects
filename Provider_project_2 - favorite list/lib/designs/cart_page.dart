import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider_page.dart';

class Cart_store extends StatelessWidget {
  const Cart_store({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List imgStore = object.favoriteImg;
    List nameStore = object.favoriteName;
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          'Wishlist',
          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView.builder(
        itemCount: imgStore.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imgStore[index]),
                ),
                title: Text(
                  nameStore[index],
                  style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                ),
                trailing: IconButton(
                  onPressed: () {
                    object.favorites(nameStore[index], imgStore[index]);
                  },
                  icon: object.icn_change(nameStore[index])
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
