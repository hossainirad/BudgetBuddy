import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;
  // State field(s) for CinfirmPasswordField widget.
  FocusNode? cinfirmPasswordFieldFocusNode;
  TextEditingController? cinfirmPasswordFieldTextController;
  late bool cinfirmPasswordFieldVisibility;
  String? Function(BuildContext, String?)?
      cinfirmPasswordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
    cinfirmPasswordFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();

    cinfirmPasswordFieldFocusNode?.dispose();
    cinfirmPasswordFieldTextController?.dispose();
  }
}
