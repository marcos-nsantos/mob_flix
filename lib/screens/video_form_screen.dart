import 'package:flutter/material.dart';
import 'package:mob_flix/widgets/dropdown_form_button.dart';
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(28.0),
          child: Column(
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
              const DropdownFormButton(
                label: 'Categoria:',
              ),
              const SizedBox(height: 40),
              VideoPreview(
                url: _urlController.text,
              ),
              const SizedBox(height: 45),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
