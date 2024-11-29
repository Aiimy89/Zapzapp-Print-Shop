import '/flutter_flow/flutter_flow_util.dart';
import 'address_postage_widget.dart' show AddressPostageWidget;
import 'package:flutter/material.dart';

class AddressPostageModel extends FlutterFlowModel<AddressPostageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
