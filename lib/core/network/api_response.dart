abstract class ApiResponse {
  final ResponseStatus status;
  final String message;

  const ApiResponse(this.status, this.message);
}

enum ResponseStatus { success, error }
