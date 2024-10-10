import '/backend/backend.dart';
import '/components/treatment_element_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'accueil_widget.dart' show AccueilWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccueilModel extends FlutterFlowModel<AccueilWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for TreatmentElement dynamic component.
  late FlutterFlowDynamicModels<TreatmentElementModel> treatmentElementModels;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    treatmentElementModels =
        FlutterFlowDynamicModels(() => TreatmentElementModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    treatmentElementModels.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
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
          'treatmentElementModels (List<TreatmentElement>)':
              treatmentElementModels?.toDynamicWidgetClassDebugData(),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=Accueil',
        searchReference: 'reference=OgdBY2N1ZWlsUAFaB0FjY3VlaWw=',
        widgetClassName: 'Accueil',
      );
}
