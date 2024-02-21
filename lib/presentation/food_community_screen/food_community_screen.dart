import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/custom_elevated_button.dart';
import 'models/food_community_model.dart';
import 'provider/food_community_provider.dart';

class FoodCommunityScreen extends StatefulWidget {
  const FoodCommunityScreen({Key? key}) : super(key: key);

  @override
  FoodCommunityScreenState createState() => FoodCommunityScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FoodCommunityProvider(),
        child: FoodCommunityScreen());
  }
}

class FoodCommunityScreenState extends State<FoodCommunityScreen> {
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFoodCommunityStack(context),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 33.h),
                          child: Text("lbl_food2".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 9.v),
                      Container(
                          width: 332.h,
                          margin: EdgeInsets.only(left: 33.h, right: 45.h),
                          child: Text("msg_the_community_thrives".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleMediumWhiteA700Medium)),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                          height: 66.v,
                          width: 252.h,
                          text: "lbl_post".tr,
                          onPressed: () {
                            onTapPOST(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 45.v),
                      CustomElevatedButton(
                          height: 66.v,
                          width: 252.h,
                          text: "lbl_forum".tr,
                          onPressed: () {
                            onTapFORUM(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildFoodCommunityStack(BuildContext context) {
    return SizedBox(
        height: 229.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFoodbankDonationsOfFood,
              height: 229.v,
              width: 411.h,
              radius: BorderRadius.vertical(bottom: Radius.circular(30.h)),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(16.h, 24.v, 20.h, 167.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.img18936501,
                            height: 38.v,
                            width: 33.h,
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        CustomImageView(
                            imagePath: ImageConstant.imgMenu21,
                            height: 31.adaptSize,
                            width: 31.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                      ])))
        ]));
  }

  /// Navigates to the communityScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
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

  /// Navigates to the foodCommunityChatScreen when the action is triggered.
  onTapFORUM(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.foodCommunityChatScreen,
    );
  }
}
