import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider_task_4/provider/provider_class.dart';

import '../model_class.dart';
import 'cart.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List items = [
      Item(
          icn: Icons.car_rental, itemColor: Colors.red, itemName: 'Car Rentel'),
      Item(
          icn: Icons.directions_bike,
          itemColor: Colors.deepOrange,
          itemName: 'Bike Rental'),
      Item(
          icn: Icons.shopping_bag,
          itemColor: Colors.lightBlueAccent,
          itemName: 'Travel Bags'),
      Item(
          icn: Icons.shopping_basket,
          itemColor: Colors.amber,
          itemName: 'Basket'),
      Item(
          icn: Icons.bus_alert_rounded,
          itemColor: Colors.lightGreen,
          itemName: 'Bus Booking'),
      Item(
          icn: Icons.computer,
          itemColor: Colors.pink,
          itemName: 'Computer Rental'),
      Item(
          icn: Icons.flight,
          itemColor: Colors.black54,
          itemName: 'Flight Tickets'),
      Item(
          icn: Icons.taxi_alert,
          itemColor: Colors.purple,
          itemName: 'Taxy Booking'),
      Item(icn: Icons.chair, itemColor: Colors.yellow, itemName: 'Movie Tickes')
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Cart()));
      },
      label: Text('Cart'),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('HOME',style: TextStyle(fontWeight: FontWeight.w900),),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: items[index].itemColor,
                    child: Icon(
                      items[index].icn,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(items[index].itemName,
                      style: GoogleFonts.cabin(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  trailing: GestureDetector(onTap: (){
                    object.cartItems(items[index].icn,items[index].itemColor,items[index].itemName);
                  },
                    child:object.icn_change(items[index].itemName)?
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                        : Icon(
                      Icons.favorite_border,color: Colors.blue,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
