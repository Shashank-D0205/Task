// enum ApiErrorType {
//   network,
//   parsing,
//   server,
//   unauthorized,
//   notFound,
//   unknown
// }
//
// class ApiException implements Exception {
//   final String message;
//   final ApiErrorType type;
//
//   ApiException(this.message, this.type);
//
//   @override
//   String toString() {
//     return 'ApiException: $message (Type: $type)';
//   }
//
//   String getUserFriendlyMessage() {
//     switch (type) {
//       case ApiErrorType.network:
//         return 'Network error. Please check your internet connection.';
//       case ApiErrorType.server:
//         return 'Server error. Please try again later.';
//       case ApiErrorType.parsing:
//         return 'Data parsing error. Contact support.';
//       case ApiErrorType.unauthorized:
//         return 'Authentication failed. Please log in again.';
//       case ApiErrorType.notFound:
//         return 'Requested resource not found.';
//       case ApiErrorType.unknown:
//       default:
//         return 'An unexpected error occurred.';
//     }
//   }
// }