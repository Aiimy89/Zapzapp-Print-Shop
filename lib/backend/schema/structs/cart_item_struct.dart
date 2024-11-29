// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends FFFirebaseStruct {
  CartItemStruct({
    DocumentReference? itemRef,
    int? quantity,
    String? remarks,
    double? price,
    String? code,
    String? name,
    String? design,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemRef = itemRef,
        _quantity = quantity,
        _remarks = remarks,
        _price = price,
        _code = code,
        _name = name,
        _design = design,
        super(firestoreUtilData);

  // "itemRef" field.
  DocumentReference? _itemRef;
  DocumentReference? get itemRef => _itemRef;
  set itemRef(DocumentReference? val) => _itemRef = val;

  bool hasItemRef() => _itemRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  set remarks(String? val) => _remarks = val;

  bool hasRemarks() => _remarks != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "design" field.
  String? _design;
  String get design => _design ?? '';
  set design(String? val) => _design = val;

  bool hasDesign() => _design != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        itemRef: data['itemRef'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        remarks: data['remarks'] as String?,
        price: castToType<double>(data['price']),
        code: data['code'] as String?,
        name: data['name'] as String?,
        design: data['design'] as String?,
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'itemRef': _itemRef,
        'quantity': _quantity,
        'remarks': _remarks,
        'price': _price,
        'code': _code,
        'name': _name,
        'design': _design,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'itemRef': serializeParam(
          _itemRef,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'design': serializeParam(
          _design,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        itemRef: deserializeParam(
          data['itemRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products', 'template'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        remarks: deserializeParam(
          data['remarks'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        design: deserializeParam(
          data['design'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        itemRef == other.itemRef &&
        quantity == other.quantity &&
        remarks == other.remarks &&
        price == other.price &&
        code == other.code &&
        name == other.name &&
        design == other.design;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([itemRef, quantity, remarks, price, code, name, design]);
}

CartItemStruct createCartItemStruct({
  DocumentReference? itemRef,
  int? quantity,
  String? remarks,
  double? price,
  String? code,
  String? name,
  String? design,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartItemStruct(
      itemRef: itemRef,
      quantity: quantity,
      remarks: remarks,
      price: price,
      code: code,
      name: name,
      design: design,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartItemStruct? updateCartItemStruct(
  CartItemStruct? cartItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartItemStructData(
  Map<String, dynamic> firestoreData,
  CartItemStruct? cartItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartItem == null) {
    return;
  }
  if (cartItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartItemData = getCartItemFirestoreData(cartItem, forFieldValue);
  final nestedData = cartItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartItemFirestoreData(
  CartItemStruct? cartItem, [
  bool forFieldValue = false,
]) {
  if (cartItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartItem.toMap());

  // Add any Firestore field values
  cartItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartItemListFirestoreData(
  List<CartItemStruct>? cartItems,
) =>
    cartItems?.map((e) => getCartItemFirestoreData(e, true)).toList() ?? [];
