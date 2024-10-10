import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'preference_item_widget.dart' show PreferenceItemWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PreferenceItemModel extends FlutterFlowModel<PreferenceItemWidget> {
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
          'text': debugSerializeParam(
            widget?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=preferenceItem',
            searchReference:
                'reference=ShYKDgoEdGV4dBIGbG9lOWlscgQIAyABUABaBHRleHQ=',
            name: 'String',
            nullable: true,
          ),
          'selectedItems': debugSerializeParam(
            widget?.selectedItems,
            ParamType.String,
            isList: true,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=preferenceItem',
            searchReference:
                'reference=SiEKFwoNc2VsZWN0ZWRJdGVtcxIGOWRvaHlucgYSAggDIAFQAFoNc2VsZWN0ZWRJdGVtcw==',
            name: 'String',
            nullable: true,
          ),
          'action': debugSerializeParam(
            widget?.action,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=preferenceItem',
            searchReference:
                'reference=ShgKEAoGYWN0aW9uEgYyeW9wbXVyBAgVIAFQAFoGYWN0aW9u',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=preferenceItem',
        searchReference:
            'reference=Og5wcmVmZXJlbmNlSXRlbVAAWg5wcmVmZXJlbmNlSXRlbQ==',
        widgetClassName: 'preferenceItem',
      );
}
