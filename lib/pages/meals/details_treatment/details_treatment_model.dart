import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'details_treatment_widget.dart' show DetailsTreatmentWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsTreatmentModel extends FlutterFlowModel<DetailsTreatmentWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? _switchListTileValue;
  set switchListTileValue(bool? value) {
    _switchListTileValue = value;
    debugLogWidgetClass(this);
  }

  bool? get switchListTileValue => _switchListTileValue;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    debugLogWidgetClass(this);
  }

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        widgetParameters: {
          'name': debugSerializeParam(
            widget?.name,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
            searchReference:
                'reference=ShYKDgoEbmFtZRIGZ25jMnlycgQIAyABUAFaBG5hbWU=',
            name: 'String',
            nullable: true,
          ),
          'description': debugSerializeParam(
            widget?.description,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
            searchReference:
                'reference=Sh0KFQoLZGVzY3JpcHRpb24SBnE0bXprcnIECAMgAVABWgtkZXNjcmlwdGlvbg==',
            name: 'String',
            nullable: true,
          ),
          'posologie': debugSerializeParam(
            widget?.posologie,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
            searchReference:
                'reference=ShsKEwoJcG9zb2xvZ2llEgZjOTZlOG9yBAgBIAFQAVoJcG9zb2xvZ2ll',
            name: 'int',
            nullable: true,
          ),
          'endDate': debugSerializeParam(
            widget?.endDate,
            ParamType.DateTime,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
            searchReference:
                'reference=ShkKEQoHZW5kRGF0ZRIGNGV0dDBkcgQICCABUAFaB2VuZERhdGU=',
            name: 'DateTime',
            nullable: true,
          ),
          'notified': debugSerializeParam(
            widget?.notified,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
            searchReference:
                'reference=ShoKEgoIbm90aWZpZWQSBnYzZG13anIECAUgAVABWghub3RpZmllZA==',
            name: 'bool',
            nullable: true,
          )
        }.withoutNulls,
        widgetStates: {
          'switchListTileValue': debugSerializeParam(
            switchListTileValue,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=DetailsTreatment',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=DetailsTreatment',
        searchReference:
            'reference=OhBEZXRhaWxzVHJlYXRtZW50UAFaEERldGFpbHNUcmVhdG1lbnQ=',
        widgetClassName: 'DetailsTreatment',
      );
}
