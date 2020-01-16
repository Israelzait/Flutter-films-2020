
// class Cast {

//   List<Actor> actores = new List();


//   Cast.fromJsonList( List<dynamic> jsonList  ){

//     if ( jsonList == null ) return;

//     jsonList.forEach( (item) {
//       final actor = Actor.fromJsonMap(item);
//       actores.add(actor);
//     });
//   }

// }




// class Actor {
//   int castId;
//   String character;
//   String creditId;
//   int gender;
//   int id;
//   String name;
//   int order;
//   String profilePath;

//   Actor({
//     this.castId,
//     this.character,
//     this.creditId,
//     this.gender,
//     this.id,
//     this.name,
//     this.order,
//     this.profilePath,
//   });

//   Actor.fromJsonMap( Map<String, dynamic> json ) {

//     castId      = json['cast_id'];
//     character   = json['character'];
//     creditId    = json['credit_id'];
//     gender      = json['gender'];
//     id          = json['id'];
//     name        = json['name'];
//     order       = json['order'];
//     profilePath = json['profile_path'];

//   }

//    getFoto() {

//     if ( profilePath == null ) {
//       return 'http://forum.spaceengine.org/styles/se/theme/images/no_avatar.jpg';
//     } else {
//       return 'https://image.tmdb.org/t/p/w500/$profilePath';
//     } 

//   }

// }




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



        // cast_id y demas con minuscula
        // el error me todo 1 dia entero encontrarlo
        //fue poner cast_Id que 
      castId       = json['cast_id'];
      character   = json['character'];
      creditId    = json['credit_id'];
      gender      = json['gender'];
      id          = json['id'];
      name        = json['name'];
      order       = json['order'];
      profilePath = json['profile_path'];
    
      
  }

    getFoto() {

    if ( profilePath == null ) {
      return 'https://www.stickpng.com/assets/images/585e4bf3cb11b227491c339a.png';

      // return 'https://image.tmdb.org/t/p/w500/$profilePath';


    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }

  }
}






