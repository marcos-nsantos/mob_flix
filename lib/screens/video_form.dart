import 'package:flutter/material.dart';

class VideoForm extends StatefulWidget {
  const VideoForm({super.key});

  @override
  State<VideoForm> createState() => _VideoFormState();
}

class _VideoFormState extends State<VideoForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastre um video'),
      ),
    );
  }
}
