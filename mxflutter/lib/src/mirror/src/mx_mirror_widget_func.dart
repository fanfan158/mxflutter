import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/widgets/mx_widgets.dart';
import 'package:mxflutter/src/widgets/src/packages/flutter/src/foundation/collections.dart';
import 'package:mxflutter/src/pkg/cached_network_image/mx_json_proxy_cached_network_image.dart';
import 'package:mxflutter/src/pkg/pull_to_refresh/mx_json_proxy_pull_to_refresh.dart';

/// 注册widget方法
void registerMirrorWidgetFunc() {
  // mx_dart_sdk
  MXMirrorFunc.getInstance().registerBizFunction(registerMxDartSdkSeries());
  
  //TODO: 待删除
  // Image
//  MXMirrorFunc.getInstance().registerBizFunction(registerImageSeriesOld());
//
//  // Meterial
//  MXMirrorFunc.getInstance().registerBizFunction(registerMaterialSeriesOld());
//
//  // Layout
//  MXMirrorFunc.getInstance().registerBizFunction(registerLayoutSeriesOld());


  // flutter/animation
  MXMirrorFunc.getInstance().registerBizFunction(registerAnimationLibrarySeries());
  // flutter/cupertino
  MXMirrorFunc.getInstance().registerBizFunction(registerCupertinoLibrarySeries());
  // flutter/foundation
  MXMirrorFunc.getInstance().registerBizFunction(registerFoundationLibrarySeries());
  // flutter/gestures
  MXMirrorFunc.getInstance().registerBizFunction(registerGesturesLibrarySeries());
  // flutter/material
  MXMirrorFunc.getInstance().registerBizFunction(registerMaterialLibrarySeries());
  // flutter/painting
  MXMirrorFunc.getInstance().registerBizFunction(registerPaintingLibrarySeries());
  // flutter/physics
  MXMirrorFunc.getInstance().registerBizFunction(registerPhysicsLibrarySeries());
  // flutter/rendering
  MXMirrorFunc.getInstance().registerBizFunction(registerRenderingLibrarySeries());
  // flutter/scheduler
  MXMirrorFunc.getInstance().registerBizFunction(registerSchedulerLibrarySeries());
  // flutter/semantics
  MXMirrorFunc.getInstance().registerBizFunction(registerSemanticsLibrarySeries());
  // flutter/services
  MXMirrorFunc.getInstance().registerBizFunction(registerServicesLibrarySeries());
  // flutter/widgets
  MXMirrorFunc.getInstance().registerBizFunction(registerWidgetsLibrarySeries());


  // 第三方库
  // cache_network_image
  MXMirrorFunc.getInstance().registerBizFunction(registerCachedNetworkImageSeries());

  // pull_to_refresh
}
