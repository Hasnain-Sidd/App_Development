import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Item List',
      home: ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ItemListScreenState();
  }
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<Map<String, dynamic>> items = [
    {'Name': 'Item 1', 'Quantity': 10, 'Price': 5.0},
    {'Name': 'Item 2', 'Quantity': 8, 'Price': 3.5},
    {'Name': 'Item 3', 'Quantity': 15, 'Price': 7.0},
    {'Name': 'Item 4', 'Quantity': 5, 'Price': 2.0},
    {'Name': 'Item 5', 'Quantity': 20, 'Price': 9.0},
  ];

  void _addItem() {
    setState(() {
      items.add({
        'Name': 'Item  6',
        'Quantity': 1,
        'Price': 1.0,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['Name']),
            subtitle: Text(
                'Quantity: ${items[index]['Quantity']} | Price: \$${items[index]['Price']}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(item: items[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemDetailScreen extends StatelessWidget {
  final Map<String, dynamic> item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${item['Name']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Quantity: ${item['Quantity']}',
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Price: \$${item['Price']}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
