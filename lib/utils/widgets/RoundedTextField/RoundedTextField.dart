import 'package:flutter/material.dart';
import 'package:minutodoaprendizado/utils/theme/themes.dart';

class RoundedTextField extends StatelessWidget {
  RoundedTextField({
    @required this.textController,
    @required this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.onIconTap,
    this.icon,
    this.keyboardType,
    this.textInputAction,
    this.padding = EdgeInsets.zero,
    this.obscureText = false,
  });

  final TextEditingController textController;
  final String hintText;
  final Icon icon;
  final Function onIconTap;
  final TextInputType keyboardType;
  final bool obscureText;
  final Function onChanged;
  final Function onSubmitted;
  final EdgeInsets padding;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      
      textInputAction: textInputAction ?? TextInputAction.search,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: keyboardType,
      enableSuggestions: true,
      enableInteractiveSelection: true,
      textAlign: TextAlign.center,
      showCursor: false,
      maxLines: 1,

      autocorrect: true,
      obscureText: obscureText,
      cursorColor: Colors.white,
      style: Theme.of(context).textTheme.bodyText2,
      decoration: InputDecoration(
        contentPadding: padding,
        suffixIcon: icon != null
            ? IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                color: Colors.white,
                icon: icon,
                iconSize: 30.0,
                onPressed: () {
                  onIconTap();
                  debugPrint(textController.text);
                },
              )
            : null,
        filled: true,
        fillColor: Theme.of(context).primaryColor,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.button,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      onSubmitted: (_) {
        onSubmitted != null ? onSubmitted() : null;
      },
      onChanged: (_) {
        onChanged != null ? onChanged() : null;
        // debugPrint(textController.text);
      },
    );
  }
}
