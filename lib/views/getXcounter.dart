import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/getXcounterController.dart';


class NewView extends StatelessWidget {
  NewView({super.key});

  HomeController homeController = Get.put(HomeController());
  // addValue(){

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (a) {
        return Center(child: Text('${homeController.counterValue}'));
      }),
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              homeController.addValue();
            },
            child: Icon(Icons.add),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: () {
                homeController.subValue();
              },
              child: Icon(Icons.minimize),
            ),
          ),
        ],
      ),
    );
  }
}
