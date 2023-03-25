class Client {
  String? clientID;
  final String clientName;
  final String clientEmail;
  final String clientPassword;
  final String clientPhoneNumber;

  Client({
    this.clientID,
    required this.clientName,
    required this.clientEmail,
    required this.clientPassword,
    required this.clientPhoneNumber,
  });

  toJson() {
    return {
      'client_name': clientName,
      'client_phone_number': clientPhoneNumber,
      'client_email': clientEmail,
      'client_password': clientPassword,
    };
  }
}
