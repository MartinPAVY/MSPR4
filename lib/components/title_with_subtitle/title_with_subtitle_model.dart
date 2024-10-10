import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'title_with_subtitle_widget.dart' show TitleWithSubtitleWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TitleWithSubtitleModel extends FlutterFlowModel<TitleWithSubtitleWidget> {
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
          'title': debugSerializeParam(
            widget?.title,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=titleWithSubtitle',
            searchReference:
                'reference=ShcKDwoFdGl0bGUSBjU3N2hoNHIECAMgAVAAWgV0aXRsZQ==',
            name: 'String',
            nullable: true,
          ),
          'subtitle': debugSerializeParam(
            widget?.subtitle,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=titleWithSubtitle',
            searchReference:
                'reference=ShoKEgoIc3VidGl0bGUSBjVpNGVldnIECAMgAVAAWghzdWJ0aXRsZQ==',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=titleWithSubtitle',
        searchReference:
            'reference=OhF0aXRsZVdpdGhTdWJ0aXRsZVAAWhF0aXRsZVdpdGhTdWJ0aXRsZQ==',
        widgetClassName: 'titleWithSubtitle',
      );
}
