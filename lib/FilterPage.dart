import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String? _selectedCity;
  String? _selectedCategory;

  final List<String> _cities = ['İstanbul', 'Ankara', 'İzmir', 'Bursa', 'Antalya'];
  final List<String> _categories = ['Restorant', 'Berber', 'Kuaför', 'Cafe'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Şehir Seç'),
              value: _selectedCity,
              items: _cities.map((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCity = value;
                });
              },
              validator: (value) => value == null ? 'Lütfen bir şehir seçin' : null,
            ),
            SizedBox(height: 20.0),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Kategori Seç'),
              value: _selectedCategory,
              items: _categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value;
                });
              },
              validator: (value) => value == null ? 'Lütfen bir kategori seçin' : null,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_selectedCity != null && _selectedCategory != null) {
                  // Filtre uygulama işlemleri
                  Navigator.pop(context); // Kullanıcıyı geri yönlendirme
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Lütfen şehir ve kategori seçin'),
                  ));
                }
              },
              child: Text('Uygula'),
            ),
          ],
        ),
      ),
    );
  }
}
