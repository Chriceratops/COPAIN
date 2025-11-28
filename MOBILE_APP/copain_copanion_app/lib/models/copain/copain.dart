import 'package:hive/hive.dart';

part 'copain.g.dart';

@HiveType(typeId: 2)
class Copain {
  Copain({
    required this.copainID,
    required this.commands,
    required this.version,
  });

  @HiveField(0)
  String copainID;

  @HiveField(1)
  List<String> commands;

  @HiveField(2)
  String version;
  
}
