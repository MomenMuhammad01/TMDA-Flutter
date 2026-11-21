import 'package:equatable/equatable.dart';

class ServerException extends Equatable implements Exception {
  final String? message;

  const ServerException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}

class FetchDataException extends ServerException {
  const FetchDataException([super.message = "Error During Communication"]);
}

class BadRequestException extends ServerException {
  const BadRequestException([super.message = "Bad Request"]);
}

class UnauthorizedException extends ServerException {
  const UnauthorizedException([super.message = "Unauthorized"]);
}

class NotFoundException extends ServerException {
  const NotFoundException([super.message = "Requested Info Not Found"]);
}

class ConflictException extends ServerException {
  const ConflictException([super.message = "Conflict Occurred"]);
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException([super.message = "Internal Server Error"]);
}

class NoInternetConnectionException extends ServerException {
  const NoInternetConnectionException(
      [super.message = "Please Check Your Internet Connection"]);
}

class LaunchUrlException extends ServerException {
  const LaunchUrlException([super.message = "No Internet Connection"]);
}

class CacheException extends Equatable implements Exception {
  final String? message;

  const CacheException([this.message]);

  @override
  List<Object?> get props => [message];

  @override
  String toString() {
    return '$message';
  }
}
