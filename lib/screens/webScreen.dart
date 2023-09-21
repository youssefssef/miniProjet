// ignore_for_file: use_full_hex_values_for_flutter_colors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:mini_projet/widgets/buttonWidget.dart';
import 'package:mini_projet/widgets/subTitleWidget.dart';
import 'package:mini_projet/widgets/titleWidget.dart';

import '../widgets/etapeWidget.dart';

class WebScreen extends StatelessWidget {
  WebScreen({Key? key}) : super(key: key);

  final List<String> fieldsName = ['Nom et prénom :', 'Mon intention :'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            color: const Color(0xffff80b1b7),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0),
                    child: Image.asset(
                      'assets/images/Image 2.png',
                      scale: 1.4,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0, left: 102),
                    child: TitleWidget(
                      titleText: 'Pour commencer...',
                      color: Colors.white,
                      titleSize: 24,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 102, top: 20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: const SubTitleWidget(
                        subTitleText:
                            '''Faire votre Shynleï, jouer avec, c'est l'occasion d'écouter vos rêves, de les partager et de prendre confiance dans votre richesse.''',
                        color: Colors.white,
                        subTitleTextSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.75,
                    child: ListView.builder(
                        itemCount: fieldsName.length,
                        itemBuilder: (context, index) {
                          bool isLastItem = index == fieldsName.length - 1;
                          return Padding(
                            padding: const EdgeInsets.only(left: 102.0, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fieldsName[index],
                                  style: const TextStyle(color: Colors.white, fontSize: 20),
                                ),
                                if (isLastItem)
                                  const Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      "L'intention, l'objectif de ce Shynlei",
                                      style: TextStyle(color: Color.fromARGB(255, 229, 225, 225), fontSize: 12),
                                    ),
                                  ),
                                Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width / 3,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white, fontSize: 20),
                                    decoration: InputDecoration(
                                      hintText: fieldsName[index],
                                      hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
                                      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 2.3)),
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color.fromARGB(
                                              255,
                                              219,
                                              217,
                                              217,
                                            ),
                                            width: 2.3),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 80, top: 10),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          size: 40,
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 60.0, left: 100),
                  child: TitleWidget(
                    titleText: "Votre Shynleï c'est..",
                    color: Colors.black,
                    titleSize: 24,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100, top: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const SubTitleWidget(
                      subTitleText:
                          '''7 étapes, 2 fiches pour prendre note des rencontres, 1 page pour éclairer le sens, 3 interprétations pour vous aider..''',
                      color: Color.fromARGB(255, 57, 57, 57),
                      subTitleTextSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 110, top: 30),
                    child: EtapesWidget(textSize: 11, crossAxisSpacing: 17),
                  ),
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: SizedBox(
                    height: 40,
                    width: 180,
                    child: ActionButton(onPressed: () {}),
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width - 90, size.height)
      ..cubicTo(size.width - 150, size.height / 2, size.width + 70, size.height / 3, size.width - 80, 0);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
