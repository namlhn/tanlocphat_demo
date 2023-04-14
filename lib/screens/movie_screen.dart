import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MoviceScreen extends StatefulWidget {
  const MoviceScreen({Key? key}) : super(key: key);

  @override
  State<MoviceScreen> createState() => _MoviceScreenState();
}

class _MoviceScreenState extends State<MoviceScreen> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'H8yv9VrWEyA',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Trang phim Tam Lộc Phát',
          style: boldTextStyle(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressColors: ProgressBarColors(
              playedColor: Colors.amber,
              handleColor: Colors.amberAccent,
            ),
          ),
          10.height,
          Text(
            'BẦU TRỜI KHÁT VỌNG|TẬP 2',
            style: boldTextStyle(size: 22),
          ).paddingLeft(15),
          20.height,

        ],
      ),
    );
  }
}
