import 'dart:html';

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  final String url;
  const ImagePage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(url),
    );
  }
}
