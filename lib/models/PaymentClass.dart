// ignore_for_file: file_names

import 'dart:ffi';

class Payment {
  late int paymentid;
  late DateTime date;
  late Float amount;
  late DateTime modified;

  Payment(this.paymentid, this.date, this.amount, this.modified);
}