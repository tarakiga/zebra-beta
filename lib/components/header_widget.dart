import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    this.homeColor,
    this.homeIcon,
    this.aboutColor,
    this.aboutIcon,
    this.manageColor,
    this.manageIcon,
    this.noticeColor,
    this.noticeIcon,
  });

  final Color? homeColor;
  final Color? homeIcon;
  final Color? aboutColor;
  final Color? aboutIcon;
  final Color? manageColor;
  final Color? manageIcon;
  final Color? noticeColor;
  final Color? noticeIcon;

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 2.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (Theme.of(context).brightness == Brightness.light)
                  Image.asset(
                    'assets/images/Main2.png',
                    height: 80.0,
                    fit: BoxFit.fitHeight,
                  ),
                if (Theme.of(context).brightness == Brightness.dark)
                  Image.asset(
                    'assets/images/cropped_White.png',
                    height: 80.0,
                    fit: BoxFit.fitHeight,
                  ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('feed');
                            },
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: widget.homeColor,
                                borderRadius: BorderRadius.circular(4.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.home_rounded,
                                      color: widget.homeIcon,
                                      size: 28.0,
                                    ),
                                    Text(
                                      'Home',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: widget.homeIcon,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('About');
                            },
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: widget.aboutColor,
                                borderRadius: BorderRadius.circular(5.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.info_sharp,
                                      color: widget.aboutIcon,
                                      size: 28.0,
                                    ),
                                    Text(
                                      'About',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: widget.aboutIcon,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('NoticeBoard');
                            },
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: widget.noticeColor,
                                borderRadius: BorderRadius.circular(5.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.forum_outlined,
                                      color: widget.noticeIcon,
                                      size: 28.0,
                                    ),
                                    Text(
                                      'Notice Board',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: widget.noticeIcon,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('profilePage');
                            },
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: widget.manageColor,
                                borderRadius: BorderRadius.circular(5.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.work_outline_rounded,
                                      color: widget.manageIcon,
                                      size: 28.0,
                                    ),
                                    Text(
                                      'Manage',
                                      style: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: widget.manageIcon,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                          ))
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SelectionArea(
                                    child: Text(
                                  valueOrDefault<String>(
                                    currentUserEmail,
                                    'email',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                )),
                                AuthUserStreamWidget(
                                  builder: (context) => SelectionArea(
                                      child: Text(
                                    valueOrDefault<String>(
                                      currentUserDisplayName,
                                      'name',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: const Color(0xFF57636C),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )),
                                ),
                              ],
                            ),
                          Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE0E3E7),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                                  width: 80.0,
                                  height: 80.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ].divide(const SizedBox(width: 30.0)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
