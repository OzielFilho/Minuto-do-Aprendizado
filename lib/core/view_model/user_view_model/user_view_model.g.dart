// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserViewModel on _UserViewModelBase, Store {
  final _$nameAtom = Atom(name: '_UserViewModelBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$randomAtom = Atom(name: '_UserViewModelBase.random');

  @override
  Random get random {
    _$randomAtom.reportRead();
    return super.random;
  }

  @override
  set random(Random value) {
    _$randomAtom.reportWrite(value, super.random, () {
      super.random = value;
    });
  }

  final _$_UserViewModelBaseActionController =
      ActionController(name: '_UserViewModelBase');

  @override
  void selectNumber() {
    final _$actionInfo = _$_UserViewModelBaseActionController.startAction(
        name: '_UserViewModelBase.selectNumber');
    try {
      return super.selectNumber();
    } finally {
      _$_UserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
random: ${random}
    ''';
  }
}
