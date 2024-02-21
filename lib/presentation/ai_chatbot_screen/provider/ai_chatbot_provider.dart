import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/ai_chatbot_screen/models/ai_chatbot_model.dart';

/// A provider class for the AiChatbotScreen.
///
/// This provider manages the state of the AiChatbotScreen, including the
/// current aiChatbotModelObj

// ignore_for_file: must_be_immutable
class AiChatbotProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  AiChatbotModel aiChatbotModelObj = AiChatbotModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
