import 'package:equatable/equatable.dart';

class Signin extends Equatable{
    final String firstName;
    final String lastName;
    final String email; 
    final String password;

    const Signin({required this.firstName, required this.lastName, required this.email, required this.password});

    @override
    List<Object> props => [email]
}
