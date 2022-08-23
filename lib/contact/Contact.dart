class Contact {
  String? phone;
  String name = 'Ahmed Mohammed';

  Contact(this.phone);

  static List<Contact> contacts = [
    Contact("0987865"),
  ];

  void add() {
    contacts.add(this);
  }
}
