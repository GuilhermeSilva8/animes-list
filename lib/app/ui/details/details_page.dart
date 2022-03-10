import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/details_controller.dart';
import '../../data/model/anime_model.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _MyDetailsPageState createState() => _MyDetailsPageState();
}

  class _MyDetailsPageState extends State<DetailsPage> {

  final List<String> items = [
    'Assistido',
    'Assistindo',
    'Quero assistir',
  ];

  @override
  Widget build(BuildContext context) {
    AnimeModel animeInfo = Get.arguments["anime_info"];
    int heroTag = Get.arguments["tag"];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('About'), automaticallyImplyLeading: true,),
      body: GetBuilder<DetailsController>(
          init: DetailsController(),
          builder: (_) {
            return ListView(
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: heroTag,
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.white, Colors.black],
                          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        child: Image.network(
                          animeInfo.img,
                          fit: BoxFit.fitWidth,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(animeInfo.titulo, style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),),
                    // dropdown
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        dropdownDecoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                        items: items
                            .map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                            .toList(),
                        value: animeInfo.estado,
                        onChanged: (newValue) {
                          setState(() {
                            animeInfo.estado = newValue as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                    /*IconButton(
                      onPressed: _.onPressedLikeBtn,
                      icon: GetX<DetailsController>(
                        builder: (_) {
                          return Icon(_.likedAnime ? Icons.favorite : Icons.favorite_border);
                        },
                      ), color: Colors.red,)*/
                  ],
                ),
                Text(animeInfo.diretor, style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 12)),
                const SizedBox(height: 20,),
                Text(
                    animeInfo.sinopse,
                    style: const TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)
                )
              ],
            );
          }),
    );
  }

}