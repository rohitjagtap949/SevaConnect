import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'models/dashboard_model.dart';
import 'provider/dashboard_provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardScreenState createState() => DashboardScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DashboardProvider(), child: DashboardScreen());
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary.withOpacity(0.92),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.v),
                      _buildGreetingsRow(context),
                      SizedBox(height: 32.v),
                      _buildCommunityIconRow(context),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 39.h, right: 205.h),
                          child: _buildEventsColumn(context,
                              eventsIcon: ImageConstant.imgMapsicon,
                              eventsText: "lbl_maps".tr)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTwo(context);
                              },
                              child: Container(
                                  width: 143.h,
                                  margin:
                                      EdgeInsets.only(left: 236.h, right: 8.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25.h, vertical: 20.v),
                                  decoration: AppDecoration.outlinePrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 20.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgChatbot1,
                                            height: 53.v,
                                            width: 51.h,
                                            margin:
                                                EdgeInsets.only(left: 16.h)),
                                        SizedBox(height: 6.v),
                                        Text("lbl_ai_chatbot".tr,
                                            style: theme.textTheme.titleMedium)
                                      ]))))
                    ]))));
  }

  /// Section Widget
  Widget _buildGreetingsRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 25.h, right: 18.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 35.v),
                      child: Text("lbl_hi_user".tr,
                          style: CustomTextStyles.headlineLargeGray200)),
                  CustomImageView(
                      imagePath: ImageConstant.imgProfileicon,
                      height: 65.v,
                      width: 61.h,
                      margin: EdgeInsets.only(bottom: 9.v),
                      onTap: () {
                        onTapImgProfileicon(context);
                      })
                ])));
  }

  /// Section Widget
  Widget _buildCommunityIconRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 38.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 122.v),
                  child: _buildEventsColumn(context,
                      eventsIcon: ImageConstant.imgCommunityIcon,
                      eventsText: "lbl_community".tr, onTapEventsColumn: () {
                    onTapEventsColumn(context);
                  })),
              Padding(
                  padding: EdgeInsets.only(top: 122.v),
                  child: _buildEventsColumn(context,
                      eventsIcon: ImageConstant.imgEventsicon,
                      eventsText: "lbl_events".tr, onTapEventsColumn: () {
                    onTapEventsColumn1(context);
                  }))
            ]));
  }

  /// Common widget
  Widget _buildEventsColumn(
    BuildContext context, {
    required String eventsIcon,
    required String eventsText,
    Function? onTapEventsColumn,
  }) {
    return GestureDetector(
        onTap: () {
          onTapEventsColumn!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 21.v),
            decoration: AppDecoration.outlinePrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 16.v),
              CustomImageView(
                  imagePath: eventsIcon,
                  height: 56.v,
                  width: 60.h,
                  alignment: Alignment.centerRight),
              SizedBox(height: 4.v),
              Text(eventsText,
                  style: theme.textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.primary.withOpacity(1)))
            ])));
  }

  /// Navigates to the settingScreen when the action is triggered.
  onTapImgProfileicon(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.settingScreen,
    );
  }

  /// Navigates to the communityScreen when the action is triggered.
  onTapEventsColumn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.communityScreen,
    );
  }

  /// Navigates to the eventsScreen when the action is triggered.
  onTapEventsColumn1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.eventsScreen,
    );
  }

  /// Navigates to the aiChatbotScreen when the action is triggered.
  onTapTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.aiChatbotScreen,
    );
  }
}
