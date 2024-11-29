import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double? cartIncrement(
  int quantity,
  double price,
) {
  return quantity * price;
}

double deleteCartItem(double var1) {
  double price = var1 * -1;
  return price;
}

double postage(
  double price,
  String weight,
) {
  if (weight == "heavy") {
    price += 12;
  } else {
    price += 5;
  }

  return price;
}

double postageRemarks(
  double postage,
  String weight,
) {
  if (weight == "heavy") {
    postage = 12;
  } else {
    postage = 5;
  }
  return postage;
}

double sizeIncrement(
  String name,
  List<String> option,
  List<String> size,
  double price,
) {
  if (name == "Sticker") {
    if (option.contains("Mirrorcoat")) {
      if (size.contains("3 cm")) {
        price = 10;
      } else if (size.contains("4 cm")) {
        price = 20;
      } else if (size.contains("5 cm")) {
        price = 30;
      } else if (size.contains("6 cm")) {
        price = 40;
      } else if (size.contains("7 cm")) {
        price = 50;
      } else if (size.contains("8 cm")) {
        price = 70;
      }
    } else if (option.contains("White PP") || option.contains("Transparent")) {
      if (size.contains("3 cm")) {
        price = 12;
      } else if (size.contains("4 cm")) {
        // Fixed missing closing quote
        price = 24;
      } else if (size.contains("5 cm")) {
        price = 36;
      } else if (size.contains("6 cm")) {
        price = 48;
      } else if (size.contains("7 cm")) {
        price = 60;
      } else if (size.contains("8 cm")) {
        price = 84;
      }
    }
  } else if (name == "Bunting") {
    // Moved outside the "Sticker" block
    if (size.contains("2x5 feet")) {
      price = 30;
    } else if (size.contains("2x6 feet")) {
      price = 39;
    }
  } else if (name == "Banner") {
    // Moved outside the "Sticker" block
    if (size.contains("4x2 feet")) {
      price = 24;
    } else if (size.contains("5x2 feet")) {
      price = 30;
    } else if (size.contains("5x3 feet")) {
      price = 45;
    }
  }

  return price;
}
