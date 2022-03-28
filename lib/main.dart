import 'package:flutter/material.dart';
import 'package:navigasi_belanja/models/item.dart';
import 'package:navigasi_belanja/pages/home.dart';
import 'package:navigasi_belanja/pages/item_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ItemPage.routeName) {
          final args = settings.arguments as Item;
          return MaterialPageRoute(
            builder: (context) {
              return ItemPage(
                name: args.name,
                price: args.price,
                weight: args.weight,
              );
            },
          );
        }
        assert(false, '${settings.name}');
        return null;
      },
    );
  }
}
