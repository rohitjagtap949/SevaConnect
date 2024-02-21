import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'models/app_navigation_model.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "START".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.startScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NGO ACCOUNT".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ngoAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "VOLUNTEER".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.volunteerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dashboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Edit".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileEditScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Community".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.communityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Events ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eventsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "AI Chatbot".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aiChatbotScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "post screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.postScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food community ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.foodCommunityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Food community chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.foodCommunityChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Clothes community".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.clothesCommunityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "clothes community chat".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.clothesCommunityChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Animlas community".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.animlasCommunityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "animal community chat ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.animalCommunityChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "E-WASTE".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eWasteScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
