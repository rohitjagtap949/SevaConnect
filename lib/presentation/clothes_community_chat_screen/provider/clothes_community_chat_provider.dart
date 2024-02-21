import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/clothes_community_chat_screen/models/clothes_community_chat_model.dart';

/// A provider class for the ClothesCommunityChatScreen.
///
/// This provider manages the state of the ClothesCommunityChatScreen, including the
/// current clothesCommunityChatModelObj
class ClothesCommunityChatProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ClothesCommunityChatModel clothesCommunityChatModelObj =
      ClothesCommunityChatModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
