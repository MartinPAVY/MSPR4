import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'custom_appbar_widget.dart' show CustomAppbarWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomAppbarModel extends FlutterFlowModel<CustomAppbarWidget> {
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
          'backButton': debugSerializeParam(
            widget?.backButton,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=ShwKFAoKYmFja0J1dHRvbhIGZHd2aTNpcgQIBSABUABaCmJhY2tCdXR0b24=',
            name: 'bool',
            nullable: true,
          ),
          'actionButton': debugSerializeParam(
            widget?.actionButton,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=SicKFgoMYWN0aW9uQnV0dG9uEgZkazJxZWIqBxIFZmFsc2VyBAgFIABQAFoMYWN0aW9uQnV0dG9u',
            name: 'bool',
            nullable: false,
          ),
          'actionButtonText': debugSerializeParam(
            widget?.actionButtonText,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=SiIKGgoQYWN0aW9uQnV0dG9uVGV4dBIGc3B0YXFvcgQIAyAAUABaEGFjdGlvbkJ1dHRvblRleHQ=',
            name: 'String',
            nullable: true,
          ),
          'actionButtonAction': debugSerializeParam(
            widget?.actionButtonAction,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=SiQKHAoSYWN0aW9uQnV0dG9uQWN0aW9uEgZhNXllaDZyBAgVIABQAFoSYWN0aW9uQnV0dG9uQWN0aW9u',
            name: 'Future Function()',
            nullable: true,
          ),
          'optionsButton': debugSerializeParam(
            widget?.optionsButton,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=SigKFwoNb3B0aW9uc0J1dHRvbhIGdHpmaWU5KgcSBWZhbHNlcgQIBSABUABaDW9wdGlvbnNCdXR0b24=',
            name: 'bool',
            nullable: false,
          ),
          'optionsButtonAction': debugSerializeParam(
            widget?.optionsButtonAction,
            ParamType.Action,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=customAppbar',
            searchReference:
                'reference=SiUKHQoTb3B0aW9uc0J1dHRvbkFjdGlvbhIGdHVsamNkcgQIFSABUABaE29wdGlvbnNCdXR0b25BY3Rpb24=',
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
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=customAppbar',
        searchReference: 'reference=OgxjdXN0b21BcHBiYXJQAFoMY3VzdG9tQXBwYmFy',
        widgetClassName: 'customAppbar',
      );
}
