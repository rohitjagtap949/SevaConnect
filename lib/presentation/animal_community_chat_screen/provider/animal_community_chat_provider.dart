import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/animal_community_chat_screen/models/animal_community_chat_model.dart';

/// A provider class for the AnimalCommunityChatScreen.
///
/// This provider manages the state of the AnimalCommunityChatScreen, including the
/// current animalCommunityChatModelObj
class AnimalCommunityChatProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  AnimalCommunityChatModel animalCommunityChatModelObj =
      AnimalCommunityChatModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
