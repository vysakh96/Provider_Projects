import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:provider_task_4/provider/provider_class.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final object = Provider.of<Provider_class>(context);
    List icnStore = object.getIcn;
    List colorStore = object.getColor;
    List nameStore = object.getName;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('WISHLIST',style: TextStyle(fontWeight: FontWeight.w900),),

    ),
      body: ListView.builder(
          itemCount: icnStore.length,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: colorStore[index],
                    child: Icon(
                      icnStore[index],
                      color: Colors.white,
                    ),
                  ),
                  title: Text(nameStore[index],
                      style: GoogleFonts.cabin(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black)),
                  trailing: GestureDetector(onTap: (){
                    object.cartItems(icnStore[index],colorStore[index],nameStore[index]);
                  },
                    child:object.icn_change(nameStore[index])?
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
