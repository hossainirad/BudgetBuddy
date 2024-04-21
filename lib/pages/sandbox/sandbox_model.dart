import '/flutter_flow/flutter_flow_util.dart';
import 'sandbox_widget.dart' show SandboxWidget;
import 'package:flutter/material.dart';

class SandboxModel extends FlutterFlowModel<SandboxWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
