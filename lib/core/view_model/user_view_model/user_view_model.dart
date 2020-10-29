import 'package:mobx/mobx.dart';
part 'user_view_model.g.dart';

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store {
  @observable
  String name  = '';
}
