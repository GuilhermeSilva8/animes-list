import 'package:animes_list/app/controllers/home_controler.dart';
import 'package:animes_list/app/data/providers/api.dart';
import 'package:animes_list/app/data/repository/anime_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController(animeRepository: AnimeRepository(apiClient: AnimeApiClient(httpClient: http.Client()))));
  }

}