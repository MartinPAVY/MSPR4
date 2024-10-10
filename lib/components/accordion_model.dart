import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accordion_widget.dart' show AccordionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccordionModel extends FlutterFlowModel<AccordionWidget> {
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
          'expandedAccordionIndex': debugSerializeParam(
            widget?.expandedAccordionIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordion',
            searchReference:
                'reference=SigKIAoWZXhwYW5kZWRBY2NvcmRpb25JbmRleBIGN2Z3c3NwcgQIASABUABaFmV4cGFuZGVkQWNjb3JkaW9uSW5kZXg=',
            name: 'int',
            nullable: true,
          ),
          'accordionIndex': debugSerializeParam(
            widget?.accordionIndex,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordion',
            searchReference:
                'reference=SiAKGAoOYWNjb3JkaW9uSW5kZXgSBm8wd3p6Z3IECAEgAVAAWg5hY2NvcmRpb25JbmRleA==',
            name: 'int',
            nullable: true,
          ),
          'question': debugSerializeParam(
            widget?.question,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordion',
            searchReference:
                'reference=ShoKEgoIcXVlc3Rpb24SBmN6ZHh3M3IECAMgAVAAWghxdWVzdGlvbg==',
            name: 'String',
            nullable: true,
          ),
          'answer': debugSerializeParam(
            widget?.answer,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordion',
            searchReference:
                'reference=ShgKEAoGYW5zd2VyEgZkMHZ4OWJyBAgDIAFQAFoGYW5zd2Vy',
            name: 'String',
            nullable: true,
          ),
          'action': debugSerializeParam(
            widget?.action,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordion',
            searchReference:
                'reference=ShgKEAoGYWN0aW9uEgZkYmN6ZDByBAgVIAFQAFoGYWN0aW9u',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=accordion',
        searchReference: 'reference=OglhY2NvcmRpb25QAFoJYWNjb3JkaW9u',
        widgetClassName: 'accordion',
      );
}
