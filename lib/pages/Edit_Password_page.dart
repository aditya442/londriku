import 'package:flutter/material.dart';
import 'package:laundryku/pages/name_toko_page.dart';

class Ubah_Password extends StatefulWidget {
  @override
  UbahState createState() => UbahState();
}

class UbahState extends State<Ubah_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubah Password',style: TextStyle(fontWeight: FontWeight.w800),),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                child: Image.asset('assets/images/key.png',height: 100,width: 200,),
              ),
              SizedBox(height: 20,),
              Container(
                  margin: EdgeInsets.only(left: 40,right: 40),
                  child: TextField(
                    decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.teal)
                        ),
                        hintText: 'Email@gmail.com',
                        helperText: 'Masukan Email yang Benar',
                        labelText: 'Email',
                        prefixIcon: const Icon(Icons.email, color: Colors.green,),

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
                        hintText: 'Password',
                        helperText: 'Masukan Password yang Benar',
                        labelText: 'Password',
                        prefixIcon: const Icon(Icons.vpn_key, color: Colors.green,),

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
                        hintText: 'Konfirmasi Password',
                        helperText: 'Konfirmasi Password',
                        labelText: 'Konfirmasi Password',
                        prefixIcon: const Icon(Icons.vpn_key, color: Colors.green,),
                        suffixStyle: const TextStyle(color: Colors.green)),
                  )
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Lanjutkan",style: TextStyle(fontSize: 20),),
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> Nama_Toko()));
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