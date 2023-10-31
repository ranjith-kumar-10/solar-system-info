import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:ranjith_s_application3/core/app_export.dart';
import 'package:ranjith_s_application3/presentation/home_container_screen/home_container_screen.dart';
import 'package:ranjith_s_application3/widgets/custom_elevated_button.dart';
import 'package:ranjith_s_application3/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 58.v),
                  CustomImageView(
                    svgPath: ImageConstant.imgVector,
                    height: 76.v,
                    width: 213.h,
                  ),
                  Spacer(),
                  OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.96, 0.96),
                      end: Alignment(0.19, 0.04),
                      colors: [
                        appTheme.black900.withOpacity(0.3),
                        appTheme.black900.withOpacity(0),
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                      bottomLeft: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48.h,
                        vertical: 37.v,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder28,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign in",
                            style: theme.textTheme.headlineLarge,
                          ),
                          SizedBox(height: 17.v),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "Ranjith@gmail.com",
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 24.v),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "Password",
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "Forgot Password?",
                            style: theme.textTheme.bodyLarge,
                          ),
                          SizedBox(height: 21.v),

                          CustomElevatedButton(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomeContainerScreen(),
                              ));
                            },
                            text: "Sign In",
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientCyanAToPrimaryTL24Decoration,
                          ),

                          // CustomElevatedButton(
                          // text: "Sign in",
                          //buttonStyle: CustomButtonStyles.none,
                          //   decoration: CustomButtonStyles
                          //     .gradientCyanAToPrimaryTL24Decoration,
                          //  ),
                          SizedBox(height: 24.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 82.h,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                              Text(
                                "or sign in using",
                                style: CustomTextStyles.bodyMediumBluegray400,
                              ),
                              Opacity(
                                opacity: 0.2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 8.v,
                                  ),
                                  child: SizedBox(
                                    width: 82.h,
                                    child: Divider(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 23.v),
                          CustomImageView(
                            svgPath: ImageConstant.imgSocial,
                            height: 48.v,
                            width: 279.h,
                          ),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.center,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Don’t have an account? ",
                                    style:
                                        CustomTextStyles.bodySmallBluegray400_1,
                                  ),
                                  TextSpan(
                                    text: "Sign Up",
                                    style:
                                        CustomTextStyles.titleSmallCyanA40001,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 43.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
