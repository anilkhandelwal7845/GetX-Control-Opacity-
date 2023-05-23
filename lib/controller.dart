
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OpacityController extends GetxController{

  final opacity = .4.obs;

  setOpacity (value){

    opacity.value = value;

  }

}
