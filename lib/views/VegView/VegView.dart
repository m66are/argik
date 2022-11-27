import 'package:argik/controllers/DataController.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:argik/models/Veg.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VegView extends StatefulWidget {
  const VegView({
    super.key,
  });

  @override
  State<VegView> createState() => _VegViewState();
}

class _VegViewState extends State<VegView> {
  DataController dataController = Get.find<DataController>();
  @override
  Widget build(BuildContext context) {
    final veg = ModalRoute.of(context)!.settings.arguments as Veg;

    return Scaffold(
      appBar: AppBar(title: Text(veg.nom)),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              CircleAvatar(
                radius: 160,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: CachedNetworkImageProvider(veg.imageUrl),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: List.generate(
                    dataController.details.length,
                    (index) => Card(
                          margin: const EdgeInsets.all(5),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  child: Text(
                                    dataController.details.keys
                                        .toList()[index]
                                        .toString(),
                                    style: context.tStyle.headline3,
                                  ),
                                ),
                                Text(
                                  dataController.details.values
                                      .toList()[index]
                                      .toString(),
                                  style: Get.textTheme.bodyText1,
                                )
                              ],
                            ),
                          ),
                        )),
              )
            ],
          )),
    );
  }
}
