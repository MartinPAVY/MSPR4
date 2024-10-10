import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'treatment_element_widget.dart' show TreatmentElementWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TreatmentElementModel extends FlutterFlowModel<TreatmentElementWidget> {
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
          'name': debugSerializeParam(
            widget?.name,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=TreatmentElement',
            searchReference:
                'reference=ShYKDgoEbmFtZRIGcWw0N2E3cgQIAyABUABaBG5hbWU=',
            name: 'String',
            nullable: true,
          ),
          'subName': debugSerializeParam(
            widget?.subName,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=TreatmentElement',
            searchReference:
                'reference=ShkKEQoHc3ViTmFtZRIGY2ppeGllcgQIAyABUABaB3N1Yk5hbWU=',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=TreatmentElement',
        searchReference:
            'reference=OhBUcmVhdG1lbnRFbGVtZW50UABaEFRyZWF0bWVudEVsZW1lbnQ=',
        widgetClassName: 'TreatmentElement',
      );
}
