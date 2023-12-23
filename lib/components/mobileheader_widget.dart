import '/components/dropdown_mobile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'mobileheader_model.dart';
export 'mobileheader_model.dart';

class MobileheaderWidget extends StatefulWidget {
  const MobileheaderWidget({super.key});

  @override
  _MobileheaderWidgetState createState() => _MobileheaderWidgetState();
}

class _MobileheaderWidgetState extends State<MobileheaderWidget> {
  late MobileheaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileheaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 30.0,
                  buttonSize: 50.0,
                  icon: Icon(
                    Icons.menu_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    setState(() {
                      _model.showmenu = true;
                    });
                  },
                ),
                Stack(
                  children: [
                    if (Theme.of(context).brightness == Brightness.light)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cropped_White.png',
                          height: 50.0,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    if (Theme.of(context).brightness == Brightness.dark)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Main2.png',
                          height: 50.0,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                  ],
                ),
                FlutterFlowIconButton(
                  borderRadius: 30.0,
                  icon: Icon(
                    Icons.search_rounded,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ),
          if (_model.showmenu == true)
            wrapWithModel(
              model: _model.dropdownMobileModel,
              updateCallback: () => setState(() {}),
              child: const DropdownMobileWidget(),
            ),
        ],
      ),
    );
  }
}
