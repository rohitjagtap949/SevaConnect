import '../../../core/app_export.dart';

/// This class is used in the [fooddonationdrivelist_item_widget] screen.
class FooddonationdrivelistItemModel {
  FooddonationdrivelistItemModel({
    this.foodDonationDriveText,
    this.foundationText,
    this.dateText,
    this.interestedText,
    this.id,
  }) {
    foodDonationDriveText = foodDonationDriveText ?? "Food Donation Drive ";
    foundationText = foundationText ?? "United People’s Foundation";
    dateText = dateText ?? "Date: 2nd -4th January";
    interestedText = interestedText ?? "Interested:";
    id = id ?? "";
  }

  String? foodDonationDriveText;

  String? foundationText;

  String? dateText;

  String? interestedText;

  String? id;
}
