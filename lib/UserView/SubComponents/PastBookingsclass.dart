// ignore_for_file: non_constant_identifier_names, file_names, camel_case_types


class Reservations {
  late int guestid;
  late int reservationid;
  late DateTime date;
  late DateTime check_in;
  late DateTime check_out;
  late String status;
  late double amount;

  Reservations(this.guestid, this.reservationid, this.date, this.check_in, this.check_out,
      this.status, this.amount);
}