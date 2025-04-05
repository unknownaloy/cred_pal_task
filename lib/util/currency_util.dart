import 'package:flutter/material.dart' show debugPrint;
import 'package:intl/intl.dart';

class CurrencyUtil {
  factory CurrencyUtil() => _instance;

  CurrencyUtil._();

  static final CurrencyUtil _instance = CurrencyUtil._();

  static final _currencyFormat = NumberFormat.currency(
    locale: 'en_NG',
    symbol: '\u{20A6} ', // ₦
    decimalDigits: 0,
  );

  static String formatCurrency(num? amount) {
    if (amount == null) {
      return '';
    }
    try {
      return _currencyFormat.format(amount);
    } catch (err) {
      debugPrint('CurrencyUtil - formatCurrency -- err -> $err');
      return amount.toString();
    }
  }
}
