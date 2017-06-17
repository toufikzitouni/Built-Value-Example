// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: library serializers
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Car.serializer)
      ..add(Person.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Car)]),
          () => new ListBuilder<Car>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();
