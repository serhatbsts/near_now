import 'package:flutter/material.dart';
class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Center(
        child: Column(
          children: [
            // Filtreleme seçeneklerini buraya ekleyin
            Text('Filter Options'),
          ],
        ),
      ),
    );
  }
}
