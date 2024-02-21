import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'models/community_model.dart';
import 'provider/community_provider.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  CommunityScreenState createState() => CommunityScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CommunityProvider(), child: CommunityScreen());
  }
}

class CommunityScreenState extends State<CommunityScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 31.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_communities".tr,
                                  style: theme.textTheme.displaySmall),
                              SizedBox(height: 35.v),
                              _buildCommunityFortyEight(context),
                              SizedBox(height: 21.v),
                              _buildCommunityFortyNine(context),
                              SizedBox(height: 30.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: _buildCommunityFiftyThree(context,
                                      userImage: ImageConstant.img30479281,
                                      fundraisingText: "lbl_animals".tr,
                                      onTapCommunityFiftyThree: () {
                                    onTapCommunityFiftyThree(context);
                                  })),
                              SizedBox(height: 30.v),
                              _buildCommunityFiftyTwo(context),
                              SizedBox(height: 30.v),
                              Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: _buildCommunityFiftyThree(context,
                                      userImage: ImageConstant.img43346931,
                                      fundraisingText: "lbl_fund_raising".tr)),
                              SizedBox(height: 30.v),
                              _buildCommunityFiftyFour(context),
                              SizedBox(height: 30.v),
                              _buildCommunityFiftyFive(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.img18936501,
            margin: EdgeInsets.fromLTRB(16.h, 9.v, 362.h, 9.v),
            onTap: () {
              onTapImage(context);
            }));
  }

  /// Section Widget
  Widget _buildCommunityFortyEight(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCommunityFortyEight(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 17.v),
            decoration: AppDecoration.fillBluegray100
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFood,
                      height: 42.v,
                      width: 44.h,
                      margin: EdgeInsets.only(bottom: 7.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 32.h, top: 13.v, bottom: 10.v),
                      child: Text("lbl_food".tr,
                          style: theme.textTheme.titleLarge))
                ])));
  }

  /// Section Widget
  Widget _buildCommunityFortyNine(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCommunityFortyNine(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 21.v),
            decoration: AppDecoration.outlinePrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.img30478241,
                      height: 40.v,
                      width: 36.h,
                      margin: EdgeInsets.only(top: 1.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 34.h, top: 7.v, bottom: 8.v),
                      child: Text("lbl_clothes".tr,
                          style: theme.textTheme.titleLarge))
                ])));
  }

  /// Section Widget
  Widget _buildCommunityFiftyTwo(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCommunityFiftyTwo(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 8.h),
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.v),
            decoration: AppDecoration.outlinePrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.img35849501,
                      height: 37.v,
                      width: 34.h,
                      margin: EdgeInsets.only(bottom: 16.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 39.h, top: 7.v, bottom: 20.v),
                      child: Text("lbl_e_waste".tr,
                          style: theme.textTheme.titleLarge))
                ])));
  }

  /// Section Widget
  Widget _buildCommunityFiftyFour(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 15.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.img17528731,
                  height: 43.v,
                  width: 33.h,
                  margin: EdgeInsets.only(bottom: 10.v)),
              Padding(
                  padding: EdgeInsets.only(left: 35.h, top: 14.v, bottom: 15.v),
                  child:
                      Text("lbl_plants".tr, style: theme.textTheme.titleLarge))
            ]));
  }

  /// Section Widget
  Widget _buildCommunityFiftyFive(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 27.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.img24442771, height: 29.v, width: 28.h),
          Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Text("lbl_skill_building".tr,
                  style: theme.textTheme.titleLarge))
        ]));
  }

  /// Common widget
  Widget _buildCommunityFiftyThree(
    BuildContext context, {
    required String userImage,
    required String fundraisingText,
    Function? onTapCommunityFiftyThree,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCommunityFiftyThree!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 21.v),
            decoration: AppDecoration.outlinePrimary1
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomImageView(
                      imagePath: userImage,
                      height: 37.adaptSize,
                      width: 37.adaptSize,
                      margin: EdgeInsets.only(bottom: 4.v)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 33.h, top: 6.v, bottom: 9.v),
                      child: Text(fundraisingText,
                          style: theme.textTheme.titleLarge!.copyWith(
                              color: theme.colorScheme.primary.withOpacity(1))))
                ])));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the foodCommunityScreen when the action is triggered.
  onTapCommunityFortyEight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.foodCommunityScreen,
    );
  }

  /// Navigates to the clothesCommunityScreen when the action is triggered.
  onTapCommunityFortyNine(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.clothesCommunityScreen,
    );
  }

  /// Navigates to the animlasCommunityScreen when the action is triggered.
  onTapCommunityFiftyThree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.animlasCommunityScreen,
    );
  }

  /// Navigates to the eWasteScreen when the action is triggered.
  onTapCommunityFiftyTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eWasteScreen,
    );
  }
}
