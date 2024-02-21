import 'package:flutter/material.dart';
import 'package:vedant_s_application52/core/app_export.dart';
import 'package:vedant_s_application52/presentation/events_screen/models/events_model.dart';
import '../models/fooddonationdrivelist_item_model.dart';

/// A provider class for the EventsScreen.
///
/// This provider manages the state of the EventsScreen, including the
/// current eventsModelObj

// ignore_for_file: must_be_immutable
class EventsProvider extends ChangeNotifier {
  EventsModel eventsModelObj = EventsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
