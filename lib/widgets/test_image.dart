import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import "package:flutter/material.dart";
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

/// @author
/// Remove TestImage from all other widgets when we have image data from api
class TestImage extends StatelessWidget {
  const TestImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: Svg("assets/images/profile_icon.svg"),
      width: 80,
      height: 80,
      fit: BoxFit.cover,
    );
  }
}
