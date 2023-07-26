import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/text_input_label.dart';

class VideoFormScreen extends StatefulWidget {
  const VideoFormScreen({super.key});

  @override
  State<VideoFormScreen> createState() => _VideoFormScreenState();
}

class _VideoFormScreenState extends State<VideoFormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Cadastre um video',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: const EdgeInsets.all(28.0),
          child: ListView(
            children: const [
              TextInputLabel(),
            ],
          ),
        ),
      ),
    );
  }
}
