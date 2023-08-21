import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/src/get_position.dart';

class TooltipWidgetBelowTarget extends StatefulWidget {
  const TooltipWidgetBelowTarget({
    Key? key,
    this.position,
    this.child,
    this.onTooltipTap,
    this.translateOffset = Offset.zero,
  }) : super(key: key);

  final Widget? child;
  final GetPosition? position;
  final Offset? translateOffset;
  final VoidCallback? onTooltipTap;

  @override
  State<TooltipWidgetBelowTarget> createState() =>
      _TooltipWidgetBelowTargetState();
}

class _TooltipWidgetBelowTargetState extends State<TooltipWidgetBelowTarget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: (widget.position?.getBottom() ?? 0) +
          (widget.translateOffset?.dy ?? 0),
      left:
          (widget.position?.getLeft() ?? 0) + (widget.translateOffset?.dx ?? 0),
      child: widget.child!,
    );
  }
}
