import 'package:flutter/material.dart';
import 'package:webinerd/enums/device_screen_type.dart';

class SizingInformation {
  final Orientation orientation;
  final DeviceScreenType deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInformation(
      {this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    // TODO: implement toString
    return 'Orientation :--  $orientation \nDeviceType:--  $deviceScreenType   ScreenSize :-- $screenSize  \nLocalWidgetSize:--  $localWidgetSize';
  }
}
