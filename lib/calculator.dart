import 'package:calculator/converter.dart';
import 'package:flutter/material.dart';
import 'shared.dart';
import 'utils.dart';

class Calculator extends StatefulWidget {

  final Function toggleView;
  Calculator({ this.toggleView });

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  String _input = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
        backgroundColor: Colors.blue[700],
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              widget.toggleView();
            },
            label: Text(
              'Converter',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.cached,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Text(
              _input,
              style: outputStyle,
            ),
          ),
          SizedBox(height: 10),
          GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 40,
            crossAxisSpacing: 50,
            crossAxisCount: 4,
            padding: EdgeInsets.all(40.0),
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = '';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                    'C',
                    style: operatorButtonStyle
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _input = _input.substring(0, _input.length - 1);
                  });
                },
                icon: Icon(
                  Icons.backspace,
                  color: Colors.blue[400],
                ),
              ),
              FlatButton(
                onPressed: () {
                  _input = checkInput(_input);
                },
                shape: CircleBorder(),
                child: Text(
                    '%',
                    style: operatorButtonStyle
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    if(hasOperator(_input)){
                      _input = evaluate(_input).toString();
                    }
                    _input += '/';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                    '/',
                    style: operatorButtonStyle
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    _input += '7';
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
                    _input = checkInput(_input);
                    _input += '8';
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
                    _input = checkInput(_input);
                    _input += '9';
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
                    _input = checkInput(_input);
                    if(hasOperator(_input)){
                      _input = evaluate(_input).toString();
                    }
                    _input += '*';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                    '*',
                    style: operatorButtonStyle
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    _input += '4';
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
                    _input = checkInput(_input);
                    _input += '5';
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
                    _input = checkInput(_input);
                    _input += '6';
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
                    _input = checkInput(_input);
                    if(hasOperator(_input)){
                      _input = evaluate(_input).toString();
                    }
                    _input += '-';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                  '-',
                  style: operatorButtonStyle,
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    _input += '1';
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
                    _input = checkInput(_input);
                    _input += '2';
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
                    _input = checkInput(_input);
                    _input += '3';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                  '3',
                  style: numberButtonStyle,
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    if(hasOperator(_input)){
                      _input = evaluate(_input).toString();
                    }
                    _input += '+';
                  });
                },
                shape: CircleBorder(),
                child: Text(
                  '+',
                  style: operatorButtonStyle,
                ),
              ),
              Container(),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    _input += '0';
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
                    _input = checkInput(_input);
                    if(checkPoint(_input)){
                      _input += '.';
                    }
                  });
                },
                shape: CircleBorder(),
                child: Text(
                  '.',
                  style: operatorButtonStyle,
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _input = checkInput(_input);
                    _input = evaluate(_input).toString();
                  });
                },
                shape: CircleBorder(),
                child: Text(
                  '=',
                  style: operatorButtonStyle,
                ),
              ),

            ],
          ),
        ],
      ),


    );
  }
}
