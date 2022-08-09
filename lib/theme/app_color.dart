import 'package:flutter/material.dart';

// for all app color
const colorPrimary = Color(0xffE44CC7);

class BaseAppThemeColor {
  final Color colorText1;
  final Color colorText2;
  final Color colorText3;
  final Color colorText4;

  final Color colorBackground1;
  final Color colorBackground2;
  final Color colorBackground3;

  final Color colorDivider1;
  final Color colorDivider2;

  BaseAppThemeColor({
    required this.colorText1,
    required this.colorText2,
    required this.colorText3,
    required this.colorText4,
    required this.colorBackground1,
    required this.colorBackground2,
    required this.colorBackground3,
    required this.colorDivider1,
    required this.colorDivider2,
  });
}

final BaseAppThemeColor lightThemeColor = BaseAppThemeColor(
  colorText1: const Color(0xff1B151E),
  colorText2: const Color(0xff3B353E),
  colorText3: const Color(0xff4F4752),
  colorText4: const Color(0xffA59FA8),
  colorBackground1: const Color(0xffFFFCFC),
  colorBackground2: const Color(0xffFFFCFC),
  colorBackground3: const Color(0xffFFFfff),
  colorDivider1: const Color(0xffFDF5FB),
  colorDivider2: const Color(0xffFFFCFC),
);

final BaseAppThemeColor darkThemeColor = BaseAppThemeColor(
  colorText1: const Color(0xffffffff),
  colorText2: const Color(0xffFAFAFA),
  colorText3: const Color(0xffE44CC7),
  colorText4: const Color(0xff7D6288),
  colorBackground1: const Color(0xff262036),
  colorBackground2: const Color(0xff302547),
  colorBackground3: const Color(0xff1B1A2E),
  colorDivider1: const Color(0xff363963),
  colorDivider2: const Color(0xff3F4163),
);
