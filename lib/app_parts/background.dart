import 'package:flutter/material.dart';

class BackgroundStack extends StatelessWidget {
  const BackgroundStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          image: const AssetImage('assets/images/bg_big.png'),
        ),
        Image(
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          image: const AssetImage('assets/images/bg_top.png'),
        ),
        Positioned(
          bottom: 0,
          child: Image(
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            image: const AssetImage('assets/images/bg_bot.png'),
          ),
        ),
        const Positioned(
          right: 60,
          top: 150,
          child: Image(
            image: AssetImage('assets/images/planet_top.png'),
          ),
        ),
        const Positioned(
          left: 27,
          bottom: 200,
          child: Image(
            image: AssetImage('assets/images/planet_middle.png'),
          ),
        ),
        const Positioned(
          right: 20,
          bottom: 84,
          child: Image(
            image: AssetImage('assets/images/planet_bot_shadow.png'),
          ),
        ),
        const Positioned(
          right: 25,
          bottom: 90,
          child: Image(
            image: AssetImage('assets/images/planet_bot.png'),
          ),
        ),
      ],
    );
  }
}
