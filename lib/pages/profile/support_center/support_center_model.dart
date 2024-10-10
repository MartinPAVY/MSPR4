import '/components/accordion_section/accordion_section_widget.dart';
import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'support_center_widget.dart' show SupportCenterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SupportCenterModel extends FlutterFlowModel<SupportCenterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // Model for accordionSection component.
  late AccordionSectionModel accordionSectionModel;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    accordionSectionModel = createModel(context, () => AccordionSectionModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    accordionSectionModel.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'customAppbarModel (customAppbar)':
              customAppbarModel?.toWidgetClassDebugData(),
          'accordionSectionModel (accordionSection)':
              accordionSectionModel?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=SupportCenter',
        searchReference:
            'reference=Og1TdXBwb3J0Q2VudGVyUAFaDVN1cHBvcnRDZW50ZXI=',
        widgetClassName: 'SupportCenter',
      );
}
