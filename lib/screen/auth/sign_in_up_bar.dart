import 'package:flutter/material.dart';
import 'package:untitled1/config/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpBar extends StatelessWidget {
  const SignUpBar({
    // required Key key,
    required this.label,
    required this.onPressed,
    required this.isLoading,
  }
  ) ;
      // : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Expanded(
            child: Center(
              child: _LoadingIndicator(isLoading: isLoading),
            ),
          ),
          _RoundContinueButton(onPressed: onPressed),
        ],
      ),
    );
  }
}

class SignInBar extends StatelessWidget {
  const SignInBar({

    required this.label,
    required this.isLoading,
    required this.onPressed,
  }) ;
  final String label;
  final bool isLoading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
              color: Palette.darkBlue,
              fontSize: 24,
            ),
          ),
          Expanded(
            child: Center(
              child: _LoadingIndicator(isLoading: isLoading),
            ),
          ),
          _RoundContinueButton(
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({
    // required Key key,
    required this.isLoading,
  });
      // : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 100),
      child: Visibility(
        visible: isLoading,
        child: const LinearProgressIndicator(
          backgroundColor: Palette.darkBlue,
        ),
      ),
    );
  }
}

class _RoundContinueButton extends StatelessWidget {
  const _RoundContinueButton({
    // required Key key,
    required this.onPressed,
  });
      // : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: Palette.darkBlue,
      splashColor: Palette.darkorange,
      padding: const EdgeInsets.all(22.0),
      shape: const CircleBorder(),
      child: const Icon(
        FontAwesomeIcons.longArrowAltRight,
        color: Colors.white,
        size: 24.0,
      ),
    );
  }
}