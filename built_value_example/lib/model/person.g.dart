// GENERATED CODE - DO NOT MODIFY BY HAND

part of person;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library person
// **************************************************************************

Serializer<Person> _$personSerializer = new _$PersonSerializer();
Serializer<Car> _$carSerializer = new _$CarSerializer();

class _$PersonSerializer implements StructuredSerializer<Person> {
  @override
  final Iterable<Type> types = const [Person, _$Person];
  @override
  final String wireName = 'Person';

  @override
  Iterable serialize(Serializers serializers, Person object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'age',
      serializers.serialize(object.age, specifiedType: const FullType(int)),
      'cars',
      serializers.serialize(object.cars,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Car)])),
    ];

    return result;
  }

  @override
  Person deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new PersonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cars':
          result.cars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Car)]))
              as BuiltList<Car>);
          break;
      }
    }

    return result.build();
  }
}

class _$CarSerializer implements StructuredSerializer<Car> {
  @override
  final Iterable<Type> types = const [Car, _$Car];
  @override
  final String wireName = 'Car';

  @override
  Iterable serialize(Serializers serializers, Car object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'models',
      serializers.serialize(object.models,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Car deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'models':
          result.models.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<String>);
          break;
      }
    }

    return result.build();
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Person
// **************************************************************************

class _$Person extends Person {
  @override
  final String name;
  @override
  final int age;
  @override
  final BuiltList<Car> cars;

  factory _$Person([void updates(PersonBuilder b)]) =>
      (new PersonBuilder()..update(updates)).build();

  _$Person._({this.name, this.age, this.cars}) : super._() {
    if (name == null) throw new ArgumentError.notNull('name');
    if (age == null) throw new ArgumentError.notNull('age');
    if (cars == null) throw new ArgumentError.notNull('cars');
  }

  @override
  Person rebuild(void updates(PersonBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonBuilder toBuilder() => new PersonBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Person) return false;
    return name == other.name && age == other.age && cars == other.cars;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), age.hashCode), cars.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Person')
          ..add('name', name)
          ..add('age', age)
          ..add('cars', cars))
        .toString();
  }
}

class PersonBuilder implements Builder<Person, PersonBuilder> {
  _$Person _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  ListBuilder<Car> _cars;
  ListBuilder<Car> get cars => _$this._cars ??= new ListBuilder<Car>();
  set cars(ListBuilder<Car> cars) => _$this._cars = cars;

  PersonBuilder();

  PersonBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _age = _$v.age;
      _cars = _$v.cars?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Person other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Person;
  }

  @override
  void update(void updates(PersonBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Person build() {
    final result =
        _$v ?? new _$Person._(name: name, age: age, cars: cars?.build());
    replace(result);
    return result;
  }
}

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class Car
// **************************************************************************

class _$Car extends Car {
  @override
  final String name;
  @override
  final BuiltList<String> models;

  factory _$Car([void updates(CarBuilder b)]) =>
      (new CarBuilder()..update(updates)).build();

  _$Car._({this.name, this.models}) : super._() {
    if (name == null) throw new ArgumentError.notNull('name');
    if (models == null) throw new ArgumentError.notNull('models');
  }

  @override
  Car rebuild(void updates(CarBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CarBuilder toBuilder() => new CarBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Car) return false;
    return name == other.name && models == other.models;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), models.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Car')
          ..add('name', name)
          ..add('models', models))
        .toString();
  }
}

class CarBuilder implements Builder<Car, CarBuilder> {
  _$Car _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _models;
  ListBuilder<String> get models =>
      _$this._models ??= new ListBuilder<String>();
  set models(ListBuilder<String> models) => _$this._models = models;

  CarBuilder();

  CarBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _models = _$v.models?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Car other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Car;
  }

  @override
  void update(void updates(CarBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Car build() {
    final result = _$v ?? new _$Car._(name: name, models: models?.build());
    replace(result);
    return result;
  }
}
