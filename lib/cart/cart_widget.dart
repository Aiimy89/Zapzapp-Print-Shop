import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
export 'cart_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  late CartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFFB02038),
          automaticallyImplyLeading: false,
          title: Text(
            'Cart',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Urbanist',
                  color: Colors.white,
                  fontSize: 32.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Builder(
                          builder: (context) {
                            final cartItem = FFAppState().cart.toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              primary: false,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: cartItem.length,
                              itemBuilder: (context, cartItemIndex) {
                                final cartItemItem = cartItem[cartItemIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: StreamBuilder<TemplateRecord>(
                                    stream: TemplateRecord.getDocument(
                                        cartItemItem.itemRef!),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return const Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: SpinKitFoldingCube(
                                              color: Color(0xFFCA1D28),
                                              size: 50.0,
                                            ),
                                          ),
                                        );
                                      }

                                      final containerTemplateRecord =
                                          snapshot.data!;

                                      return Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x320E151B),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 2.0, 8.0, 2.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType
                                                          .fade,
                                                      child:
                                                          FlutterFlowExpandedImageView(
                                                        image: Image.network(
                                                          containerTemplateRecord
                                                              .image,
                                                          fit: BoxFit.contain,
                                                        ),
                                                        allowRotation: false,
                                                        tag:
                                                            containerTemplateRecord
                                                                .image,
                                                        useHeroAnimation: true,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Hero(
                                                  tag: containerTemplateRecord
                                                      .image,
                                                  transitionOnUserGestures:
                                                      true,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      containerTemplateRecord
                                                          .image,
                                                      width: 80.0,
                                                      height: 80.0,
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  '${containerTemplateRecord.name}: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text: cartItemItem
                                                                  .design,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Ubuntu',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Code: ${cartItemItem.code}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Manrope',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Manrope',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        formatNumber(
                                                          cartItemItem.price,
                                                          formatType:
                                                              FormatType.custom,
                                                          currency: 'RM ',
                                                          format: '',
                                                          locale: '',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodySmall
                                                            .override(
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Quantity:  ${cartItemItem.quantity.toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Manrope',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                      Text(
                                                        cartItemItem.remarks,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lora',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .warning,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 40.0,
                                                icon: const Icon(
                                                  Icons.delete_outline_rounded,
                                                  color: Color(0xFFE86969),
                                                  size: 20.0,
                                                ),
                                                onPressed: () async {
                                                  FFAppState()
                                                      .removeAtIndexFromCart(
                                                          cartItemIndex);
                                                  FFAppState()
                                                      .cartSum = FFAppState()
                                                          .cartSum +
                                                      functions.deleteCartItem(
                                                          cartItemItem.price);
                                                  FFAppState().update(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (FFAppState().cart.isNotEmpty)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: FFButtonWidget(
                    onPressed: (FFAppState().cart.length > 1)
                        ? null
                        : () async {
                            context.pushNamed('paymentPage');
                          },
                    text: 'Checkout : ${formatNumber(
                      FFAppState().cartSum,
                      formatType: FormatType.custom,
                      currency: 'RM ',
                      format: '',
                      locale: '',
                    )}',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 50.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFCE455E),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Manrope',
                                color: Colors.white,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 5.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                      disabledColor: const Color(0xFFAFBDC5),
                      disabledTextColor:
                          FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                ),
              if (FFAppState().cart.length > 1)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: Text(
                    'Please check out one item per order',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Rubik',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
