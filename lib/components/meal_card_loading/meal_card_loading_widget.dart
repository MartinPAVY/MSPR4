import '/components/loader_item/loader_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'meal_card_loading_model.dart';
export 'meal_card_loading_model.dart';

class MealCardLoadingWidget extends StatefulWidget {
  const MealCardLoadingWidget({super.key});

  @override
  State<MealCardLoadingWidget> createState() => _MealCardLoadingWidgetState();
}

class _MealCardLoadingWidgetState extends State<MealCardLoadingWidget>
    with RouteAware {
  late MealCardLoadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCardLoadingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DebugFlutterFlowModelContext.maybeOf(context)
        ?.parentModelCallback
        ?.call(_model);
    _model.loaderItemModels.clear();

    return Builder(
      builder: (context) {
        final loaderItems = List.generate(random_data.randomInteger(0, 0),
                (index) => random_data.randomName(true, true))
            .toList()
            .take(4)
            .toList();
        _model.debugGeneratorVariables[
                'loaderItems${loaderItems.length > 100 ? ' (first 100)' : ''}'] =
            debugSerializeParam(
          loaderItems.take(100),
          ParamType.String,
          isList: true,
          link:
              'https://app.flutterflow.io/project/med-reminders-9qcana?tab=uiBuilder&page=mealCardLoading',
          name: 'String',
          nullable: false,
        );
        debugLogWidgetClass(_model);

        return GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.79,
          ),
          scrollDirection: Axis.vertical,
          itemCount: loaderItems.length,
          itemBuilder: (context, loaderItemsIndex) {
            final loaderItemsItem = loaderItems[loaderItemsIndex];
            return Builder(builder: (_) {
              return DebugFlutterFlowModelContext(
                rootModel: _model.rootModel,
                parentModelCallback: (m) {
                  _model.loaderItemModels[
                      'Keyi8f_${loaderItemsIndex}_of_${loaderItems.length}'] = m;
                },
                child: LoaderItemWidget(
                  key: Key(
                      'Keyi8f_${loaderItemsIndex}_of_${loaderItems.length}'),
                ),
              );
            });
          },
        );
      },
    );
  }
}
