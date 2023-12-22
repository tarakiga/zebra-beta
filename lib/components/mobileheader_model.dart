import '/components/dropdown_mobile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mobileheader_widget.dart' show MobileheaderWidget;
import 'package:flutter/material.dart';

class MobileheaderModel extends FlutterFlowModel<MobileheaderWidget> {
  ///  Local state fields for this component.

  bool showmenu = false;

  ///  State fields for stateful widgets in this component.

  // Model for DropdownMobile component.
  late DropdownMobileModel dropdownMobileModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dropdownMobileModel = createModel(context, () => DropdownMobileModel());
  }

  @override
  void dispose() {
    dropdownMobileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
