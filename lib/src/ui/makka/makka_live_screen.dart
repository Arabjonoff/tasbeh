import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MakkaLiveScreen extends StatelessWidget {
   MakkaLiveScreen({Key? key}) : super(key: key);

    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'fgq7kMgnAG0',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text('Makka live'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/image/background.jpg',
              fit: BoxFit.fitHeight,
              color: Colors.black.withOpacity(0.2),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
            ),
          )
        ],
      ),
    );
  }

}
