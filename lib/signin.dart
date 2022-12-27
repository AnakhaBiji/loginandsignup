import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zudio/main.dart';

class signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _signinstate();
}

class _signinstate extends State {
  @override
  Widget build(BuildContext context) {
    bool showpass =true;
    return Scaffold(
      appBar: AppBar(
        title: Text("ZUDIO"),
        centerTitle: true,
      ),
body: Column(
children: [
  const Center(child: Text("Register",
    style:
    TextStyle(fontSize: 20, )),),
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: "First Name",
          labelText: "First Name",
          prefixIcon: Icon(Icons.account_box_sharp),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction:TextInputAction.next,
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: "Second Name",
          labelText: "Second Name",
          prefixIcon: Icon(Icons.account_box_sharp),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction:TextInputAction.next,
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: "Email id",
          labelText: "Email id",
          prefixIcon: Icon(Icons.email_outlined),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction:TextInputAction.next,
    ),
  ),
  Padding(padding: const EdgeInsets.all(20),
    child: TextFormField(
      obscureText: showpass,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
          suffixIcon: IconButton(onPressed: (){setState(() {
            if(showpass){
              showpass=false;
            }else{
              showpass=true;
            }
          });
          },
            icon: Icon(showpass==true ?Icons.visibility_off : Icons.visibility,),
          ),
          labelText: "PASSWORD",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction: TextInputAction.done,
    ),
  ),
  Padding(padding: const EdgeInsets.all(20),
    child: TextFormField(
      obscureText: showpass,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
          suffixIcon: IconButton(onPressed: (){setState(() {
            if(showpass){
              showpass=false;
            }else{
              showpass=true;
            }
          });
          },
            icon: Icon(showpass==true ?Icons.visibility_off : Icons.visibility,),
          ),
          labelText: "PASSWORD",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction: TextInputAction.done,
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(20),
    child: TextFormField(
      decoration: InputDecoration(
          hintText: "Phone Number",
          labelText: "Phone Number",
          prefixIcon: Icon(Icons.phone),
          border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          )
      ),
      textInputAction:TextInputAction.next,
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 40, right: 40),
    child: ElevatedButton(onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    }, child: Text("Register")),
  ),
],
)
    );
  }
}
