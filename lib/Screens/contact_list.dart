import 'package:flutter/material.dart';
import 'package:web_api_practice/Models/contact.dart';
import 'package:web_api_practice/NetworkApis/people_api.dart';

class Contacts extends StatefulWidget {
  static String id = '/contacts';
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}


class _ContactsState extends State<Contacts> {

  PeopleAPI api = PeopleAPI();

  // @override
  // void initState()  {
  //   super.initState();
  //   print(api.getAllUsers(2));
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('API Testing'),),
      body: FutureBuilder(
        future: api.getAllUsers(1),
        builder: (context,snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(backgroundColor: Colors.lightBlue,),
            );
          }
          return ListView.builder(
            itemCount: (snapshot.data as dynamic).length,
              itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Image.network((snapshot.data as dynamic)[index].avatar),
                title: Text((snapshot.data as dynamic)[index].email),
                subtitle: Text((snapshot.data as dynamic)[index].id.toString()) ,
              ),
            );
          } );
        },
      ),
    );
  }
}
