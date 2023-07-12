import 'package:flutter/widgets.dart';

class ChangeNotifierProvider<T extends ChangeNotifier> extends InheritedWidget {
  final T notifier;

  const ChangeNotifierProvider({
    Key? key,
    required this.notifier,
    required Widget child,
  }) : super(key: key, child: child);

  static T of<T extends ChangeNotifier>(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<ChangeNotifierProvider<T>>();
    if (provider == null) {
      throw FlutterError('ChangeNotifierProvider<$T> not found.');
    }
    return provider.notifier;
  }

  @override
  bool updateShouldNotify(covariant ChangeNotifierProvider<T> oldWidget) {
    return notifier != oldWidget.notifier;
  }
}
