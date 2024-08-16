import 'package:flutter/material.dart';

class ProductServiceDetailScreen extends StatefulWidget {
  final int index;

  ProductServiceDetailScreen({required this.index});

  @override
  _ProductServiceDetailScreenState createState() => _ProductServiceDetailScreenState();
}

class _ProductServiceDetailScreenState extends State<ProductServiceDetailScreen> {
  final List<String> _comments = [];
  final TextEditingController _commentController = TextEditingController();

  void _addComment() {
    final comment = _commentController.text;
    if (comment.isNotEmpty) {
      setState(() {
        _comments.add(comment);
        _commentController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product/Service ${widget.index}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Product/Service ${widget.index}',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 16.0),
            Text(
              'Description of Product/Service ${widget.index}',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Reviews:',
              style: Theme.of(context).textTheme.headline6,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _comments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_comments[index]),
                  );
                },
              ),
            ),
            TextField(
              controller: _commentController,
              decoration: InputDecoration(
                labelText: 'Add a comment',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: _addComment,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
