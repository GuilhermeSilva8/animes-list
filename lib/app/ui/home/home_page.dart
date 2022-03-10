import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
import '../../controllers/home_controler.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('My List'), actions: [IconButton(onPressed: controller.onPressed, icon: const Icon(Icons.refresh))]),
      body: GetBuilder<HomeController>(
          builder: (_) {
            return controller.isLoading ? const Center(child: CircularProgressIndicator()) :
            VerticalCardPager(
              initialPage: 1,
              titles: const <String>["","","",""],
              images: controller.images,
              onSelectedItem: controller.onSelectedItem,
            );
          }),
    );
  }
}