import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:tasbeh/model/name/name_model.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  PageController? controller;
  int currentIndex = 0;

  @override
  initState() {
    super.initState();
    controller = PageController(
      initialPage: currentIndex,
      keepPage: false,
      viewportFraction: 1,
    );
  }

  @override
  dispose() {
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Allohni 99 ismi'),
        backgroundColor: AppColor.green,
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
            child: PageView.builder(
              controller: controller,
              itemCount: NameData.names.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return AnimatedBuilder(animation: controller!, builder: (context,child){
                  double value = 1.0;
                  if (controller!.position.haveDimensions) {
                    value = controller!.page! - index;
                    value = 1 - (value.abs() * .5).clamp(0.0, 0.6);
                  }
                  return Center(
                    child: SizedBox(
                      height: Curves.easeOutSine.transform(value) * 470,
                      width: Curves.easeOutSine.transform(value) * 320,
                      child: child,
                    ),
                  );
                },
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top:10,
                            child: Image.asset('assets/icons/pattern1.png',width: 34,color: AppColor.green,),),
                          Positioned(
                            top:10,
                            right: 0,
                            child: Image.asset('assets/icons/pattern1.png',width: 34,color: AppColor.green,),),
                          Positioned(
                            bottom:10,
                            child: Image.asset('assets/icons/pattern1.png',width: 34,color: AppColor.green,),),
                          Positioned(
                            bottom:10,
                            right: 0,
                            child: Image.asset('assets/icons/pattern1.png',width: 34,color: AppColor.green,),),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(NameData.names[index]['arabic'],style: const TextStyle(fontSize: 50,color: AppColor.green),),
                                const SizedBox(height: 5,),
                                Text(NameData.names[index]['read'],style: const TextStyle(fontSize: 30,),),
                                const SizedBox(height: 5,),
                                Text(NameData.names[index]['meaning'],style: const TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                );
              },),
          ),
        ],
      ),
    );
  }
}
