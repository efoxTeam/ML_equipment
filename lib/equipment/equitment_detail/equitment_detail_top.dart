import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: EquipmentDetailTop(),
    ));

class EquipmentDetailTop extends StatefulWidget {
  EquipmentDetailTop({Key key, this.equipmentData}): super(key: key);
  final Map equipmentData;
  @override
  _EquipmentDetailTopState createState() => _EquipmentDetailTopState();
}

class _EquipmentDetailTopState extends State<EquipmentDetailTop> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 0.0,
        horizontal: 0.0,
      ),
      child: Row(
        children: <Widget>[
          Image.network(super.widget.equipmentData['image'],width: 44.0, height: 44.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(super.widget.equipmentData['name'], style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 15.0)),
                  Text(super.widget.equipmentData['category'], style: TextStyle(color: Color(0xFFFF5F49), fontSize: 10.0))
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Price:', style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12.0)),
                  Text(super.widget.equipmentData['cost'].toString(), style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 12.0))
                ]
              )
            ],
          )
        ]
      )
    );
  }
}