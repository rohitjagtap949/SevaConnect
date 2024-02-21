import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import '../models/fooddonationdrivelist_item_model.dart';

// ignore: must_be_immutable
class FooddonationdrivelistItemWidget extends StatelessWidget {
  FooddonationdrivelistItemWidget(
    this.fooddonationdrivelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FooddonationdrivelistItemModel fooddonationdrivelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 53.v,
            width: 244.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      fooddonationdrivelistItemModelObj.foodDonationDriveText!,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 244.h,
                    decoration: AppDecoration.outlinePrimary2,
                    child: Text(
                      fooddonationdrivelistItemModelObj.foundationText!,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumExtraBold18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fooddonationdrivelistItemModelObj.dateText!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 2.v),
                      Row(
                        children: [
                          Text(
                            fooddonationdrivelistItemModelObj.interestedText!,
                            style: theme.textTheme.titleSmall,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIntrested,
                            height: 16.v,
                            width: 22.h,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              bottom: 2.v,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMap,
                  height: 32.v,
                  width: 31.h,
                  margin: EdgeInsets.only(top: 13.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
