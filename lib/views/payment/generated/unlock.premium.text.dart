import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';

import '../../../theme/theme_provider.dart';

/* Text Unlock premium version of QuranIrab
    Autogenerated by FlutLab FTF Generator
  */
class UnlockPremiumText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Text(
      '''Unlock premium version of QuranIrab''',
      overflow: TextOverflow.visible,
      textAlign: TextAlign.left,
      style: TextStyle(
        height: 1,
        fontSize: 19.0,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        color: theme.isDarkMode?white:Color.fromARGB(255, 124, 124, 124),

        /* letterSpacing: 0.0, */
      ),
    );
  }
}
