import 'package:flutter/material.dart';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:ranjith_s_application3/presentation/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the new page after the delay
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgSplash,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 39.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.black900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder148,
                  ),
                  child: Container(
                    height: 296.adaptSize,
                    width: 296.adaptSize,
                    decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder148,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.3,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 288.adaptSize,
                              width: 288.adaptSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  144.h,
                                ),
                                border: Border.all(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  width: 1.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 296.adaptSize,
                            width: 296.adaptSize,
                            child: CircularProgressIndicator(
                              value: 0.5,
                              backgroundColor: theme
                                  .colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              color: appTheme.cyanA40001,
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgLogo,
                          height: 76.v,
                          width: 213.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 154.v),
                CustomImageView(
                  svgPath: ImageConstant.imgFlutterlogo,
                  height: 32.v,
                  width: 111.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
