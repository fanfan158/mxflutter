//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerLocalizationsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_defaultWidgetsLocalizations.funName] = _defaultWidgetsLocalizations;
  m[_localizations.funName] = _localizations;
  m[_localizations_override.funName] = _localizations_override;
  return m;
}
var _defaultWidgetsLocalizations = MXFunctionInvoke(
    "DefaultWidgetsLocalizations",
    (
    ) =>
      DefaultWidgetsLocalizations(
    ),
);
var _localizations = MXFunctionInvoke(
    "Localizations",
    (
      {
      Key key,
      Locale locale,
      dynamic delegates,
      Widget child,
      }
    ) =>
      Localizations(
      key: key,
      locale: locale,
      delegates: toListT<LocalizationsDelegate<dynamic>>(delegates),
      child: child,
    ),
);
var _localizations_override = MXFunctionInvoke(
  "Localizations.override",
    (
      {
      Key key,
      BuildContext context,
      Locale locale,
      dynamic delegates,
      Widget child,
      }
    ) =>
      Localizations.override(
      key: key,
      context: context,
      locale: locale,
      delegates: toListT<LocalizationsDelegate<dynamic>>(delegates),
      child: child,
    ),
);
