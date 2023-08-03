import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  })  : assert(image != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p12
        .rounded
        .color(context.canvasColor)
        .make()
        .p12()
        .w32(context);
  }
}
