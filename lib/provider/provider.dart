import 'package:flutter/widgets.dart';

class Provider<T> extends InheritedWidget {
  final T value;

  const Provider({
    Key? key,
    required this.value,
    required Widget child,
  }) : super(key: key, child: child);

  static T of<T>(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<Provider<T>>();
    if (provider == null) {
      throw FlutterError('Provider<$T> not found.');
    }
    return provider.value;
  }

  @override
  bool updateShouldNotify(covariant Provider<T> oldWidget) {
    return value != oldWidget.value;
  }
}
