import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EtapesWidget extends StatelessWidget {
  final double textSize;
  final double crossAxisSpacing;
  final List<String> etapeList = [
    'assets/images/Page-1.svg',
    'assets/images/Page-2.svg',
    'assets/images/Page-3.svg',
    'assets/images/Page-4.svg',
    'assets/images/Page-5.svg',
    'assets/images/Page-6.svg',
    'assets/images/Page-7.svg',
  ];
  final List<String> etapeTitle = [
    "Le rêve liber l'expression",
    'Le sens éclaire le parcours',
    'La différence rend unique',
    'La valeur humaine met en mouvement',
    'la clé exprime le style',
    'Le parcours associe rêve et réalité',
    "Le ciel bleu révèle l'alignement",
  ];

  EtapesWidget({Key? key, required this.textSize, required this.crossAxisSpacing}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width <= 1400 ? 1 : 2, // Set the number of columns
          crossAxisSpacing: 2, // Adjust the spacing between columns
          mainAxisSpacing: crossAxisSpacing, // Adjust the spacing between rows
          childAspectRatio: 6),
      itemCount: etapeList.length,
      //physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              etapeList[index],
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width <= 700
                    ? MediaQuery.of(context).size.width / 1.3
                    : MediaQuery.of(context).size.width / 6.5,
                child: Text(
                  '${index + 1}. ${etapeTitle[index]}',
                  style: TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
