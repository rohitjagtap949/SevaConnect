import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'package:vedant_s_application52/widgets/custom_icon_button.dart';
import 'package:vedant_s_application52/widgets/custom_text_form_field.dart';
import 'models/clothes_community_chat_model.dart';
import 'provider/clothes_community_chat_provider.dart';

class ClothesCommunityChatScreen extends StatefulWidget {
  const ClothesCommunityChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ClothesCommunityChatScreenState createState() =>
      ClothesCommunityChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ClothesCommunityChatProvider(),
      child: ClothesCommunityChatScreen(),
    );
  }
}

class ClothesCommunityChatScreenState
    extends State<ClothesCommunityChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_forum".tr,
                  style: theme.textTheme.displaySmall,
                ),
              ),
              SizedBox(height: 51.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img8479691,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(top: 12.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_rahul".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(
                          height: 23.v,
                          width: 183.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 176.h,
                                  child: Text(
                                    "msg_any_food_donation".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelSmallPrimary,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "lbl_13_45".tr,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 3.v),
                            Padding(
                              padding: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "lbl_akshay".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Container(
                              width: 179.h,
                              margin: EdgeInsets.only(left: 1.h),
                              child: Text(
                                "msg_donation_being_arranged".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelSmallPrimary,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_13_47".tr,
                                style: theme.textTheme.labelSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img8479691,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 12.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img8479691,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(bottom: 119.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 9.h),
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_riya".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 3.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgWomanDonatesC,
                          height: 121.v,
                          width: 178.h,
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Text(
                              "lbl_13_50".tr,
                              style: theme.textTheme.labelSmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
              Container(
                height: 22.v,
                width: 191.h,
                margin: EdgeInsets.only(left: 44.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.all(4.h),
                        decoration: AppDecoration.fillBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL13,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "msg_successful_drive".tr,
                              style: CustomTextStyles.labelSmallPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 7.h),
                        child: Text(
                          "lbl_13_50".tr,
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img8479691,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(top: 9.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_khushi".tr,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 2.v),
                        Container(
                          width: 183.h,
                          margin: EdgeInsets.only(right: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: Text(
                                  "lbl".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: Text(
                                  "lbl_13_51".tr,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img8479691,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(top: 9.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 7.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL13,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "lbl_ritesh".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Container(
                          width: 184.h,
                          margin: EdgeInsets.only(right: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 19.v,
                                width: 61.h,
                                margin: EdgeInsets.only(bottom: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13.v),
                                child: Text(
                                  "lbl_13_51".tr,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessageRow(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img18936501,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMenu21,
          margin: EdgeInsets.fromLTRB(20.h, 13.v, 20.h, 12.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        bottom: 18.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:
                Selector<ClothesCommunityChatProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.messageController,
              builder: (context, messageController, child) {
                return CustomTextFormField(
                  controller: messageController,
                  hintText: "msg_type_message".tr,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 8.v, 6.h, 6.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.img41318391,
                      height: 34.v,
                      width: 40.h,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 48.v,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: CustomIconButton(
              height: 48.v,
              width: 49.h,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
