import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'package:vedant_s_application52/widgets/custom_elevated_button.dart';
import 'models/animlas_community_model.dart';
import 'provider/animlas_community_provider.dart';

class AnimlasCommunityScreen extends StatefulWidget {
  const AnimlasCommunityScreen({Key? key}) : super(key: key);

  @override
  AnimlasCommunityScreenState createState() => AnimlasCommunityScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AnimlasCommunityProvider(),
        child: AnimlasCommunityScreen());
  }
}

class AnimlasCommunityScreenState extends State<AnimlasCommunityScreen> {
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
                  _buildFiveStack(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 41.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_animals2".tr,
                                    style: theme.textTheme.displaySmall)),
                            SizedBox(height: 7.v),
                            Container(
                                width: 341.h,
                                margin: EdgeInsets.only(left: 4.h),
                                child: Text("msg_individuals_offer".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleMediumWhiteA700Medium)),
                            SizedBox(height: 27.v),
                            CustomElevatedButton(
                                width: 219.h,
                                text: "lbl_post".tr,
                                margin: EdgeInsets.only(left: 55.h),
                                onPressed: () {
                                  onTapPOST(context);
                                }),
                            SizedBox(height: 42.v),
                            CustomElevatedButton(
                                width: 219.h,
                                text: "lbl_forum".tr,
                                margin: EdgeInsets.only(left: 55.h),
                                onPressed: () {
                                  onTapFORUM(context);
                                }),
                            SizedBox(height: 5.v)
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFiveStack(BuildContext context) {
    return SizedBox(
        height: 250.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgYoungWomanInAnimalShelter,
              height: 250.v,
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

  /// Navigates to the postScreen when the action is triggered.
  onTapPOST(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.postScreen,
    );
  }

  /// Navigates to the animalCommunityChatScreen when the action is triggered.
  onTapFORUM(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.animalCommunityChatScreen,
    );
  }
}
