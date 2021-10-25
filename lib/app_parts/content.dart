import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 20,
        ),
        LogoAndTitle(),
        Spacer(
          flex: 1,
        ),
        FlipCardWidget(),
        SizedBox(
          height: 15,
        ),
        ButtonsWidget(),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Image(
          image: AssetImage('assets/images/logo.png'),
        ),
        Text(
          'Go to space with us!',
          style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FlipCardWidgetState();
  }
}

class _FlipCardWidgetState extends State<FlipCardWidget> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.VERTICAL,
      front: const Image(
        height: 250,
        width: 250,
        image: AssetImage('assets/images/ufo.png'),
      ),
      back: Center(
        child: Stack(
          children: const [
            Center(
              child: Image(
                image: AssetImage('assets/images/elipse.png'),
              ),
            ),
            Center(
              child: Image(
                height: 135,
                width: 135,
                image: AssetImage('assets/images/qr_code.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  final textStyle = const TextStyle(
      fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold);

  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedGradientButton(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.6, 0.9],
            colors: <Color>[
              Color(0xFF7FDAD9),
              Color(0xFF20CDCB),
              Color(0xFF20CDCB),
              Color(0xFF7FDAD9),
            ],
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Phone:',
                style: textStyle,
              ),
              Text(
                '+38 099 747 25 94',
                style: textStyle,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        RaisedGradientButton(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.6, 0.9],
            colors: <Color>[
              Color(0xFFF495AC),
              Color(0xFFE34C71),
              Color(0xFFE34C71),
              Color(0xFFF495AC),
            ],
          ),
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Email:',
                style: textStyle,
              ),
              Text(
                'miroshnikov@gmail.com',
                style: textStyle,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), gradient: gradient),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed(),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
