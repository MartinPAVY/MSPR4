import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'diet_item_widget.dart' show DietItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DietItemModel extends FlutterFlowModel<DietItemWidget> {
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
          'dietType': debugSerializeParam(
            widget?.dietType,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=dietItem',
            searchReference:
                'reference=ShoKEgoIZGlldFR5cGUSBnE4bXRiMnIECAMgAVAAWghkaWV0VHlwZQ==',
            name: 'String',
            nullable: true,
          ),
          'selectedDiet': debugSerializeParam(
            widget?.selectedDiet,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=dietItem',
            searchReference:
                'reference=Sh4KFgoMc2VsZWN0ZWREaWV0EgZyc2hza2lyBAgDIAFQAFoMc2VsZWN0ZWREaWV0',
            name: 'String',
            nullable: true,
          ),
          'dietTagline': debugSerializeParam(
            widget?.dietTagline,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=dietItem',
            searchReference:
                'reference=Sh0KFQoLZGlldFRhZ2xpbmUSBnN5MGd3cnIECAMgAVAAWgtkaWV0VGFnbGluZQ==',
            name: 'String',
            nullable: true,
          ),
          'action': debugSerializeParam(
            widget?.action,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=dietItem',
            searchReference:
                'reference=ShgKEAoGYWN0aW9uEgZ3YmU3cnhyBAgVIAFQAFoGYWN0aW9u',
            name: 'Future Function()',
            nullable: true,
          )
        }.withoutNulls,
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=dietItem',
        searchReference: 'reference=OghkaWV0SXRlbVAAWghkaWV0SXRlbQ==',
        widgetClassName: 'dietItem',
      );
}
