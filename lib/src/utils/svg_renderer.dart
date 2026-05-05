import 'package:flutter/widgets.dart';

/// Configuration for SVG rendering on native platforms
class NativeSvg {
  /// Create an SVG from an asset path
  const NativeSvg.asset(this.assetName, {this.size, this.color}) : string = null;

  /// Create an SVG from a raw SVG string
  const NativeSvg.string(this.string, {this.size, this.color}) : assetName = null;

  /// The name of the asset
  final String? assetName;

  /// The raw SVG string
  final String? string;

  /// Optional size for the SVG
  final double? size;

  /// Optional color to tint the SVG
  final Color? color;
}
