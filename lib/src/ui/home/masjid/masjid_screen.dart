import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:tasbeh/model/mosque/mosque.dart';

class MosqueScreen extends StatelessWidget {
  const MosqueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text('Masjidlar'),
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
          ListView.builder(
            itemCount: MosqueData.mosques.length,
            itemBuilder: (context, index) {
              List data = MosqueData.mosques;
              return GestureDetector(
                onTap: () {
                  MapsLauncher.launchCoordinates(
                    data[index]['lat'],
                    data[index]['long'],
                  );
                },
                child: Stack(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 16, right: 16, top: 16),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              imageUrl:data[index]['image'],fit: BoxFit.cover,))
                    ),
                    Positioned(
                      bottom: 0,
                        left: 16,
                        right: 16,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                color: AppColor.white,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
                            child: Text(data[index]['name'],style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))),
                  ],
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
