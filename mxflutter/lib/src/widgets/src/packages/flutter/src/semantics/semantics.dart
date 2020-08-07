//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/semantics/semantics.dart';
import 'dart:math' as math;
import 'dart:typed_data' ;
import 'dart:ui' as ui;
import 'dart:ui' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/painting.dart' ;
import 'package:flutter/services.dart' ;
import 'package:vector_math/vector_math_64.dart' ;
import 'package:flutter/src/semantics/binding.dart' ;
import 'package:flutter/src/semantics/semantics_event.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSemanticsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_semanticsTag.funName] = _semanticsTag;
  m[_customSemanticsAction.funName] = _customSemanticsAction;
  m[_customSemanticsAction_overridingAction.funName] = _customSemanticsAction_overridingAction;
  m[_semanticsData.funName] = _semanticsData;
  m[_semanticsHintOverrides.funName] = _semanticsHintOverrides;
  m[_semanticsProperties.funName] = _semanticsProperties;
  m[_semanticsNode.funName] = _semanticsNode;
  m[_semanticsNode_root.funName] = _semanticsNode_root;
  m[_semanticsOwner.funName] = _semanticsOwner;
  m[_semanticsConfiguration.funName] = _semanticsConfiguration;
  m[_debugSemanticsDumpOrder.funName] = _debugSemanticsDumpOrder;
  m[_semanticsSortKey.funName] = _semanticsSortKey;
  m[_ordinalSortKey.funName] = _ordinalSortKey;
  return m;
}
var _semanticsTag = MXFunctionInvoke(
    "SemanticsTag",
    (
      {
      String name,
      }
    ) =>
      SemanticsTag(
      name,
    ),
);
var _customSemanticsAction = MXFunctionInvoke(
    "CustomSemanticsAction",
    (
      {
      String label,
      }
    ) =>
      CustomSemanticsAction(
      label: label,
    ),
);
var _customSemanticsAction_overridingAction = MXFunctionInvoke(
  "CustomSemanticsAction.overridingAction",
    (
      {
      String hint,
      SemanticsAction action,
      }
    ) =>
      CustomSemanticsAction.overridingAction(
      hint: hint,
      action: action,
    ),
);
var _semanticsData = MXFunctionInvoke(
    "SemanticsData",
    (
      {
      int flags,
      int actions,
      String label,
      String increasedValue,
      String value,
      String decreasedValue,
      String hint,
      TextDirection textDirection,
      Rect rect,
      dynamic elevation,
      dynamic thickness,
      TextSelection textSelection,
      int scrollIndex,
      int scrollChildCount,
      dynamic scrollPosition,
      dynamic scrollExtentMax,
      dynamic scrollExtentMin,
      int platformViewId,
      int maxValueLength,
      int currentValueLength,
      Set<SemanticsTag> tags,
      Matrix4 transform,
      List<int> customSemanticsActionIds,
      }
    ) =>
      SemanticsData(
      flags: flags,
      actions: actions,
      label: label,
      increasedValue: increasedValue,
      value: value,
      decreasedValue: decreasedValue,
      hint: hint,
      textDirection: textDirection,
      rect: rect,
      elevation: elevation?.toDouble(),
      thickness: thickness?.toDouble(),
      textSelection: textSelection,
      scrollIndex: scrollIndex,
      scrollChildCount: scrollChildCount,
      scrollPosition: scrollPosition?.toDouble(),
      scrollExtentMax: scrollExtentMax?.toDouble(),
      scrollExtentMin: scrollExtentMin?.toDouble(),
      platformViewId: platformViewId,
      maxValueLength: maxValueLength,
      currentValueLength: currentValueLength,
      tags: tags,
      transform: transform,
      customSemanticsActionIds: customSemanticsActionIds,
    ),
);
var _semanticsHintOverrides = MXFunctionInvoke(
    "SemanticsHintOverrides",
    (
      {
      String onTapHint,
      String onLongPressHint,
      }
    ) =>
      SemanticsHintOverrides(
      onTapHint: onTapHint,
      onLongPressHint: onLongPressHint,
    ),
);
var _semanticsProperties = MXFunctionInvoke(
    "SemanticsProperties",
    (
      {
      bool enabled,
      bool checked,
      bool selected,
      bool toggled,
      bool button,
      bool link,
      bool header,
      bool textField,
      bool readOnly,
      bool focusable,
      bool focused,
      bool inMutuallyExclusiveGroup,
      bool hidden,
      bool obscured,
      bool multiline,
      bool scopesRoute,
      bool namesRoute,
      bool image,
      bool liveRegion,
      int maxValueLength,
      int currentValueLength,
      String label,
      String value,
      String increasedValue,
      String decreasedValue,
      String hint,
      SemanticsHintOverrides hintOverrides,
      TextDirection textDirection,
      SemanticsSortKey sortKey,
      dynamic onTap,
      dynamic onLongPress,
      dynamic onScrollLeft,
      dynamic onScrollRight,
      dynamic onScrollUp,
      dynamic onScrollDown,
      dynamic onIncrease,
      dynamic onDecrease,
      dynamic onCopy,
      dynamic onCut,
      dynamic onPaste,
      dynamic onMoveCursorForwardByCharacter,
      dynamic onMoveCursorBackwardByCharacter,
      dynamic onMoveCursorForwardByWord,
      dynamic onMoveCursorBackwardByWord,
      dynamic onSetSelection,
      dynamic onDidGainAccessibilityFocus,
      dynamic onDidLoseAccessibilityFocus,
      dynamic onDismiss,
      Map<CustomSemanticsAction, void Function()> customSemanticsActions,
      }
    ) =>
      SemanticsProperties(
      enabled: enabled,
      checked: checked,
      selected: selected,
      toggled: toggled,
      button: button,
      link: link,
      header: header,
      textField: textField,
      readOnly: readOnly,
      focusable: focusable,
      focused: focused,
      inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
      hidden: hidden,
      obscured: obscured,
      multiline: multiline,
      scopesRoute: scopesRoute,
      namesRoute: namesRoute,
      image: image,
      liveRegion: liveRegion,
      maxValueLength: maxValueLength,
      currentValueLength: currentValueLength,
      label: label,
      value: value,
      increasedValue: increasedValue,
      decreasedValue: decreasedValue,
      hint: hint,
      hintOverrides: hintOverrides,
      textDirection: textDirection,
      sortKey: sortKey,
      onTap: createVoidCallbackClosure(_semanticsProperties.buildOwner, onTap),
      onLongPress: createVoidCallbackClosure(_semanticsProperties.buildOwner, onLongPress),
      onScrollLeft: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollLeft),
      onScrollRight: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollRight),
      onScrollUp: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollUp),
      onScrollDown: createVoidCallbackClosure(_semanticsProperties.buildOwner, onScrollDown),
      onIncrease: createVoidCallbackClosure(_semanticsProperties.buildOwner, onIncrease),
      onDecrease: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDecrease),
      onCopy: createVoidCallbackClosure(_semanticsProperties.buildOwner, onCopy),
      onCut: createVoidCallbackClosure(_semanticsProperties.buildOwner, onCut),
      onPaste: createVoidCallbackClosure(_semanticsProperties.buildOwner, onPaste),
      onMoveCursorForwardByCharacter: createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorForwardByCharacter),
      onMoveCursorBackwardByCharacter: createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorBackwardByCharacter),
      onMoveCursorForwardByWord: createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorForwardByWord),
      onMoveCursorBackwardByWord: createValueChangedGenericClosure<bool>(_semanticsProperties.buildOwner, onMoveCursorBackwardByWord),
      onSetSelection: createValueChangedGenericClosure<TextSelection>(_semanticsProperties.buildOwner, onSetSelection),
      onDidGainAccessibilityFocus: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDidGainAccessibilityFocus),
      onDidLoseAccessibilityFocus: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDidLoseAccessibilityFocus),
      onDismiss: createVoidCallbackClosure(_semanticsProperties.buildOwner, onDismiss),
      customSemanticsActions: customSemanticsActions,
    ),
);
var _semanticsNode = MXFunctionInvoke(
    "SemanticsNode",
    (
      {
      Key key,
      dynamic showOnScreen,
      }
    ) =>
      SemanticsNode(
      key: key,
      showOnScreen: createVoidCallbackClosure(_semanticsNode.buildOwner, showOnScreen),
    ),
);
var _semanticsNode_root = MXFunctionInvoke(
  "SemanticsNode.root",
    (
      {
      Key key,
      dynamic showOnScreen,
      SemanticsOwner owner,
      }
    ) =>
      SemanticsNode.root(
      key: key,
      showOnScreen: createVoidCallbackClosure(_semanticsNode_root.buildOwner, showOnScreen),
      owner: owner,
    ),
);
var _semanticsOwner = MXFunctionInvoke(
    "SemanticsOwner",
    (
    ) =>
      SemanticsOwner(
    ),
);
var _semanticsConfiguration = MXFunctionInvoke(
    "SemanticsConfiguration",
    (
    ) =>
      SemanticsConfiguration(
    ),
);
var _debugSemanticsDumpOrder = MXFunctionInvoke(
    "DebugSemanticsDumpOrder",
    ({Map args}) => MXDebugSemanticsDumpOrder.parse(args),
  );
var _semanticsSortKey = MXFunctionInvoke(
    "SemanticsSortKey",
    (
      {
      String name,
      }
    ) =>
      SemanticsSortKey(
      name: name,
    ),
);
var _ordinalSortKey = MXFunctionInvoke(
    "OrdinalSortKey",
    (
      {
      dynamic order,
      String name,
      }
    ) =>
      OrdinalSortKey(
      order?.toDouble(),
      name: name,
    ),
);
class MXDebugSemanticsDumpOrder {
  static Map str2VMap = {
    'DebugSemanticsDumpOrder.inverseHitTest': DebugSemanticsDumpOrder.inverseHitTest,
    'DebugSemanticsDumpOrder.traversalOrder': DebugSemanticsDumpOrder.traversalOrder,
  };
  static DebugSemanticsDumpOrder parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
