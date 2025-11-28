// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copain.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CopainAdapter extends TypeAdapter<Copain> {
  @override
  final int typeId = 2;

  @override
  Copain read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Copain(
      copainID: fields[0] as String,
      commands: (fields[1] as List).cast<String>(),
      version: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Copain obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.copainID)
      ..writeByte(1)
      ..write(obj.commands)
      ..writeByte(2)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CopainAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
