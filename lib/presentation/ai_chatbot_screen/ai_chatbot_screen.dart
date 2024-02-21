import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'package:vedant_s_application52/widgets/custom_icon_button.dart';
import 'package:vedant_s_application52/widgets/custom_text_form_field.dart';
import 'models/ai_chatbot_model.dart';
import 'provider/ai_chatbot_provider.dart';

class AiChatbotScreen extends StatefulWidget {
  const AiChatbotScreen({Key? key}) : super(key: key);

  @override
  AiChatbotScreenState createState() => AiChatbotScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AiChatbotProvider(), child: AiChatbotScreen());
  }
}

class AiChatbotScreenState extends State<AiChatbotScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgChatbot11,
                          height: 115.v,
                          width: 103.h,
                          alignment: Alignment.center),
                      SizedBox(height: 50.v),
                      Container(
                          width: 100.h,
                          margin: EdgeInsets.only(left: 5.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 5.v),
                          decoration: AppDecoration.fillBluegray100.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL10),
                          child: Text("lbl_hi".tr,
                              style: CustomTextStyles.titleLargeSemiBold)),
                      SizedBox(height: 6.v),
                      _buildChatbotEleven(context),
                      SizedBox(height: 26.v),
                      _buildThirtyFour(context),
                      SizedBox(height: 29.v),
                      _buildView(context),
                      SizedBox(height: 4.v)
                    ])),
            bottomNavigationBar: _buildSixtyThree(context)));
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
  Widget _buildChatbotEleven(BuildContext context) {
    return Container(
        width: 350.h,
        margin: EdgeInsets.only(left: 5.h, right: 34.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 3.v),
        decoration: AppDecoration.fillBluegray100
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Text("msg_how_can_i_help_you".tr,
                  style: CustomTextStyles.titleLargeSemiBold)
            ]));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: 351.h,
            margin: EdgeInsets.only(left: 38.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
            decoration: AppDecoration.fillBluegray100
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL14),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 5.v),
              Container(
                  width: 320.h,
                  margin: EdgeInsets.only(right: 6.h),
                  child: Text("msg_i_came_across_a".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLargeSemiBold))
            ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
        height: 115.v,
        width: 350.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 113.v,
                  width: 350.h,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.h),
                          bottomLeft: Radius.circular(10.h),
                          bottomRight: Radius.circular(10.h))))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  width: 331.h,
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_you_can_connect2".tr,
                            style: CustomTextStyles.titleLargeff000000),
                        TextSpan(
                            text: "msg_post_clothes_donation".tr,
                            style: CustomTextStyles.titleLargeff0047ff
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left)))
        ]));
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 11.h, bottom: 22.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Selector<AiChatbotProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.messageController,
                      builder: (context, messageController, child) {
                        return CustomTextFormField(
                            controller: messageController,
                            hintText: "msg_type_message".tr,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 8.v, 14.h, 9.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.img104364681,
                                    height: 27.v,
                                    width: 26.h)),
                            suffixConstraints: BoxConstraints(maxHeight: 44.v));
                      }))),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: CustomIconButton(
                  height: 48.v,
                  width: 49.h,
                  padding: EdgeInsets.all(11.h),
                  child: CustomImageView(imagePath: ImageConstant.imgGroup35)))
        ]));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }
}
