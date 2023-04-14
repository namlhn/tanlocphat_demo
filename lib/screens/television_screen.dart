import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TelevisionScreen extends StatefulWidget {
  const TelevisionScreen({Key? key}) : super(key: key);

  @override
  State<TelevisionScreen> createState() => _TelevisionScreenState();
}

class _TelevisionScreenState extends State<TelevisionScreen> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'KuL6Rbz4wsM',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
      isLive: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          'Truyền hình Tam Lộc Phát',
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
            'Truyền hình Trực tiếp tiệc tất niên " TÂM LỘC PHÁT - XUÂN GẮN KẾT, TẾT YÊU THƯƠNG',
            style: boldTextStyle(size: 18),
          ).paddingLeft(5),
          20.height,

        ],
      ),
    );
  }
}
