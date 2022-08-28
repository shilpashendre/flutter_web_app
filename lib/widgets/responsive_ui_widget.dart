import 'package:flutter/material.dart';

class ResponsiveUIWidget {
  MediaQueryData? query;

  static ResponsiveUIWidget of(BuildContext context) {
    ResponsiveUIWidget breakPoint = ResponsiveUIWidget()
      ..query = MediaQuery.of(context);
    return breakPoint;
  }

  RenderPlatform get platform {
    if (query!.size.width < 600) {
      return RenderPlatform.MOBILE;
    } else if (query!.size.width < 940) {
      return RenderPlatform.TABLET;
    }
    return RenderPlatform.DESKTOP;
  }

  double get width {
    return query?.size.width ?? 0;
  }

  double get height {
    return query?.size.height ?? 0;
  }
}

enum RenderPlatform {
  DESKTOP,
  TABLET,
  MOBILE,
}
