import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;

  const DetailPage({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Column(
        children: [
          Text(name),
          Text(type, style: TextStyle(fontSize: 12),)
        ],
      ), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: type == 'Fire'
                      ? Colors.red[100]
                      : type == 'Water'
                      ? Colors.blue[100]
                      : type == 'Grass'
                      ? Colors.green[100]
                      : Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Image.network(
                      imageUrl,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 5),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
