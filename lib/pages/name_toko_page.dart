import 'package:flutter/material.dart';
import 'package:laundryku/pages/navigation/home_page.dart';

class Nama_Toko extends StatefulWidget{
  @override
  TokoState createState() => TokoState();
}
class TokoState extends State<Nama_Toko>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Toko'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                child: Image.asset('assets/images/toko.jpeg',height: 100,width: 200,),
              ),
              SizedBox(height: 20,),
              Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Nama Toko',
                        helperText: 'Masukan Nama Toko',
                        labelText: 'Nama Toko',
                        // prefixIcon: const Icon(Icons.email, color: Colors.green,),

                        suffixStyle: const TextStyle(color: Colors.green)),
                  )
              ),
              SizedBox(height: 15,),
              Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Alamat',
                        helperText: 'Masukan Alamat Anda',
                        labelText: 'Alamat',
                        //  prefixIcon: const Icon(Icons.vpn_key, color: Colors.green,),

                        suffixStyle: const TextStyle(color: Colors.green)
                    ),
                  )
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Lanjutkan",style: TextStyle(fontSize: 20),),
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> Home_page()));
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: EdgeInsets.fromLTRB(130, 20, 130, 20),
                    splashColor: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
      ),

    );
  }
}