import 'package:flutter/material.dart';
// Impor drawer yang sudah dibuat sebelumnya
import 'package:inventori/widgets/left_drawer.dart';

List<Item> listItem = [];

class ShowItemPage extends StatefulWidget {
  const ShowItemPage({super.key});

  @override
  State<ShowItemPage> createState() => _ShowItemState();
}

class _ShowItemState extends State<ShowItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Show Item',
            ),
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        // Tambahkan drawer yang sudah dibuat di sini
        drawer: const LeftDrawer(),
        body: ListView.builder(
            itemCount: listItem.length,
            itemBuilder: (context, index) => Card(
                    child: ListTile(
                  title: Text('Name: ${listItem[index].name}'),
                  subtitle: Text('Amount: ${listItem[index].amount}'),
                  trailing: Text('Description: ${listItem[index].description}'),
                ))));
  }
}

class Item {
  String name;
  int amount;
  String description;

  Item({required this.name, required this.amount, required this.description});
}
