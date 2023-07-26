import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/text_input_label.dart';
import 'package:mob_flix/widgets/video_preview.dart';

class VideoFormScreen extends StatefulWidget {
  const VideoFormScreen({super.key});

  @override
  State<VideoFormScreen> createState() => _VideoFormScreenState();
}

class _VideoFormScreenState extends State<VideoFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();

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
            children: [
              TextInputLabel(
                label: 'URL:',
                hintText: 'https://www.youtube.com/watch?...',
                keyboardType: TextInputType.url,
                controller: _urlController,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              const SizedBox(height: 30),
              TextInputLabel(
                label: 'Categoria:',
                hintText: 'Ação, Comédia, Drama, Terror...',
                keyboardType: TextInputType.text,
                controller: _categoryController,
              ),
              const SizedBox(height: 40),
              VideoPreview(
                url: _urlController.text,
              ),
              const SizedBox(height: 45),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text('Cadastrar', style: TextStyle(fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
