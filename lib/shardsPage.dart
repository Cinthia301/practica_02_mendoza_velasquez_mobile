import 'package:flutter/material.dart';

class ShardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            child: Text(
              'Personal',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Name',
              style: TextStyle(fontSize: 13),
            ),
          ),
          NameBox(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Date of Birth',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Month(),
          Day(),
          Year(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Whats is your favorite animal?',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Lion(),
          Tiger(),
          Bear(),
          Bull(),
          Serval(),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              'Account',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Email',
              style: TextStyle(fontSize: 13),
            ),
          ),
          MailBox(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Password',
              style: TextStyle(fontSize: 13),
            ),
          ),
          EmptyBox(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Verify Password',
              style: TextStyle(fontSize: 13),
            ),
          ),
          EmptyBox(),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Text(
              'Contact',
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Adress',
              style: TextStyle(fontSize: 13),
            ),
          ),
          AdressBox(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'City',
              style: TextStyle(fontSize: 13),
            ),
          ),
          CityBox(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'State',
              style: TextStyle(fontSize: 13),
            ),
          ),
          StateC(),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'Phone',
              style: TextStyle(fontSize: 13),
            ),
          ),
          PhoneBox()
        ],
      ),
    );
  }
}

class NameBox extends StatefulWidget {
  @override
  _NameBoxState createState() => _NameBoxState();
}

class _NameBoxState extends State<NameBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: (TextField(
        decoration: InputDecoration(
            hintText: 'John Doe',
            hintStyle: TextStyle(color: Colors.black26),
            border: OutlineInputBorder()),
      )),
    );
  }
}

class Month extends StatefulWidget {
  @override
  _MonthState createState() => _MonthState();
}

class _MonthState extends State<Month> {
  List<String> _meses = [
    'Month',
    'Enero',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];

  String _now = 'Month';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButton(
                  value: _now,
                  items: getItems(),
                  onChanged: (option) {
                    setState(() {});
                    _now = option;
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _meses
        .map((mes) =>
            options.add(DropdownMenuItem(child: Text(mes), value: mes)))
        .toList();
    return options;
  }
}

class Day extends StatefulWidget {
  @override
  _DayState createState() => _DayState();
}

class _DayState extends State<Day> {
  List<String> _dias = [
    'Day',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31'
  ];

  String _now = 'Day';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DropdownButton(
                  value: _now,
                  items: getItems(),
                  onChanged: (option) {
                    setState(() {});
                    _now = option;
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _dias
        .map((dia) =>
            options.add(DropdownMenuItem(child: Text(dia), value: dia)))
        .toList();
    return options;
  }
}

class Year extends StatefulWidget {
  @override
  _YearState createState() => _YearState();
}

class _YearState extends State<Year> {
  List<String> _meses = [
    'Year',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
    '2009',
    '2010',
    '2011',
    '2012',
    '2013',
    '2014',
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021'
  ];

  String _now = 'Year';

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    value: _now,
                    items: getItems(),
                    onChanged: (option) {
                      setState(() {});
                      _now = option;
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _meses
        .map((anio) =>
            options.add(DropdownMenuItem(child: Text(anio), value: anio)))
        .toList();
    return options;
  }
}

class Lion extends StatefulWidget {
  @override
  _LionState createState() => _LionState();
}

class _LionState extends State<Lion> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Lion',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class Tiger extends StatefulWidget {
  @override
  _TigerState createState() => _TigerState();
}

class _TigerState extends State<Tiger> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Tiger',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class Bear extends StatefulWidget {
  @override
  _BearState createState() => _BearState();
}

class _BearState extends State<Bear> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Bear',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class Bull extends StatefulWidget {
  @override
  _BullState createState() => _BullState();
}

class _BullState extends State<Bull> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Bull',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class Serval extends StatefulWidget {
  @override
  _ServalState createState() => _ServalState();
}

class _ServalState extends State<Serval> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Serval',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class MailBox extends StatefulWidget {
  @override
  _MailBoxState createState() => _MailBoxState();
}

class _MailBoxState extends State<MailBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: 'john@johndoe.com',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class EmptyBox extends StatefulWidget {
  @override
  _EmptyBoxState createState() => _EmptyBoxState();
}

class _EmptyBoxState extends State<EmptyBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class AdressBox extends StatefulWidget {
  @override
  _AdressBoxState createState() => _AdressBoxState();
}

class _AdressBoxState extends State<AdressBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: '938 Jackson St.',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class CityBox extends StatefulWidget {
  @override
  _CityBoxState createState() => _CityBoxState();
}

class _CityBoxState extends State<CityBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: '938 Jackson St.',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}

class StateC extends StatefulWidget {
  @override
  _StateCState createState() => _StateCState();
}

class _StateCState extends State<StateC> {
  List<String> _dias = [
    '-Select your state-',
    'Perú',
    'Chile',
    'Bolivia',
    'Argentina',
    'Paraguay',
    'Brasil'
  ];

  String _now = '-Select your state-';

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DropdownButton(
                    value: _now,
                    items: getItems(),
                    onChanged: (option) {
                      setState(() {});
                      _now = option;
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }

  List<DropdownMenuItem<String>> getItems() {
    List<DropdownMenuItem<String>> options = List();
    _dias
        .map((estado) =>
            options.add(DropdownMenuItem(child: Text(estado), value: estado)))
        .toList();
    return options;
  }
}

class PhoneBox extends StatefulWidget {
  @override
  _PhoneBoxState createState() => _PhoneBoxState();
}

class _PhoneBoxState extends State<PhoneBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: TextField(
          decoration: InputDecoration(
              hintText: '837.383.3678',
              hintStyle: TextStyle(color: Colors.black26),
              border: OutlineInputBorder()),
        ));
  }
}
