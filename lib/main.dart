import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/Item_provider.dart';
import 'package:flutter_application_1/provider/Items_provider.dart';
import 'package:flutter_application_1/drawer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Items(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ItemListScreen(),
      ),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<Items>(context);
    final items = itemsData.items;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 19.0,
        centerTitle: true,
        title: const Row(
          children: [
            Icon(Icons.data_object),
            SizedBox(width: 30),
            Text("List of items"),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 201, 201, 201),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(items[index].imageUrl),
              ),
              title: Text(items[index].name),
              subtitle:
                  Text('Price: \$${items[index].price.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetailScreen(item: items[index]),
                  ),
                );
              },
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  final Item item;

  const ItemDetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(item.imageUrl),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                item.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
