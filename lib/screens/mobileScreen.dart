import 'package:flutter/material.dart';
import 'package:mini_projet/widgets/buttonWidget.dart';
import 'package:mini_projet/widgets/etapeWidget.dart';
import 'package:mini_projet/widgets/subTitleWidget.dart';
import 'package:mini_projet/widgets/titleWidget.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20),
              child: TitleWidget(
                titleText: 'Votre Shynleï',
                color: Colors.black,
                titleSize: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: SubTitleWidget(
                subTitleText:
                    '''7 étapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer le sens, 3 interprétation pour vous aider..''',
                color: Color.fromARGB(255, 57, 57, 57),
                subTitleTextSize: 15,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, top: 10),
                child: EtapesWidget(
                  textSize: 12,
                  crossAxisSpacing: 0.3,
                ),
              ),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 40,
                width: MediaQuery.of(context).size.width / 2,
                child: ActionButton(onPressed: () {}),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
