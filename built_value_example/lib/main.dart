import 'dart:convert';
import 'package:built_value_example/model/person.dart';
import 'package:built_value_example/serializers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  Person _person;

  @override
  void initState() {
    super.initState();
    String json = "{"
        "\"name\":\"John\",\"age\":30,\"cars\": "
        "["
        "{ \"name\":\"Ford\", \"models\":[ \"Fiesta\", \"Focus\", \"Mustang\" ] },"
        "{ \"name\":\"BMW\", \"models\":[ \"320\", \"X3\", \"X5\" ] },"
        "{ \"name\":\"Fiat\", \"models\":[ \"500\", \"Panda\" ] }"
        "]}";

    setState(() {
      _person = serializers.deserializeWith(
          Person.serializer, JSON.decode(json));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: new EdgeInsets.only(top: 20.0),
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            new Column(
              children: [
                new Text(_person.name),
                new Text(_person.age.toString()),
              ],
            ),
            new Column(
              children: _person.cars.map((car) {
                return new Column(
                  children: [
                    new Text(car.name),
                    new Column(
                      children: car.models.map((model) {
                        return new Text(model);
                      }).toList(),
                    )
                  ],
                );
              }).toList(),
            )
          ],
        )
    );
  }
}


