
class People{
  int? id;
  String? email;
  String? first_name;
  String? last_name;
  String? avatar;

  People({required this.id,required this.email,required this.first_name,required this.last_name,required this.avatar});


  factory People.fromJson(Map<String, dynamic> jsonData){
     return People(id: jsonData['id'],
         email: jsonData['email'],
         first_name: jsonData['first_name'],
         last_name: jsonData['last_name'],
         avatar: jsonData['avatar']);
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar
    };
  }

}