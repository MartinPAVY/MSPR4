import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'meal_card_widget.dart' show MealCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MealCardModel extends FlutterFlowModel<MealCardWidget> {
  ///  Local state fields for this component.

  bool? _liked = false;
  set liked(bool? value) {
    _liked = value;
    debugLogWidgetClass(this);
  }

  bool? get liked => _liked;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'mealRef': debugSerializeParam(
            widget?.mealRef,
            ParamType.Document,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=mealCard',
            searchReference:
                'reference=SiIKEQoHbWVhbFJlZhIGNGFzMWRrcg0IByoJCgcKBW1lYWxzUABaB21lYWxSZWY=',
            name: 'meals',
            nullable: true,
          )
        }.withoutNulls,
        localStates: {
          'liked': debugSerializeParam(
            liked,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=mealCard',
            searchReference:
                'reference=QhgKDgoFbGlrZWQSBTBmdWJmKgByBAgFIABQAFoFbGlrZWRiCG1lYWxDYXJk',
            name: 'bool',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=mealCard',
        searchReference: 'reference=OghtZWFsQ2FyZFAAWghtZWFsQ2FyZA==',
        widgetClassName: 'mealCard',
      );
}
