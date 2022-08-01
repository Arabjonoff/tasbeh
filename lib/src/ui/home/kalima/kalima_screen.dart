import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:tasbeh/model/kalima/kalima.dart';

class KalimaScreen extends StatelessWidget {
  const KalimaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text('Kalima'),
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
            itemCount: KalimaData.kalima.length,
              itemBuilder: (context,index){
            return Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.white
              ),
              child: Column(
                children: [
                  Text(KalimaData.kalima[index]['arabic'],style: const TextStyle(fontSize: 20,color: AppColor.green),textAlign: TextAlign.end,),
                  const SizedBox(height: 10,),
                  Text(KalimaData.kalima[index]['read'],style: const TextStyle(fontSize: 18),),
                ],
              ),
            );
          })
        ],
      ),
    );
  }
}
