import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'empty_state_widget.dart' show EmptyStateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmptyStateModel extends FlutterFlowModel<EmptyStateWidget> {
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
          'icon': debugSerializeParam(
            widget?.icon,
            ParamType.Widget,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=emptyState',
            searchReference:
                'reference=ShoKDgoEaWNvbhIGZHMzYTBrcggICyABKgIwAlAAWgRpY29u',
            name: 'Widget',
            nullable: true,
          ),
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=emptyState',
            searchReference:
                'reference=ShcKDwoFdGl0bGUSBnR6enlhZnIECAMgAVAAWgV0aXRsZQ==',
            name: 'String',
            nullable: true,
          ),
          'description': debugSerializeParam(
            widget?.description,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=emptyState',
            searchReference:
                'reference=Sh0KFQoLZGVzY3JpcHRpb24SBjhncWRqa3IECAMgAVAAWgtkZXNjcmlwdGlvbg==',
            name: 'String',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=emptyState',
        searchReference: 'reference=OgplbXB0eVN0YXRlUABaCmVtcHR5U3RhdGU=',
        widgetClassName: 'emptyState',
      );
}
