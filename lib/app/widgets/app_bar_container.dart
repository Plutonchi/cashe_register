import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    super.key,
    required this.menu,
    this.text,
    this.menuicon,
  });
  final String? menu;

  final String? text;
  final Widget? menuicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 44),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.07,
        color: AppColors.black53,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            menuicon!,
            Text(
              menu!.toUpperCase(),
              style: (AppTextStyle.whiteS24FGen),
            ),
            Text(text!, style: AppTextStyle.white14),
          ],
        ),
      ),
    );
  }
}
