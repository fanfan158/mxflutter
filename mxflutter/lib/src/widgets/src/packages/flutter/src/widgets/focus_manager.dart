//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerFocusManagerSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_unfocusDisposition.funName] = _unfocusDisposition;
  m[_focusNode.funName] = _focusNode;
  m[_focusScopeNode.funName] = _focusScopeNode;
  m[_focusHighlightMode.funName] = _focusHighlightMode;
  m[_focusHighlightStrategy.funName] = _focusHighlightStrategy;
  m[_focusManager.funName] = _focusManager;
  return m;
}
var _unfocusDisposition = MXFunctionInvoke(
    "UnfocusDisposition",
    ({String name, int index}) => MXUnfocusDisposition.parse(name, index),
  );
var _focusNode = MXFunctionInvoke(
    "FocusNode",
    (
      {
      String debugLabel,
      dynamic onKey,
      bool skipTraversal = false,
      bool canRequestFocus = true,
      }
    ) =>
      FocusNode(
      debugLabel: debugLabel,
      onKey: null,
      skipTraversal: skipTraversal,
      canRequestFocus: canRequestFocus,
    ),
);
var _focusScopeNode = MXFunctionInvoke(
    "FocusScopeNode",
    (
      {
      String debugLabel,
      dynamic onKey,
      bool skipTraversal = false,
      bool canRequestFocus = true,
      }
    ) =>
      FocusScopeNode(
      debugLabel: debugLabel,
      onKey: null,
      skipTraversal: skipTraversal,
      canRequestFocus: canRequestFocus,
    ),
);
var _focusHighlightMode = MXFunctionInvoke(
    "FocusHighlightMode",
    ({String name, int index}) => MXFocusHighlightMode.parse(name, index),
  );
var _focusHighlightStrategy = MXFunctionInvoke(
    "FocusHighlightStrategy",
    ({String name, int index}) => MXFocusHighlightStrategy.parse(name, index),
  );
var _focusManager = MXFunctionInvoke(
    "FocusManager",
    (
    ) =>
      FocusManager(
    ),
);
class MXUnfocusDisposition {
  static UnfocusDisposition parse(String name, int index) {
    switch(name) {
      case 'UnfocusDisposition.scope': 
       return UnfocusDisposition.scope;
      case 'UnfocusDisposition.previouslyFocusedChild': 
       return UnfocusDisposition.previouslyFocusedChild;
    }
    return null;
  }
}
class MXFocusHighlightMode {
  static FocusHighlightMode parse(String name, int index) {
    switch(name) {
      case 'FocusHighlightMode.touch': 
       return FocusHighlightMode.touch;
      case 'FocusHighlightMode.traditional': 
       return FocusHighlightMode.traditional;
    }
    return null;
  }
}
class MXFocusHighlightStrategy {
  static FocusHighlightStrategy parse(String name, int index) {
    switch(name) {
      case 'FocusHighlightStrategy.automatic': 
       return FocusHighlightStrategy.automatic;
      case 'FocusHighlightStrategy.alwaysTouch': 
       return FocusHighlightStrategy.alwaysTouch;
      case 'FocusHighlightStrategy.alwaysTraditional': 
       return FocusHighlightStrategy.alwaysTraditional;
    }
    return null;
  }
}
