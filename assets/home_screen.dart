import 'package:flutter/material.dart';
import 'package:android/imageconst/image_const.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List items = [
    {
      'title': 'Shop the latest laptop trends',
      'image': laptop,
      'background': const Color.fromARGB(179, 142, 30, 30),
    },
    {
      'title': 'Discover new smartphones',
      'image': phone,
      'background': const Color.fromARGB(255, 140, 98, 212),
    },
    {
      'title': 'Upgrade to high-performance laptops',
      'image': laptop,
      'background': const Color.fromARGB(255, 73, 38, 133),
    },
    // Add more items here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Hs Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  hintText: 'Search',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Container(
                  height: 200,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: item['background'],
                  ),
                  child: Center(
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(20),
                      title: Text(
                        item['title'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 230, 230, 230),
                        ),
                      ),
                      trailing: Image.asset(
                        item['image'],
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
