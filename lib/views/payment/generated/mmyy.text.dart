import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:quranirab/views/payment/payment_validation_provider.dart';

import '../../../theme/theme_provider.dart';

/* Text MM/YY
    Autogenerated by FlutLab FTF Generator
  */
class MMYYText extends StatefulWidget {
  const MMYYText({Key? key}) : super(key: key);

  @override
  State<MMYYText> createState() => _MMYYTextState();
}

class _MMYYTextState extends State<MMYYText> {
  final _mmyy = TextEditingController();

  bool labelHidden = false;

  @override
  Widget build(BuildContext context) {
    final validationProvider =
        Provider.of<PaymentValidationProvider>(context, listen: true);
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Material(
          color: theme.isDarkMode ? Color(0xff67748E) : Colors.white,
          child: TextField(
            controller: _mmyy,
            decoration: InputDecoration(
                errorText: validationProvider.cardDateIsValid != null &&
                        !validationProvider.cardDateIsValid!
                    ? 'Date format is wrong! Eg: 01/23'
                    : null,
                errorStyle: TextStyle(
                    color: theme.isDarkMode ? Colors.tealAccent : Colors.red),
                border: InputBorder.none,
                filled: true,
                fillColor: theme.isDarkMode ? Color(0xff67748E) : Colors.white,
                labelText: labelHidden ? null : ('MM/YY'),
                labelStyle:
                    TextStyle(color: theme.isDarkMode ? white : Colors.black)),
            style: TextStyle(color: theme.isDarkMode ? white : Colors.black),
            onChanged: (String value) {
              Provider.of<PaymentValidationProvider>(context, listen: false)
                  .validateCardDate(value);
              if (value.isEmpty) {
                labelHidden = false;
              } else {
                labelHidden = true;
              }
            },
          ),
        ),
      ),
    );
  }
}
