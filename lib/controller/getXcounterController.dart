import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var counterValue = 0.obs;
  addValue(){
    counterValue++;
    update();
    print(counterValue);
  }
  subValue(){
    counterValue--;
    update();
    print(counterValue);
  }
}

