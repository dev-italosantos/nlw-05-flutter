import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AwmserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelectd;

  const AwmserWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelectd = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyles.body,
          ),
          Container(
            width: 24,
            height: 24,
            child: Icon(Icons.check),
          )
        ],
      ),
    );
  }
}
