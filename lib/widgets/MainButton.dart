import 'package:argik/constants/colors.dart';
import 'package:argik/helpers/context_helper.dart';
import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  const MainButton({
    Key? key,
    this.enabled = true,
    this.withGradient = false,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 10,
    this.textStyle,
    this.height = 55,
    this.icon,
    this.progressIndicatorColor,
    required this.label,
    this.onClick,
  }) : super(key: key);

  final bool enabled;
  final bool withGradient;
  final String label;
  final double height;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? progressIndicatorColor;
  final Future<void> Function()? onClick;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Widget? icon;

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  bool isLoading = false;
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  void dispose() {
    isLoading = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          side: BorderSide.none),
      child: InkWell(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          onTap: (!isLoading && widget.enabled && widget.onClick != null)
              ? () {
                  setState(() {
                    isLoading = true;
                  });

                  widget.onClick?.call().whenComplete(() {
                    setState(() {
                      isLoading = false;
                    });
                  }).onError((Object? e, StackTrace stk) {
                    print(stk);
                  });
                }
              : null,
          child: Ink(
            width: double.infinity,
            height: widget.height,
            decoration: BoxDecoration(
                color: (widget.enabled && widget.onClick != null)
                    ? (widget.backgroundColor != null)
                        ? widget.backgroundColor
                        : cGreen
                    : Colors.grey.shade400,
                gradient: (widget.withGradient &&
                        widget.enabled &&
                        widget.onClick != null)
                    ? gGreenBrown
                    : null,
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 10)),
            child: Container(
                alignment: Alignment.center,
                child: (isLoading)
                    ? Transform.scale(
                        scale: 0.6,
                        child: CircularProgressIndicator(
                          color: widget.progressIndicatorColor,
                        ),
                      )
                    : _getWidget()),
          )),
    );
  }

  Widget _getWidget() {
    if (widget.icon != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 15,
          ),
          widget.icon!,
          const Spacer(),
          Text(
            widget.label,
            style: widget.textStyle ??
                context.tStyle.bodyText1
                    ?.copyWith(color: widget.textColor ?? Colors.white),
          ),
          const Spacer(),
        ],
      );
    } else {
      return Text(
        widget.label,
        style: widget.textStyle ??
            context.tStyle.bodyText1
                ?.copyWith(color: widget.textColor ?? Colors.white),
      );
    }
  }
}

// class IsLoading extends StateNotifier<bool> {
//   IsLoading() : super(false);
//   void toggleLoading(bool value) {
//     state = value;
//   }
// }

// final isLoadingProvider =
//     StateNotifierProvider<IsLoading, bool>((ref) => IsLoading());

// class SwitchProvider extends StateNotifier<bool> {
//   SwitchProvider() : super(false);
//   void toTrue() {
//     print("Toggling ====>$state");
//     state = !state;
//   }

//   void toFalse() {
//     print("Toggling ====>$state");
//     state = false;
//   }

//   bool get isTrue => state == true;
//   bool get isFalse => state == false;
// }

// final switchNotifier = StateNotifierProvider<SwitchProvider, bool>((ref) {
//   return SwitchProvider();
// });
