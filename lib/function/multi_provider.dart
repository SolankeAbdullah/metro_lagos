import 'package:flutter/widgets.dart';

class MultiProvider extends StatelessWidget {
  final List providers;
  final Widget child;

  const MultiProvider({
    Key? key,
    required this.providers,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget result = child;
    for (var provider in providers.reversed) {
      result = provider.copyWithChild(result);
    }
    return result;
  }
}
