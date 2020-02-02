import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Constants{
//colors
  static const MaterialColor biru = const MaterialColor(
    0xFF0D47A1,
    const <int, Color>{
      50: const Color(0xFF0D47A1),
      100: const Color(0xFF0D47A1),
      200: const Color(0xFF0D47A1),
      300: const Color(0xFF0D47A1),
      400: const Color(0xFF0D47A1),
      500: const Color(0xFF0D47A1),
      600: const Color(0xFF0D47A1),
      700: const Color(0xFF0D47A1),
      800: const Color(0xFF0D47A1),
      900: const Color(0xFF0D47A1),
    },
  );
  static const Color clr_purple = const Color(0xFF9C27B0);
  static const Color clr_blue = const Color(0xFF548CFF);
  static const Color clr_red = const Color(0xFFF44336);
  static const Color clr_orange = const Color(0xFFFF682D);
  static const Color clr_light_grey = const Color(0xAAD3D3D3);

  static String isOnBoard= "IS_ONBOARD";
  static String isLoggedIn= "IS_LOGGED_IN";
  static String userId = "USER_ID";
  static String namaUser = "NAMA_USER";
  static String namaUnit = "NAMA_UNIT";
  static String namaPPK = "NAMA_PPK";
  static String emailUser = "EMAIL";
  static String hpUser = "HP_USER";
  static String tipeUser = "TIPE_USER";
  static String PPKid = "PPK_ID";
  static String gambar = "GAMBAR";


}