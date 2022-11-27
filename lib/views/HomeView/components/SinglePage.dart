import 'package:argik/constants/colors.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/models/Veg.dart';
import 'package:argik/routes/routes.dart';
import 'package:argik/widgets/MainButton.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SinglePage extends StatelessWidget {
  const SinglePage({super.key, required this.veg});
  final Veg veg;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
          color: cGreen.withOpacity(0.3),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 160,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 150,
              backgroundImage: CachedNetworkImageProvider(veg.imageUrl),
            ),
          ),
          Text(
            veg.nom,
            style: context.tStyle.headline3,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: MainButton(
              label: "Voir ${veg.nom}",
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onClick: () async {
                context.nav.pushNamed(kVegRoute, arguments: veg);
              },
            ),
          )
        ],
      ),
    );
  }
}
