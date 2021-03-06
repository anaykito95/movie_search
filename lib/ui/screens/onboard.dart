import 'package:movie_search/ui/widgets/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'home_screen.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pages = [
      PageViewModel(
        title: "",
//        body: "",
        bodyWidget: Center(
            child: Image.asset(
          'assets/images/o_1.webp',
          fit: BoxFit.fill,
          width: double.infinity,
        )),
        footer: Text(
          'DESCUBRE',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          contentPadding: const EdgeInsets.all(0),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      PageViewModel(
        title: "",
//        body: "",
        bodyWidget: Center(
            child: Image.asset(
          'assets/images/o_2.webp',
          fit: BoxFit.fill,
          width: double.infinity,
        )),
        footer: Text(
          'COMPARTE',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          contentPadding: const EdgeInsets.all(0),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
      PageViewModel(
        title: "",
//        body: "",
        bodyWidget: Center(
            child: Image.asset(
          'assets/images/o_3.webp',
          fit: BoxFit.fill,
          width: double.infinity,
        )),
        footer: Text(
          'COLECCIONA',
          style: Theme.of(context)
              .textTheme
              .display1
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.orange),
          contentPadding: const EdgeInsets.all(0),
          bodyTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
        ),
      ),
    ];
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () => navigateToHome(context),
        onSkip: () => navigateToHome(context),
        showSkipButton: true,
        skip: Text(
          'OMITIR',
          style:
              Theme.of(context).textTheme.title.copyWith(color: Colors.white70),
        ),
        next: const Icon(
          Icons.navigate_next,
          color: Colors.white70,
        ),
        done: Text("HECHO",
            style: Theme.of(context)
                .textTheme
                .title
                .copyWith(color: Colors.white70)),
        globalBackgroundColor: HexColor('#0A0A0A'),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Theme.of(context).primaryColor,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }

  void navigateToHome(BuildContext context) {
    print('Dandeline');
//    appAuth.setWasHereBefore();
    Navigator.pushAndRemoveUntil(
        context,
        new MaterialPageRoute(builder: (context) => ImbdScreen()),
        ModalRoute.withName('/home'));
  }
}
