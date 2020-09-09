import 'package:calculator/shared.dart';
import 'package:flutter/material.dart';
import 'utils.dart';

class IoConverter extends StatefulWidget {


  @override
  _IoConverterState createState() => _IoConverterState();
}

class _IoConverterState extends State<IoConverter> {

  String _value = '';
  String _result = '';
  String _inOption = 'Meter';
  String _outOption = 'Meter';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Length Converter',
        ),
        backgroundColor: Colors.blue[700],
      ),
      body: GridView.count(
        //shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
        crossAxisCount: 3,
        childAspectRatio: 120/100,

        children: <Widget>[
          DropdownButtonFormField(
            value: _inOption,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Unit',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.blue[400],
                      width: 2.0
                  )
              ),
            ),
            onChanged: (val) {
              setState(() {
                _inOption = val;
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            items: [
              DropdownMenuItem(
                value: 'Milli',
                child: Text('Millimeter'),
              ),
              DropdownMenuItem(
                value: 'Centi',
                child: Text('Centimeter'),
              ),
              DropdownMenuItem(
                value: 'Meter',
                child: Text('Meter'),
              ),
              DropdownMenuItem(
                value: 'Kilo',
                child: Text('Kilometer'),
              ),
            ],
          ),
          SizedBox(width: 0,),
          DropdownButtonFormField(
            value: _outOption,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: 'Unit',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.blue[400],
                      width: 2.0
                  )
              ),
            ),
            onChanged: (val) {
              setState(() {
                _outOption = val;
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            items: [
              DropdownMenuItem(
                value: 'Milli',
                child: Text('Millimeter'),
              ),
              DropdownMenuItem(
                value: 'Centi',
                child: Text('Centimeter'),
              ),
              DropdownMenuItem(
                value: 'Meter',
                child: Text('Meter'),
              ),
              DropdownMenuItem(
                value: 'Kilo',
                child: Text('Kilometer'),
              ),
            ],
          ),

          Text(
            _value,
            style: outputStyle,
          ),
          SizedBox(width: 0,),
          Text(
            _result.toString(),
            style: outputStyle
          ),

          FlatButton(
            onPressed: () {
              setState(() {
                _value += '7';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
                '7',
                style: numberButtonStyle
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '8';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
                '8',
                style: numberButtonStyle
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '9';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
                '9',
                style: numberButtonStyle
            ),
          ),

          FlatButton(
            onPressed: () {
              setState(() {
                _value += '4';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '4',
              style: numberButtonStyle,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '5';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '5',
              style: numberButtonStyle,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '6';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '6',
              style: numberButtonStyle,
            ),
          ),

          FlatButton(
            onPressed: () {
              setState(() {
                _value += '1';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '1',
              style: numberButtonStyle,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '2';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '2',
              style: numberButtonStyle,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '3';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '3',
              style: numberButtonStyle,
            ),
          ),

          IconButton(
            onPressed: () {
              setState(() {
                _value = _value.substring(0, _value.length - 1);
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            icon: Icon(
              Icons.backspace,
              color: Colors.blue[400],
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                _value += '0';
                _result = convert(_value, _inOption, _outOption).toString();
              });
            },
            shape: CircleBorder(),
            child: Text(
              '0',
              style: numberButtonStyle,
            ),
          ),
          FlatButton(
            onPressed: () {
              setState(() {
                if(checkPoint(_value)){
                  _value += '.';
                  _result = convert(_value, _inOption, _outOption).toString();
                }
              });
            },
            shape: CircleBorder(),
            child: Text(
              '.',
              style: operatorButtonStyle,
            ),
          ),
        ],
      ),
    );
  }
}
