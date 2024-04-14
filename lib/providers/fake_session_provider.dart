import 'dart:math';

import 'package:jocaagura_domain/jocaagura_domain.dart';

import 'provider_session.dart';

class FakeSessionProvider extends ProviderSession {
  UserModel _user = defaultUserModel;

  @override
  UserModel get user => _user;

  @override
  Future<Either<String, UserModel>> logInUserAndPassword(
    UserModel user,
    String password,
  ) async {
    await _randomDelay();
    if (user.email.contains('invalid')) {
      return Left<String, UserModel>('usuario invalido');
    } else if (password != '1234567890') {
      return Left<String, UserModel>('contraseña invalida');
    } else {
      _user = user.copyWith(
        jwt: <String, dynamic>{
          'token': 'valid_jwt_token',
        },
      ); // Simular un JWT válido
      return Right<String, UserModel>(_user);
    }
  }

  @override
  Future<Either<String, UserModel>> logOutUser(UserModel user) async {
    await _randomDelay();
    _user = defaultUserModel;
    return Right<String, UserModel>(_user);
  }

  @override
  Future<Either<String, UserModel>> signInUserAndPassword(
    UserModel user,
    String password,
  ) async {
    await _randomDelay();
    if (user.email.contains('invalid')) {
      return Left<String, UserModel>('usuario invalido para registro');
    } else {
      // Simular un registro exitoso y asignar un JWT válido
      _user = user.copyWith(jwt: <String, dynamic>{'token': 'valid_jwt_token'});
      return Right<String, UserModel>(_user);
    }
  }

  @override
  Future<Either<String, UserModel>> recoverPassword(UserModel user) async {
    await _randomDelay();
    if (user.email.contains('invalid')) {
      return Left<String, UserModel>('Usuario inexistente');
    } else {
      return Left<String, UserModel>(
        'correo de recuperacion enviado satisfactoriamente',
      );
    }
  }

  @override
  Future<Either<String, UserModel>> logInSilently(UserModel user) async {
    await _randomDelay();
    // Simular un inicio de sesión silencioso
    final bool success = Random().nextBool();
    if (success) {
      _user = user.copyWith(
        jwt: <String, dynamic>{
          'token': 'valid_jwt_token',
        },
      ); // Simular un JWT válido
      return Right<String, UserModel>(_user);
    } else {
      return Left<String, UserModel>('Inicio de sesión silencioso fallido');
    }
  }

  bool validateJwt(Map<String, dynamic> jwt) {
    return jwt.isNotEmpty &&
        jwt.containsKey('token') &&
        jwt['token'] is String &&
        !jwt['token'].toString().contains('invalid');
  }

  Future<void> _randomDelay() async {
    // Simular una latencia de red con un retardo aleatorio
    await Future<void>.delayed(Duration(seconds: Random().nextInt(10) + 1));
  }

  @override
  bool get jwtValid => validateJwt(user.jwt);
}