import 'package:flutter/material.dart';
import 'package:store_app/constants/strings.dart';

import 'presentation/screen/home.dart';

class AppRouts {

  Route? generateRouts(RouteSettings settings){
    switch (settings.name){
      case home :
        return MaterialPageRoute(builder: (_)=> Home());
    }
  }


}