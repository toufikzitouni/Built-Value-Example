library person;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'person.g.dart';

abstract class Person implements Built<Person, PersonBuilder> {
  String get name;
  int get age;
  BuiltList<Car> get cars;

  Person._();
  factory Person([updates(PersonBuilder b)]) = _$Person;
  static Serializer<Person> get serializer => _$personSerializer;
}

abstract class Car implements Built<Car, CarBuilder> {
  String get name;
  BuiltList<String> get models;

  Car._();
  factory Car([updates(CarBuilder b)]) = _$Car;
  static Serializer<Car> get serializer => _$carSerializer;
}
