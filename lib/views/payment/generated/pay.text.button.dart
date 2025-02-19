import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:quranirab/views/payment/payment_validation_provider.dart';
import 'package:quranirab/views/payment/receipt.screen.dart';

import '../../../theme/theme_provider.dart';

/* Text Pay
    Autogenerated by FlutLab FTF Generator
  */
class PayTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return MaterialButton(
      onPressed: () async {
        final bool paymentResult =
            Provider.of<PaymentValidationProvider>(context, listen: false)
                .validateAllPaymentFields();
        if (paymentResult == true) {
          debugPrint('Done');
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Payment confirmation'),
              content: Text('Do you confirm to pay?'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReceiptScreen('url')));
                    },
                    child: Text('Yes')),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('No')),
              ],
            ),
          );
        } else {
          debugPrint('Unsuccessful');
          await showDialog(
            barrierDismissible: true,
            context: context,
            builder: (context) => AlertDialog(
              content:
                  Text('Please make sure all fields are filled correctly!'),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Ok')),
              ],
            ),
          );
        }
      },
      child: Text(
        '''Pay ''',
        overflow: TextOverflow.visible,
        textAlign: TextAlign.left,
        style: TextStyle(
          height: 1.6,
          fontSize: 25.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
          color: theme.isDarkMode ? white : Color.fromARGB(255, 0, 0, 0),

          /* letterSpacing: 0.0, */
        ),
      ),
    );
  }
}
