import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'template_detail_page_widget.dart' show TemplateDetailPageWidget;
import 'package:flutter/material.dart';

class TemplateDetailPageModel
    extends FlutterFlowModel<TemplateDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SizeDD widget.
  String? sizeDDValue;
  FormFieldController<String>? sizeDDValueController;
  // State field(s) for TypeDD widget.
  String? typeDDValue;
  FormFieldController<String>? typeDDValueController;
  // State field(s) for RadioButtonShipment widget.
  FormFieldController<String>? radioButtonShipmentValueController;
  // State field(s) for DesignDD widget.
  String? designDDValue;
  FormFieldController<String>? designDDValueController;
  // State field(s) for RemarksTextField widget.
  FocusNode? remarksTextFieldFocusNode;
  TextEditingController? remarksTextFieldTextController;
  String? Function(BuildContext, String?)?
      remarksTextFieldTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    remarksTextFieldFocusNode?.dispose();
    remarksTextFieldTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonShipmentValue =>
      radioButtonShipmentValueController?.value;
}
