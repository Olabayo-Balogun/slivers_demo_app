import 'package:flutter/material.dart';
import 'shopping_item.dart';

class ShoppingList extends StatelessWidget {
  final List<ShoppingItem> items;

  const ShoppingList({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Shopping List'),
            background: Image.network(
              'https://cdn.pixabay.com/photo/2020/07/24/09/49/books-5433432_1280.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              var item = items[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(item.image),
                ),
                title: Text(item.name),
                subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                onTap: () {},
              );
            },
            childCount: items.length,
          ),
        ),
      ]),
    );
  }
}
