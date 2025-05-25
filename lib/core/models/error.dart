enum MErrorType {
  network,
  connection,
  unknown,
}

class MError {
  MError({
    required this.text,
    this.type = MErrorType.unknown,
  });

  final String text;
  final MErrorType type;

  @override
  String toString() {
    return 'MError {text: $text, type: $type}';
  }
}
