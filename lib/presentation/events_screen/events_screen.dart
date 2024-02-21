import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/widgets/app_bar/appbar_leading_image.dart';
import 'package:vedant_s_application52/widgets/app_bar/custom_app_bar.dart';
import 'package:vedant_s_application52/widgets/custom_icon_button.dart';
import 'models/events_model.dart';
import 'models/fooddonationdrivelist_item_model.dart';
import 'provider/events_provider.dart';
import 'widgets/fooddonationdrivelist_item_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  EventsScreenState createState() => EventsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => EventsProvider(), child: EventsScreen());
  }
}

class EventsScreenState extends State<EventsScreen> {
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
                    padding: EdgeInsets.only(top: 6.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(children: [
                          _buildEventsRow(context),
                          SizedBox(height: 38.v),
                          _buildFoodDonationDriveList(context),
                          SizedBox(height: 41.v),
                          Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: _buildBookDonationDriveColumn(context,
                                  title: "lbl_mahek".tr,
                                  description: "msg_fund_raising_for".tr,
                                  interestedText: "lbl_interested".tr,
                                  dateText: "msg_date_7th_january".tr)),
                          SizedBox(height: 31.v),
                          Padding(
                              padding: EdgeInsets.only(left: 13.h),
                              child: _buildBookDonationDriveColumn(context,
                                  title: "lbl_talk_to_me".tr,
                                  description: "msg_book_donation_drive".tr,
                                  interestedText: "lbl_interested".tr,
                                  dateText: "msg_date_2nd_4th_january".tr))
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
  Widget _buildEventsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 6.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_events3".tr,
                            style: CustomTextStyles.displaySmallffffffff),
                        TextSpan(text: " ")
                      ]),
                      textAlign: TextAlign.left)),
              Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: CustomIconButton(
                      height: 43.v,
                      width: 44.h,
                      padding: EdgeInsets.all(12.h),
                      onTap: () {
                        onTapBtnIconButton(context);
                      },
                      child:
                          CustomImageView(imagePath: ImageConstant.imgGroup49)))
            ]));
  }

  /// Section Widget
  Widget _buildFoodDonationDriveList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 8.h),
        child: Consumer<EventsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 49.v);
              },
              itemCount:
                  provider.eventsModelObj.fooddonationdrivelistItemList.length,
              itemBuilder: (context, index) {
                FooddonationdrivelistItemModel model = provider
                    .eventsModelObj.fooddonationdrivelistItemList[index];
                return FooddonationdrivelistItemWidget(model);
              });
        }));
  }

  /// Common widget
  Widget _buildBookDonationDriveColumn(
    BuildContext context, {
    required String title,
    required String description,
    required String interestedText,
    required String dateText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
        decoration: AppDecoration.fillBluegray100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 244.h,
                  margin: EdgeInsets.only(right: 82.h),
                  decoration: AppDecoration.outlinePrimary2,
                  child: Text(title,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumExtraBold18.copyWith(
                          color: theme.colorScheme.primary.withOpacity(1)))),
              Container(
                  width: 257.h,
                  margin: EdgeInsets.only(left: 4.h, right: 65.h),
                  child: Text(description,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium!.copyWith(
                          color: theme.colorScheme.primary.withOpacity(1)))),
              Padding(
                  padding: EdgeInsets.only(left: 4.h, right: 3.h),
                  child: Row(children: [
                    SizedBox(
                        height: 43.v,
                        width: 269.h,
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgIntrested,
                              height: 16.v,
                              width: 22.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 85.h, bottom: 7.v)),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(interestedText,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1)))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text(dateText,
                                  style: theme.textTheme.titleSmall!.copyWith(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1))))
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgMap,
                        height: 32.v,
                        width: 31.h,
                        margin: EdgeInsets.only(left: 19.h, top: 11.v))
                  ]))
            ]));
  }

  /// Navigates to the dashboardScreen when the action is triggered.
  onTapImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardScreen,
    );
  }

  /// Navigates to the postScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.postScreen,
    );
  }
}
