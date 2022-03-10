import 'package:animes_list/app/routes/app_pages.dart';
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.SPLASH,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
  ));
}