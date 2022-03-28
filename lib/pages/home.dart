import 'package:flutter/material.dart';
import 'package:navigasi_belanja/widgets/listview.dart';
import 'package:navigasi_belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', price: 12000, weight: 10),
    Item(name: 'Salt', price: 5000, weight: 5),
    Item(name: 'flour', price: 10000, weight: 10),
    Item(name: 'cheese', price: 20000, weight: 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Shopping List Novita"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyListView(
            items: items,
            page: '/item',
          ),
        ));
  }
}