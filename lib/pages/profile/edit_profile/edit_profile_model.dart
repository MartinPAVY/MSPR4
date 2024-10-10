import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/custom_appbar_widget.dart';
import '/components/title_with_subtitle/title_with_subtitle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  Local state fields for this page.

  bool _unsavedChanges = false;
  set unsavedChanges(bool value) {
    _unsavedChanges = value;
    debugLogWidgetClass(this);
  }

  bool get unsavedChanges => _unsavedChanges;

  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  // Model for titleWithSubtitle component.
  late TitleWithSubtitleModel titleWithSubtitleModel1;
  // Model for titleWithSubtitle component.
  late TitleWithSubtitleModel titleWithSubtitleModel2;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  final Map<String, DebugDataField> debugGeneratorVariables = {};
  final Map<String, DebugDataField> debugBackendQueries = {};
  final Map<String, FlutterFlowModel> widgetBuilderComponents = {};
  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    titleWithSubtitleModel1 =
        createModel(context, () => TitleWithSubtitleModel());
    titleWithSubtitleModel2 =
        createModel(context, () => TitleWithSubtitleModel());

    debugLogWidgetClass(this);
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    titleWithSubtitleModel1.dispose();
    titleWithSubtitleModel2.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }

  @override
  WidgetClassDebugData toWidgetClassDebugData() => WidgetClassDebugData(
        localStates: {
          'unsavedChanges': debugSerializeParam(
            unsavedChanges,
            ParamType.bool,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditProfile',
            searchReference:
                'reference=QiEKFwoOdW5zYXZlZENoYW5nZXMSBWg4dGNuKgByBAgFIAFQAVoOdW5zYXZlZENoYW5nZXNiC0VkaXRQcm9maWxl',
            name: 'bool',
            nullable: false,
          )
        },
        widgetStates: {
          'fullNameText': debugSerializeParam(
            fullNameTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditProfile',
            name: 'String',
            nullable: true,
          ),
          'emailAddressText': debugSerializeParam(
            emailAddressTextController?.text,
            ParamType.String,
            link:
                'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=EditProfile',
            name: 'String',
            nullable: true,
          )
        },
        generatorVariables: debugGeneratorVariables,
        backendQueries: debugBackendQueries,
        componentStates: {
          'customAppbarModel (customAppbar)':
              customAppbarModel?.toWidgetClassDebugData(),
          'titleWithSubtitleModel1 (titleWithSubtitle)':
              titleWithSubtitleModel1?.toWidgetClassDebugData(),
          'titleWithSubtitleModel2 (titleWithSubtitle)':
              titleWithSubtitleModel2?.toWidgetClassDebugData(),
          ...widgetBuilderComponents.map(
            (key, value) => MapEntry(
              key,
              value.toWidgetClassDebugData(),
            ),
          ),
        }.withoutNulls,
        link:
            'https://app.flutterflow.io/project/med-reminders-9qcana/tab=uiBuilder&page=EditProfile',
        searchReference: 'reference=OgtFZGl0UHJvZmlsZVABWgtFZGl0UHJvZmlsZQ==',
        widgetClassName: 'EditProfile',
      );
}
