import 'package:intl/intl.dart';

class FormatsValues {

  static String formatReadbleNumber(double number) {

    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }

}