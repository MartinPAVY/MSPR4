import '/components/loader_item/loader_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'meal_card_loading_widget.dart' show MealCardLoadingWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MealCardLoadingModel extends FlutterFlowModel<MealCardLoadingWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for LoaderItem dynamic component.
  Map<String, FlutterFlowModel> loaderItemModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
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
        dynamicComponentStates: {
          'loaderItemModels (List<LoaderItem>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(loaderItemModels.length, (index) => '[$index]'),
              loaderItemModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=mealCardLoading',
        searchReference:
            'reference=Og9tZWFsQ2FyZExvYWRpbmdQAFoPbWVhbENhcmRMb2FkaW5n',
        widgetClassName: 'mealCardLoading',
      );
}
