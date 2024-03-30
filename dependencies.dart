import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cached Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cached Image Example'),
        ),
        body: Center(
          child: CachedNetworkImage(
            imageUrl: 'https://example.com/image.jpg', // Your image URL here
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
