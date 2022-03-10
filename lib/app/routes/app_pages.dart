import 'package:animes_list/app/bindings/home_binding.dart';
import 'package:get/get.dart';
import '../ui/details/details_page.dart';
import '../ui/home/home_page.dart';
import '../ui/splash/splash_page.dart';
part 'app_routes.dart';

abstract class AppPages{
  
  static final pages = [
    GetPage(name: Routes.SPLASH, page: ()=> SplashPage()),
    GetPage(name: Routes.HOME, page: ()=>HomePage(), binding: HomeBinding()),
    GetPage(name: Routes.DETAILS, page: ()=>DetailsPage()),
  ];
}