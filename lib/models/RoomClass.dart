// ignore_for_file: file_names

import 'dart:ffi';

class Room {
  late int roomid;
  late DateTime count;
  late Bool status;
  late Enum type;
  late DateTime created;
  late DateTime modified;

  Room(this.roomid, this.count, this.status, this.type,
       this.created, this.modified);
}