import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (_) {
          return Stack(
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1200),
                opacity: _.visibleStrip ? 1.0 : 0.0,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                      Icon(Icons.animation,
                          size: _.findIconSize(), color: Colors.white),
                    ],
                  ),
                ),
              ),
              AnimatedContainer(
                onEnd: _.onEnd,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 1300),
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: _.animatedMargin),
                child: SizedBox(
                  width: _.findLogoSize(),
                  height: _.findLogoSize(),
                  child: Card(
                    color: Colors.white,
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Image.asset(
                        'assets/myanimelist.png',
                        alignment: Alignment.center,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}