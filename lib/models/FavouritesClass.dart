// ignore_for_file: file_names

import 'dart:ffi';

class Favourite {
  late int favouritesid;
  late int guestid;
  late int roomid;
  late Float count;
  late String name;
  late Enum type;
  late DateTime created;
  late DateTime modified;

  Favourite(this.favouritesid, this.count, this.guestid,this.roomid,this.name, this.type,
       this.created, this.modified, {required String profile});
}