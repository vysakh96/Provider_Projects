import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task_4/provider/provider_class.dart';

import 'designs/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context)=> Provider_class(),
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Home(),),
    ) ,
    );
}
