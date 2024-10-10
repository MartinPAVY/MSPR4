import '/backend/backend.dart';
import '/components/accordion_widget.dart';
import '/components/empty_state/empty_state_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accordion_section_widget.dart' show AccordionSectionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccordionSectionModel extends FlutterFlowModel<AccordionSectionWidget> {
  ///  Local state fields for this component.

  int _accordionSectionExpanded = -1;
  set accordionSectionExpanded(int value) {
    _accordionSectionExpanded = value;
    debugLogWidgetClass(this);
  }

  int get accordionSectionExpanded => _accordionSectionExpanded;

  ///  State fields for stateful widgets in this component.

  // Models for accordion dynamic component.
  Map<String, FlutterFlowModel> accordionModels = {};

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'accordionSectionExpanded': debugSerializeParam(
            accordionSectionExpanded,
            ParamType.int,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=accordionSection',
            searchReference:
                'reference=QikKIQoYYWNjb3JkaW9uU2VjdGlvbkV4cGFuZGVkEgV0ZDZ4d3IECAEgAVAAWhhhY2NvcmRpb25TZWN0aW9uRXhwYW5kZWRiEGFjY29yZGlvblNlY3Rpb24=',
            name: 'int',
            nullable: false,
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
        dynamicComponentStates: {
          'accordionModels (List<accordion>)': DynamicWidgetClassDebugData(
            componentStates: Map.fromIterables(
              List.generate(accordionModels.length, (index) => '[$index]'),
              accordionModels.values.map((e) => e.toWidgetClassDebugData()),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=accordionSection',
        searchReference:
            'reference=OhBhY2NvcmRpb25TZWN0aW9uUABaEGFjY29yZGlvblNlY3Rpb24=',
        widgetClassName: 'accordionSection',
      );
}
