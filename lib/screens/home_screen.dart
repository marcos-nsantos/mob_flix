import 'package:flutter/material.dart';
import 'package:mob_flix/screens/video_form.dart';
import 'package:mob_flix/widgets/card_title.dart';
import 'package:mob_flix/widgets/category_list.dart';
import 'package:mob_flix/widgets/highlight.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MOBFLIX'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                Highlight(),
                SizedBox(height: 30.0),
                CategoryList(),
                SizedBox(height: 30.0),
                CardTitle(
                  title: 'assets/images/the-mandalorian.jpg',
                ),
                CardTitle(
                  title: 'assets/images/invincible.jpg',
                ),
                CardTitle(
                  title: 'assets/images/the-mandalorian.jpg',
                ),
                CardTitle(
                  title: 'assets/images/invincible.jpg',
                ),
                SizedBox(height: 70.0),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const VideoForm();
          }));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
