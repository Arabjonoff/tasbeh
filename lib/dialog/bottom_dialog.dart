import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:tasbeh/model/colors/colors.dart';

class BottomDilaog {
   static void musicDialog(BuildContext context) {
    final player = AudioPlayer();
    Duration duration = Duration.zero;
    Duration position = Duration.zero;
    bool isPlaying = false;
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Text('Allohni 99 ismi'),
              SizedBox(height: 22,),
              Slider(
                activeColor: AppColor.green,
                thumbColor:AppColor.green,
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('data'),
                    Text('data'),
                  ],
                ),
              ),
              CircleAvatar(
                backgroundColor: AppColor.green,
                radius: 35,
                child: IconButton(
                  color: AppColor.white,
                  icon: isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
                  onPressed: ()async {
                    await player.setUrl(
                        'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3');
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
