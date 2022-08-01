import 'package:flutter/material.dart';
import 'package:tasbeh/model/colors/colors.dart';

class TasbehScreen extends StatefulWidget {
  const TasbehScreen({Key? key}) : super(key: key);

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

double circle = 0;
int count = 0;

class _TasbehScreenState extends State<TasbehScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.green,
        child: const Icon(Icons.restart_alt),
        onPressed: () {
          setState(() {
            count = 0;
            circle = 0;
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text('Tasbeh'),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/image/background.jpg',
              fit: BoxFit.fitHeight,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
                circle--;
              });
            },
            child: Center(
                child: Stack(
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: AppColor.green,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Transform.rotate(
                        angle: circle,
                        child: Image.asset(
                          'assets/icons/circle.png',
                          color: AppColor.white,
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Center(
                    child: Text(
                  count.toString(),
                  style: const TextStyle(
                      color: AppColor.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w400),
                )),
              ],
            )),
          ),
        ],
      ),
    );}
}
