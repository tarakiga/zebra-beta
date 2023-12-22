import '/components/header_widget.dart';
import '/components/mobileheader_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_widget.dart' show AboutWidget;
import 'package:flutter/material.dart';

class AboutModel extends FlutterFlowModel<AboutWidget> {
  ///  Local state fields for this page.

  bool role = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for mobileheader component.
  late MobileheaderModel mobileheaderModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    mobileheaderModel = createModel(context, () => MobileheaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    mobileheaderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
