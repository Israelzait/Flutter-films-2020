




 class Cast{

   List<Actor> actores  = new List();

   Cast.fromJsonList(List<dynamic> jsonList){

     if (jsonList == null) return; 
       
     jsonList.forEach( (item){
       final actor = Actor.fromJsonMap(item);
       actores.add(actor);
       
     });
   }
 }



class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });



  Actor.fromJsonMap ( Map<String, dynamic> json) {

      castId       = json['cast_Id'];
      character   = json['character'];
      creditId    = json['credit_Id'];
      gender      = json['gender'];
      id          = json['id'];
      name        = json['name'];
      order       = json['order'];
      profilePath = json['profile_Path'];
    
      
  }

    getFoto() {

    if ( profilePath == null ) {
      return 'https://learnwoo.com/wp-content/uploads/2017/01/User-roles-and-capabilities_Creating-new-user.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }
}






