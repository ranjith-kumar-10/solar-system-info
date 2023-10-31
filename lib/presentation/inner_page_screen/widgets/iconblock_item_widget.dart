import 'package:flutter/material.dart';
import 'package:ranjith_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class IconblockItemWidget extends StatelessWidget {
  const IconblockItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 49.h,
      child: Column(
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgUser,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 7.v),
          SizedBox(
            width: 45.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Mass",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: " \n(10",
                    style: theme.textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: "24",
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "kg)",
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 3.v),
          Text(
            "5.97",
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
