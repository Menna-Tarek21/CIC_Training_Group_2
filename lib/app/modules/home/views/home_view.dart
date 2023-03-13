import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
Widget? model(url){ return Padding(
    padding: const EdgeInsets.all(8.0),
  child: Container(height: 100,child: Image.asset(url), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10))),);
}

dynamic list = [
  model("asset/WhatsApp-Image-2023-02-15-at-1.48.45-PM-1024x768.jpeg"),
  model("asset/885682201615729680.webp"), 
  model("asset/Misr_El-Kheir.jpg"),
];
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey[400],
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "To Misr Al Khair",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Image.asset("asset/Iconly-Bulk-Notification.png"),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(10, (index) {
                      return   Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(10)),
                          child: Image.asset("asset/sun.png"),
                        ),
                      );

                    }),
                  ),
                )
                ,
                SizedBox(height: 40,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.from(list),
                  ),
                )
              ],
            ),

          )),
    );
  }
}
