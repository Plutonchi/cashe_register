import 'package:cashe_register/app/constans/app_colors.dart';
import 'package:cashe_register/app/constans/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SvgPicture.asset(
            "assets/icons/search.svg",
            fit: BoxFit.cover,
          ),
          fillColor: AppColors.whiteF5,
          filled: true,
          hintStyle: const TextStyle(
              fontSize: 16,
              fontFamily: "Gentium",
              fontWeight: FontWeight.w500,
              color: AppColors.greyOA),
          hintText: AppText.searchWidgetText.toUpperCase(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.transparent, width: 2.0),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Пожалуйста напишите Имя ученика';
          }
          return null;
        },
      ),
    );
  }
}
