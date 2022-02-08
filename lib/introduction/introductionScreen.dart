import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:task4/home/home.dart';

class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  _introScreenState createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  final List <PageViewModel> pages = [
    PageViewModel(
      title: "first page",
      body: "description",
      footer: ElevatedButton(
        onPressed: (){},
        child: Text("Lets go"),
      ),
      image: Center(
        child: Image.asset('assets/images/page1Image.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          color: Colors.blue,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )
      )
    ),

    PageViewModel(
        title: "Second page",
        body: "Description",
        footer: ElevatedButton(
          onPressed: (){},
          child: Text("Lets go"),
        ),
        image: Center(
          child: Image.asset('assets/images/page1Image.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
        )
    ),

    PageViewModel(
        title: "Third page",
        body: "description",
        footer: ElevatedButton(
          onPressed: (){},
          child: Text("Lets go"),
        ),
        image: Center(
          child: Image.asset('assets/images/page1Image.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
        )
    )

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(" home page"),
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Colors.blue,
          activeColor: Colors.greenAccent,
          activeSize: Size.square(15),
        ),
        showDoneButton: true,
        done: const Text("done"),
        showNextButton: true,
        next: const Text("Next"),
        showSkipButton: true,
        skip: const Text("Skip"),
        onDone: () => onDone(context),

        onSkip: (){

        },
      )

    );
  }

  void onDone(context){
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const HomePage()
        )
    );
  }
}
