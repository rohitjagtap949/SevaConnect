import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'models/e_waste_model.dart';
import 'provider/e_waste_provider.dart';

class EWasteScreen extends StatefulWidget {
  const EWasteScreen({Key? key}) : super(key: key);

  @override
  EWasteScreenState createState() => EWasteScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EWasteProvider(), child: EWasteScreen());
  }
}

class EWasteScreenState extends State<EWasteScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildOneStack(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 39.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 13.h),
                                child: Text("lbl_e_waste2".tr,
                                    style: theme.textTheme.displaySmall)),
                            SizedBox(height: 1.v),
                            Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text("msg_under_development".tr,
                                    style:
                                        CustomTextStyles.titleLargeWhiteA700)),
                            SizedBox(height: 53.v),
                            Container(
                                width: 354.h,
                                margin: EdgeInsets.only(left: 9.h),
                                child: Text("msg_come_together_to".tr,
                                    maxLines: 7,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleMediumWhiteA700Medium)),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildOneStack(BuildContext context) {
    return SizedBox(
        height: 283.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAsianPeopleRe,
              height: 283.v,
              width: 411.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(30.h)),
              alignment: Alignment.center),
          CustomAppBar(
              height: 62.v,
              leadingWidth: 49.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.img18936501,
                  margin: EdgeInsets.only(left: 16.h),
                  onTap: () {
                    onTapImage(context);
                  }),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgMenu21,
                    margin: EdgeInsets.fromLTRB(20.h, 4.v, 20.h, 3.v))
              ])
        ]));
  }

  /// Navigates to the communityScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.communityScreen,
    );
  }
}
