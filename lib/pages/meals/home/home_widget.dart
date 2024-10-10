import '/backend/backend.dart';
import '/components/treatment_element_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  /// i want to have a query to get a list of the treatment collection, and for
  /// each element, display the treatment element. How can i do ?
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with RouteAware {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'home'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, DebugModalRoute.of(context)!);
    debugLogGlobalProperty(context);
  }

  @override
  void didPopNext() {
    safeSetState(() => _model.isRouteVisible = true);
    debugLogWidgetClass(_model);
  }

  @override
  void didPush() {
    safeSetState(() => _model.isRouteVisible = true);
    debugLogWidgetClass(_model);
  }

  @override
  void didPop() {
    _model.isRouteVisible = false;
  }

  @override
  void didPushNext() {
    _model.isRouteVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '0a826vhb' /* Mes traitements */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StreamBuilder<List<TreatmentRecord>>(
                stream: queryTreatmentRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<TreatmentRecord> listViewTreatmentRecordList =
                      snapshot.data!;

                  _model.debugBackendQueries[
                          'listViewTreatmentRecordList_ListView_d3bau1x7${listViewTreatmentRecordList.length > 100 ? ' (first 100)' : ''}'] =
                      debugSerializeParam(
                    listViewTreatmentRecordList.take(100),
                    ParamType.Document,
                    isList: true,
                    link:
                        'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=home',
                    name: 'treatment',
                    nullable: false,
                  );
                  debugLogWidgetClass(_model);

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewTreatmentRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewTreatmentRecord =
                          listViewTreatmentRecordList[listViewIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'HOME_PAGE_Container_0c7x23cj_ON_TAP');
                          logFirebaseEvent('TreatmentElement_navigate_to');

                          context.pushNamed(
                            'DetailsTreatment',
                            queryParameters: {
                              'name': serializeParam(
                                listViewTreatmentRecord.name,
                                ParamType.String,
                              ),
                              'description': serializeParam(
                                listViewTreatmentRecord.description,
                                ParamType.String,
                              ),
                              'endDate': serializeParam(
                                listViewTreatmentRecord.endDate,
                                ParamType.DateTime,
                              ),
                              'notified': serializeParam(
                                listViewTreatmentRecord.reminder,
                                ParamType.bool,
                              ),
                              'posologie': serializeParam(
                                listViewTreatmentRecord.frequency,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.treatmentElementModels.getModel(
                            listViewTreatmentRecord.reference.id,
                            listViewIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          child: Builder(builder: (_) {
                            return DebugFlutterFlowModelContext(
                              rootModel: _model.rootModel,
                              child: TreatmentElementWidget(
                                key: Key(
                                  'Key0c7_${listViewTreatmentRecord.reference.id}',
                                ),
                                name: listViewTreatmentRecord.name,
                                subName: listViewTreatmentRecord.description,
                              ),
                            );
                          }),
                        ),
                      );
                    },
                  );
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent('HOME_AJOUTER_UN_TRAITEMENT_BTN_ON_TAP');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed('addTreatment');
                    },
                    text: FFLocalizations.of(context).getText(
                      'gyglcmdl' /* Ajouter un traitement */,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Manrope',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ].divide(SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
