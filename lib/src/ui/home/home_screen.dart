import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'package:tasbeh/model/colors/colors.dart';
import 'package:tasbeh/src/ui/home/kalima/kalima_screen.dart';
import 'package:tasbeh/src/ui/home/makka/makka_live_screen.dart';
import 'package:tasbeh/src/ui/home/masjid/masjid_screen.dart';
import 'package:tasbeh/src/ui/home/tasbeh/tasbeh_screen.dart';

import 'name/name_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: AppColor.green,
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
          ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child:DigitalClock(
                  is24HourTimeFormat: true,
                  showSecondsDigit: true,
                  areaWidth: MediaQuery.of(context).size.width,
                  areaHeight: 100,
                  areaAligment: AlignmentDirectional.center,
                  areaDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.green,
                  ),
                  hourMinuteDigitDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                  secondDigitDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const TasbehScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              'assets/icons/ramadan1.png',
                              width: 100,
                            ),
                            const Spacer(),
                            const Text(
                              'Tasbeh',
                              style: TextStyle(
                                  fontSize: 18, color: AppColor.green),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return NameScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              'assets/icons/name.png',
                              width: 100,
                            ),
                            const Spacer(),
                            const Text(
                              'Allohni 99 ismi',
                              style: TextStyle(
                                  fontSize: 18, color: AppColor.green),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return KalimaScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              'assets/icons/ramadan2.png',
                              width: 100,
                            ),
                            const Spacer(),
                            const Text(
                              'Kalima',
                              style: TextStyle(
                                  fontSize: 18, color: AppColor.green),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MakkaLiveScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColor.white,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              'assets/icons/kaaba.png',
                              width: 100,
                            ),
                            const Spacer(),
                            const Text(
                              'Makka online',
                              style: TextStyle(
                                  fontSize: 18, color: AppColor.green),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MosqueScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.2,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Image.asset(
                            'assets/icons/masjid.png',
                            width: 100,
                          ),
                          const Spacer(),
                          const Text(
                            'Masjidlar',
                            style:
                                TextStyle(fontSize: 18, color: AppColor.green),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
