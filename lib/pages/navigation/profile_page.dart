import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Profile_page>{

  int selected = -1;
  void onChanged(int value) {
    setState(() {
      this.selected = value;
    });
    print('pilihan:${this.selected}');
  }


  void nama() async {

    AlertDialog alertDialog = new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 100,
        width: 150,
        child: Column(
          children: <Widget>[
            new Text("Masukkan nama Anda"),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Masukkan Nama',

              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: new Text(
              "Batal",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.orangeAccent,
            onPressed: () => Navigator.pop(context)),
        new RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: new Text("Simpan", style: new TextStyle(color: Colors.white)),
          color: Colors.orangeAccent,
          onPressed: ()  {
          },
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }


  void nomor() async {
    AlertDialog alertDialog = new AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 100,
        width: 150,
        child: Column(
          children: <Widget>[
            new Text("Masukkan nama Anda"),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: 'Masukkan No Hp',

              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        new RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: new Text(
              "Batal",
              style: new TextStyle(color: Colors.white),
            ),
            color: Colors.orangeAccent,
            onPressed: () => Navigator.pop(context)),
        new RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: new Text("Simpan", style: new TextStyle(color: Colors.white)),
          color: Colors.orangeAccent,
          onPressed: ()  {
          },
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
    showDialog(context: context, builder: (context) => alertDialog);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor:  Colors.orangeAccent.shade700,
          title: Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
          elevation: 0.0,
        ),
      body: SingleChildScrollView(
        child: Center(

            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 15,),
                  Stack(
                    children: <Widget>[

                      Container(
                        alignment: Alignment.topLeft,
                        height: 110.0,
                        width: 110.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70.0),
                            border: Border.all(
                                color: Colors.orangeAccent.shade700,
                                style: BorderStyle.solid,
                                width: 2.0),
                            image: DecorationImage(
                                image: AssetImage('assets/images/aditya.jpeg')
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 80,top: 60),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      )

                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Card(
                            elevation: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10, top: 10, right: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Text('',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600, fontSize: 18)),
                                      Spacer(),
                                    ],
                                  ),
                                ),

                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 30),
                                      child: CircleAvatar(

                                        backgroundColor: Colors.blue,
                                        child: Icon(Icons.person, color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Nama',
                                              style: TextStyle(color: Colors.grey)),
                                          SizedBox(height: 15,),
                                          Row(
                                            children: <Widget>[
                                              Text(''),
                                            ],
                                          ),
                                          SizedBox(height: 10,)
                                        ],
                                      ),
                                    ),
                                    IconButton(icon: Icon(Icons.create),
                                      onPressed: (){
                                        nama();
                                      },
                                    ),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Divider(thickness: 1)),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 30),
                                      child: CircleAvatar(
                                        backgroundColor:  Colors.blue,
                                        child: Icon(Icons.location_on, color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Alamat',
                                              style: TextStyle(color: Colors.grey)),
                                          SizedBox(height: 15,),
                                          Row(
                                            children: <Widget>[
                                              Text(''),
                                            ],
                                          ),
                                          SizedBox(height: 10,)
                                        ],
                                      ),
                                    ),
                                    IconButton(icon: Icon(Icons.create),
                                      onPressed: (){
                                        nomor();
                                      },
                                    ),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Divider(thickness: 1)),
                                SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 30),
                                      child: CircleAvatar(
                                        backgroundColor:  Colors.blue,
                                        child: Icon(Icons.supervisor_account,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13),
                                          child: Text('Gender',
                                              style: TextStyle(color: Colors.grey)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Radio(
                                              value: 1,
                                              groupValue: this.selected,
                                              onChanged: (int value) {
                                                onChanged(value);
                                              },
                                            ),
                                            Container(
                                              width: 5,
                                            ),
                                            Text('Pria'),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Radio(
                                              value: 0,
                                              groupValue: this.selected,
                                              onChanged: (int value) {
                                                onChanged(value);
                                              },
                                            ),
                                            Container(
                                              width: 5,
                                            ),
                                            Text('Wanita')
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Divider(thickness: 1)),
                                SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 30),
                                      child: CircleAvatar(
                                        backgroundColor:  Colors.blue,
                                        child: Icon(Icons.email, color: Colors.white),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13),
                                          child: Text('Email',
                                              style: TextStyle(color: Colors.grey)),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 13),
                                          child: Text(''),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Divider(thickness: 1)),

                                SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, right: 30),
                                      child: CircleAvatar(
                                        backgroundColor:  Colors.blue,
                                        child: Icon(Icons.phone, color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Telepon',
                                              style: TextStyle(color: Colors.grey)),
                                          SizedBox(height: 15,),
                                          Row(
                                            children: <Widget>[
                                              Text(''),
                                            ],
                                          ),
                                          SizedBox(height: 10,)
                                        ],
                                      ),
                                    ),
                                    IconButton(icon: Icon(Icons.create),
                                      onPressed: (){
                                        nama();
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                    margin: EdgeInsets.only(left: 80),
                                    child: Divider(thickness: 1)),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Card(
                    color: Colors.orangeAccent.shade700,
                    elevation: 5,
                    child: Container(
                      child: GestureDetector(
                        onTap: (){},
                        child: ListTile(
//                          leading:   Padding(
//                            padding: const EdgeInsets.only( right: 30),
//                            child: CircleAvatar(
//                              backgroundColor:  Colors.red,
//                              child: Icon(Icons.exit_to_app, color: Colors.white),
//                            ),
//                          ),
                          title: Center(child: Text('Keluar',style: TextStyle(color: Colors.white,fontSize: 20),)),
                         // trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
        ),
      ),
    );

  }
}