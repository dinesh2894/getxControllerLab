import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

class ThemeService {
  ThemeService._();

  static final instance = ThemeService._();

  factory ThemeService(Reader reader);


  late Reader reader;
}
