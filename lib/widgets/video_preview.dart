import 'package:flutter/material.dart';

class VideoPreview extends StatefulWidget {
  final String? url;
  const VideoPreview({super.key, this.url});

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  String getYouTubeThumbnail(String? url) {
    print(url);
    if (url == null) {
      return '';
    }

    final regExp = RegExp(
        r'^(?:https?:\/\/)?(?:www\.)?(?:youtube\.com\/watch\?v=|youtu\.be\/)([\w-]+)(?:\S+)?$');
    final match = regExp.firstMatch(url);
    if (match != null && match.groupCount >= 1) {
      final videoId = match.group(1);
      return 'https://img.youtube.com/vi/$videoId/0.jpg';
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'Preview',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
            child: Image.network(
              getYouTubeThumbnail(widget.url),
              errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return const Center(
                  child: Icon(
                    Icons.video_collection_rounded,
                    size: 100,
                    color: Colors.white,
                  ),
                );
              },
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
