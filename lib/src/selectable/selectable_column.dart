import 'package:flexible_scrollable_table_view/src/flexible_column.dart';
import 'package:flexible_scrollable_table_view/src/flexible_table_controller.dart';
import 'package:flutter/widgets.dart';

///定制化的可选中的 Column
abstract class AbsSelectableColumn<T> extends AbsFlexibleColumn<T> {
  const AbsSelectableColumn(super.id);

  ///非可选状态时的固定宽度
  double get unSelectableWidth;

  @override
  Widget buildHeader(FlexibleTableController<T> controller) => buildSelectableHeader(controller);

  ///构建可编辑时的表头
  Widget buildSelectableHeader(FlexibleTableController<T> controller);

  ///构建不可编辑时的表头
  Widget buildUnSelectableHeader(FlexibleTableController<T> controller) => SizedBox(width: unSelectableWidth);

  @override
  Widget buildInfo(FlexibleTableController<T> controller, int dataIndex, T data) =>
      buildSelectableInfo(controller, dataIndex, data);

  ///构建可编辑时的表信息
  Widget buildSelectableInfo(FlexibleTableController<T> controller, int dataIndex, T data);

  ///构建不可编辑时的表信息
  Widget buildUnSelectableInfo(FlexibleTableController<T> controller, int dataIndex, T data) =>
      SizedBox(width: unSelectableWidth);
}

class SelectableColumn<T> extends AbsSelectableColumn<T> {
  const SelectableColumn(
    super.id, {
    required this.fixedWidth,
    this.unSelectableWidth = 0,
    required this.selectableHeader,
    this.unSelectableHeader,
    required this.selectableInfo,
    this.unSelectableInfo,
  });

  @override
  final double fixedWidth;
  @override
  final double unSelectableWidth;

  final Widget Function(FlexibleTableController<T> controller) selectableHeader;
  final Widget Function(FlexibleTableController<T> controller)? unSelectableHeader;
  final Widget Function(FlexibleTableController<T> controller, int dataIndex, T data) selectableInfo;
  final Widget Function(FlexibleTableController<T> controller, int dataIndex, T data)? unSelectableInfo;

  @override
  Widget buildSelectableHeader(FlexibleTableController<T> controller) => selectableHeader.call(controller);

  @override
  Widget buildUnSelectableHeader(FlexibleTableController<T> controller) {
    return unSelectableHeader?.call(controller) ?? super.buildUnSelectableHeader(controller);
  }

  @override
  Widget buildSelectableInfo(FlexibleTableController<T> controller, int dataIndex, T data) =>
      selectableInfo.call(controller, dataIndex, data);

  @override
  Widget buildUnSelectableInfo(FlexibleTableController<T> controller, int dataIndex, T data) {
    return unSelectableInfo?.call(controller, dataIndex, data) ??
        super.buildUnSelectableInfo(controller, dataIndex, data);
  }
}
