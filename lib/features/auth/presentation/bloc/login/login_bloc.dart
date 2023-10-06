import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/usecases/usecases.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PostLogin postLogin;

  LoginBloc({required this.postLogin})
      : assert(postLogin != null),
        super(LoginInitial()) {
    on<LoginEvent>(_loginHandler);
  }

  Future<void> _loginHandler(LoginEvent event, Emitter emit) async {
    // business logic goes here

    return emit(LoginInitial());
  }
}
