import 'package:animes_list/app/data/model/anime_model.dart';
import 'package:animes_list/app/data/repository/anime_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';

class HomeController extends GetxController {

  final AnimeRepository? animeRepository;
  bool isLoading = true;


  HomeController({@required this.animeRepository}) : assert(animeRepository != null);

  List<AnimeModel> animeList = [];
  List<Widget> images = [];
  
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() {
    animeRepository?.getAll().then((value) {
      animeList = value;
      fillAnimeInfo(animeList);
      isLoading = false;
      update();
    });
  }

  void fillAnimeInfo(List<AnimeModel> animeList) {
    int i = 1;
    for(AnimeModel anime in animeList){
      images.add(
        Hero(
            tag: i,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.network(
                anime.img,
                fit: BoxFit.cover,
              ),
            ),
        ),);
      i++;
    }
  }
  

  void onSelectedItem(int index) {
    Get.toNamed(Routes.DETAILS, arguments: {"anime_info":animeList[index], "tag":index+1});
  }

  void onPressed() {
    isLoading = true;
    images = [];
    update();
    fetchData();
  }
}