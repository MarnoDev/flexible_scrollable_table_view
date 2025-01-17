## 2.8.1

* Fix bug about placeholder widget's height. 

## 2.8.0

* Remove all deprecated fields.

## 2.7.4

* Add `SynchronizedScrollController`, a `ScrollController` that synchronizes the scroll position of
  all users.

## 2.7.3

* Add height-fixed `SliverPersistentHeaderDelegate`.

## 2.7.2

* Added columns that can be pinned to the right.

## 2.7.1

* Optimize the implementation of `FlexibleWidth` and `ScrollSynchronizationMixin`.

## 2.7.0

* There are now fewer build parameter lists.

## 2.6.0

* Set column width by `AbsFlexibleTableColumnWidth`.
* Set row height by `AbsFlexibleTableRowHeight`.
* Few column width and row height implementations can be used.

## 2.5.0

* Rename `AbsFlexibleHeaderFooter` to `AbsFlexibleTableAdditions`.
* Support set placeholder widget when table data is empty.
* A listenable value named `loadedDataOnce` in `FlexibleTableController` which means whether data
  has loaded once.

## 2.4.3

* Fix bug.

## 2.4.2

* Optimize the code.

## 2.4.1

* Fix bug.
* `AbsFlexibleTableConfigurations` is now available when building column Widgets.

## 2.4.0

* Add `AbsFlexibleTableAnimations` configuration class for config size change animation.
* Add `AnimatedConstraintBox` widget who will do animation when size changed.
* Add `AbsFlexibleHeaderFooter` configuration class for create table content header and footer.

## 2.3.0

* Add header.
* Only the table content area is supported.

## 2.2.1

* Add example screenshot.

## 2.2.0

* Add `AbsFlexibleTableDecorations` and remove `AbsFlexibleTableRowDecoration`.

## 2.1.1

* Fix bug.

## 2.1.0

* Dart SDK version from '>=2.18.5 <3.0.0' to '>=2.18.5 <4.0.0'.

## 2.0.0

* All scrollable area built by ListView. Now you can load many data or many columns but without
  performance issues.
* Minimum version of Flutter SDK supported is 3.0.0

## 1.0.0

* Init version.
