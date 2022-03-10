import 'package:get/get.dart';

class DetailsController extends GetxController {

  final _likedAnime = false.obs;
  get likedAnime => _likedAnime.value;
  set likedAnime(value) => _likedAnime.value = value;

  void onPressedLikeBtn() {
    likedAnime = !likedAnime;
  }
}