import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MosqueScreen extends StatelessWidget {
  const MosqueScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text(
          'Masjidlar'
        ),
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
          GestureDetector(
            onTap: (){
              MapsLauncher.launchCoordinates(
                40.7877289, 72.3407103,);
            },
            child: Container(
              margin: const EdgeInsets.only(left: 16,right: 16,top: 16),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
