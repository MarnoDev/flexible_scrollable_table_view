import 'package:flexible_scrollable_table_view/src/flexible_table_controller.dart';
import 'package:flutter/widgets.dart';

class SelectableColumnWrapper<T> extends StatelessWidget {
  const SelectableColumnWrapper(
    this.controller, {
    Key? key,
    required this.child,
  }) : super(key: key);

  final FlexibleTableController<T> controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: controller.selectable,
      builder: (context, selectable, child) {
        if (selectable) {
          return child!;
        }
        //当选择不可用时，不显示
        return const SizedBox.shrink();
      },
      child: child,
    );
  }
}
