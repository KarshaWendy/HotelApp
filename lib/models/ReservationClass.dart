// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:ffi' show Bool, Double;

class Reservation {
  late int reservationid;
  late DateTime date;
  late Bool status;
  late String check_in;
  late Double cost;
  late String check_out;
  late DateTime created;
  late DateTime modified;

  Reservation(this.reservationid, this.date, this.status, this.check_in, this.cost,
      this.check_out, this.created, this.modified);
}