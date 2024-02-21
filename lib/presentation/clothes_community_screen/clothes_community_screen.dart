import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'package:vedant_s_application52/widgets/custom_elevated_button.dart';
import 'models/clothes_community_model.dart';
import 'provider/clothes_community_provider.dart';

class ClothesCommunityScreen extends StatefulWidget {
  const ClothesCommunityScreen({Key? key}) : super(key: key);

  @override
  ClothesCommunityScreenState createState() => ClothesCommunityScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ClothesCommunityProvider(),
        child: ClothesCommunityScreen());
  }
}

class ClothesCommunityScreenState extends State<ClothesCommunityScreen> {
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
                  _buildDonationBoxOf(context),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 33.h, vertical: 37.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_clothes2".tr,
                                style: theme.textTheme.displaySmall)),
                        SizedBox(height: 13.v),
                        Container(
                            width: 335.h,
                            margin: EdgeInsets.only(right: 9.h),
                            child: Text("msg_freely_give_clothes".tr,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumWhiteA700Medium)),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            width: 219.h,
                            text: "lbl_post".tr,
                            onPressed: () {
                              onTapPOST(context);
                            }),
                        SizedBox(height: 38.v),
                        CustomElevatedButton(
                            width: 219.h,
                            text: "lbl_forum".tr,
                            onPressed: () {
                              onTapFORUM(context);
                            }),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildDonationBoxOf(BuildContext context) {
    return SizedBox(
        height: 279.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgDonationBoxOf,
              height: 279.v,
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

  /// Navigates to the clothesCommunityChatScreen when the action is triggered.
  onTapFORUM(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.clothesCommunityChatScreen,
    );
  }
}
