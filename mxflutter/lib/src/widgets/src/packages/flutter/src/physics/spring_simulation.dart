//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/physics/spring_simulation.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/src/physics/simulation.dart' ;
import 'package:flutter/src/physics/tolerance.dart' ;
import 'package:flutter/src/physics/utils.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSpringSimulationSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_springDescription.funName] = _springDescription;
  m[_springDescription_withDampingRatio.funName] = _springDescription_withDampingRatio;
  m[_springType.funName] = _springType;
  m[_springSimulation.funName] = _springSimulation;
  m[_scrollSpringSimulation.funName] = _scrollSpringSimulation;
  return m;
}
var _springDescription = MXFunctionInvoke(
    "SpringDescription",
    (
      {
      dynamic mass,
      dynamic stiffness,
      dynamic damping,
      }
    ) =>
      SpringDescription(
      mass: mass?.toDouble(),
      stiffness: stiffness?.toDouble(),
      damping: damping?.toDouble(),
    ),
);
var _springDescription_withDampingRatio = MXFunctionInvoke(
  "SpringDescription.withDampingRatio",
    (
      {
      dynamic mass,
      dynamic stiffness,
      dynamic ratio = 1.0,
      }
    ) =>
      SpringDescription.withDampingRatio(
      mass: mass?.toDouble(),
      stiffness: stiffness?.toDouble(),
      ratio: ratio?.toDouble(),
    ),
);
var _springType = MXFunctionInvoke(
    "SpringType",
    ({Map args}) => MXSpringType.parse(args),
  );
var _springSimulation = MXFunctionInvoke(
    "SpringSimulation",
    (
      {
      SpringDescription spring,
      dynamic start,
      dynamic end,
      dynamic velocity,
      Tolerance tolerance,
      }
    ) =>
      SpringSimulation(
      spring,
      start?.toDouble(),
      end?.toDouble(),
      velocity?.toDouble(),
      tolerance: tolerance,
    ),
);
var _scrollSpringSimulation = MXFunctionInvoke(
    "ScrollSpringSimulation",
    (
      {
      SpringDescription spring,
      dynamic start,
      dynamic end,
      dynamic velocity,
      Tolerance tolerance,
      }
    ) =>
      ScrollSpringSimulation(
      spring,
      start?.toDouble(),
      end?.toDouble(),
      velocity?.toDouble(),
      tolerance: tolerance,
    ),
);
class MXSpringType {
  static Map str2VMap = {
    'SpringType.criticallyDamped': SpringType.criticallyDamped,
    'SpringType.underDamped': SpringType.underDamped,
    'SpringType.overDamped': SpringType.overDamped,
  };
  static SpringType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
