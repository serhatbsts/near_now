import 'package:flutter/material.dart';

import 'ProductServiceDetailScreen.dart';

class ProductServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Ürün veya hizmet sayısını dinamik olarak ayarlayabilirsiniz
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Product/Service $index'),
          subtitle: Text('Description of Product/Service $index'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductServiceDetailScreen(index: index),
              ),
            );
          },
        );
      },
    );
  }
}
