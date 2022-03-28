import 'package:intl/intl.dart';
import 'package:tfse_screening_common/data/model/pain.dart';

import '../../helper/bmi.dart';

class User {
  String name = '';
  String gender = '';
  DateTime birthday = DateTime.now();
  int height = 0;
  int weight = 0;
  double abdominalGirth = 0.0;
  double bicepsLGirth = 0.0;
  double bicepsRGirth = 0.0;
  double femoralLGirth = 0.0;
  double femoralRGirth = 0.0;
  String specials = '';
  String equipment = '';
  int photos = 0;
  int aims = 0;
  bool painFree = true;
  List painDataItems = List.empty(growable: true);
  int dailyActivity = 0;
  int numberOfSportsActivities = 0;
  int numberOfStepsPerDay = 0;
  int fba = 0;
  int stretchOverHead = 0;
  int kneeling = 0;
  int shoulderFromWall = 0;
  int skippingPause1 = 0;
  int skippingPause2 = 0;
  int skippingPause3 = 0;
  int skippingFailureAttempts = 0;
  int kneeBend = 0;
  int plank = 0;
  int pushup = 0;
  int blackJeff = 0;
  int situps = 0;
  int dips = 0;

  User(this.name, this.gender, this.birthday, this.height, this.weight,
      this.abdominalGirth, this.bicepsLGirth, this.bicepsRGirth, this.femoralLGirth, this.femoralRGirth,
      this.specials, this.equipment, this.photos,
      this.aims, this.painFree, this.painDataItems,
      this.dailyActivity, this.numberOfSportsActivities, this.numberOfStepsPerDay,
      this.fba, this.stretchOverHead, this.kneeling, this.shoulderFromWall,
      this.skippingPause1, this.skippingPause2, this.skippingPause3, this.skippingFailureAttempts,
      this.kneeBend, this.plank, this.pushup, this.blackJeff, this.situps, this.dips);

  factory User.fromJson(Map<String, dynamic> json) {
    final String name;
    final String gender;
    final DateTime birthday;
    final int height;
    final int weight;
    final double abdominalGirth;
    final double bicepsLGirth;
    final double bicepsRGirth;
    final double femoralLGirth;
    final double femoralRGirth;
    final String specials;
    final String equipment;
    final int photos;
    final int aims;
    final bool painFree;
    final List<Pain> painDataItems;
    final int dailyActivity;
    final int numberOfSportsActivities;
    final int numberOfStepsPerDay;
    final int fba;
    final int stretchOverHead;
    final int kneeling;
    final int shoulderFromWall;
    final int skippingPause1;
    final int skippingPause2;
    final int skippingPause3;
    final int skippingFailureAttempts;
    final int kneeBend;
    final int plank;
    final int pushup;
    final int blackJeff;
    final int situps;
    final int dips;

    if(json['name'] != null) {
      name = json['name'] as String;
    } else {
      name = '';
    }
    if(json['gender'] != null) {
      gender = json['gender'] as String;
    } else {
      gender = '';
    }
    if(json['birthday'] != null) {
      birthday = DateFormat("dd.MM.yyyy").parse(json['birthday']);
    } else {
      birthday = DateTime.now();
    }
    if(json['height'] != null) {
      height = json['height'] as int;
    } else {
      height = 0;
    }
    if(json['weight'] != null) {
      weight = json['weight'] as int;
    } else {
      weight = 0;
    }
    if(json['abdominalGirth'] != null) {
      abdominalGirth = json['abdominalGirth'] as double;
    } else {
      abdominalGirth = 0;
    }
    if(json['bicepsLGirth'] != null) {
      bicepsLGirth = json['bicepsLGirth'] as double;
    } else {
      bicepsLGirth = 0;
    }
    if(json['bicepsRGirth'] != null) {
      bicepsRGirth = json['bicepsRGirth'] as double;
    } else {
      bicepsRGirth = 0;
    }
    if(json['femoralLGirth'] != null) {
      femoralLGirth = json['femoralLGirth'] as double;
    } else {
      femoralLGirth = 0;
    }
    if(json['femoralRGirth'] != null) {
      femoralRGirth = json['femoralRGirth'] as double;
    } else {
      femoralRGirth = 0;
    }
    if(json['specials'] != null) {
      specials = json['specials'] as String;
    } else {
      specials = '';
    }
    if(json['equipment'] != null) {
      equipment = json['equipment'] as String;
    } else {
      equipment = '';
    }
    if(json['photos'] != null) {
      photos = json['photos'] as int;
    } else {
      photos = 0;
    }
    if(json['aims'] != null) {
      aims = json['aims'] as int;
    } else {
      aims = 0;
    }
    if(json['painFree'] != null) {
      painFree = json['painFree'] as bool;
    } else {
      painFree = false;
    }
    if (json['painItems'] != null) {
      var painObjsJson = json['painItems'] as List;
      painDataItems = painObjsJson.map((painJson) => Pain.fromJson(painJson)).toList();
    } else {
      painDataItems = [];
    }
    if(json['dailyActivity'] != null) {
      dailyActivity = json['dailyActivity'] as int;
    } else {
      dailyActivity = 0;
    }
    if(json['numberOfSportsActivities'] != null) {
      numberOfSportsActivities = json['numberOfSportsActivities'] as int;
    } else {
      numberOfSportsActivities = 0;
    }
    if(json['numberOfStepsPerDay'] != null) {
      numberOfStepsPerDay = json['numberOfStepsPerDay'] as int;
    } else {
      numberOfStepsPerDay = 0;
    }
    if(json['fba'] != null) {
      fba = json['fba'] as int;
    } else {
      fba = 0;
    }
    if(json['stretchOverHead'] != null) {
      stretchOverHead = json['stretchOverHead'] as int;
    } else {
      stretchOverHead = 0;
    }
    if(json['kneeling'] != null) {
      kneeling = json['kneeling'] as int;
    } else {
      kneeling = 0;
    }
    if(json['shoulderFromWall'] != null) {
      shoulderFromWall = json['shoulderFromWall'] as int;
    } else {
      shoulderFromWall = 0;
    }
    if(json['skippingPause1'] != null) {
      skippingPause1 = json['skippingPause1'] as int;
    } else {
      skippingPause1 = 0;
    }
    if(json['skippingPause2'] != null) {
      skippingPause2 = json['skippingPause2'] as int;
    } else {
      skippingPause2 = 0;
    }
    if(json['skippingPause3'] != null) {
      skippingPause3 = json['skippingPause3'] as int;
    } else {
      skippingPause3 = 0;
    }
    if(json['skippingFailureAttempts'] != null) {
      skippingFailureAttempts = json['skippingFailureAttempts'] as int;
    } else {
      skippingFailureAttempts = 0;
    }
    if(json['kneeBend'] != null) {
      kneeBend = json['kneeBend'] as int;
    } else {
      kneeBend = 0;
    }
    if(json['plank'] != null) {
      plank = json['plank'] as int;
    } else {
      plank = 0;
    }
    if(json['pushup'] != null) {
      pushup = json['pushup'] as int;
    } else {
      pushup = 0;
    }
    if(json['blackJeff'] != null) {
      blackJeff = json['blackJeff'] as int;
    } else {
      blackJeff = 0;
    }
    if(json['situps'] != null) {
      situps = json['situps'] as int;
    } else {
      situps = 0;
    }
    if(json['dips'] != null) {
      dips = json['dips'] as int;
    } else {
      dips = 0;
    }

    return User(
        name,
        gender,
        birthday,
        height,
        weight,
        abdominalGirth,
        bicepsLGirth,
        bicepsRGirth,
        femoralLGirth,
        femoralRGirth,
        specials,
        equipment,
        photos,
        aims,
        painFree,
        painDataItems,
        dailyActivity,
        numberOfSportsActivities,
        numberOfStepsPerDay,
        fba,
        stretchOverHead,
        kneeling,
        shoulderFromWall,
        skippingPause1,
        skippingPause2,
        skippingPause3,
        skippingFailureAttempts,
        kneeBend,
        plank,
        pushup,
        blackJeff,
        situps,
        dips
    );
  }

  Map toJson() {
    List? painItems = painDataItems != null ? painDataItems.map((i) => i.toJson()).toList() : null;
    return {
      'name': name,
      'gender': gender,
      'birthday': getBirthdayAsString(),
      'height' : height,
      'weight' : weight,
      'abdominalGirth' : abdominalGirth,
      'bicepsLGirth' : bicepsLGirth,
      'bicepsRGirth' : bicepsRGirth,
      'femoralLGirth' : femoralLGirth,
      'femoralRGirth' : femoralRGirth,
      'specials' : specials,
      'equipment' : equipment,
      'photos' : photos,
      'aims': aims,
      'painFree': painFree,
      'painItems': painItems,
      'dailyActivity' : dailyActivity,
      'numberOfSportsActivities': numberOfSportsActivities,
      'numberOfStepsPerDay': numberOfStepsPerDay,
      'fba': fba,
      'stretchOverHead': stretchOverHead,
      'kneeling': kneeling,
      'shoulderFromWall': shoulderFromWall,
      'skippingPause1': skippingPause1,
      'skippingPause2': skippingPause2,
      'skippingPause3': skippingPause3,
      'skippingFailureAttempts': skippingFailureAttempts,
      'kneeBend': kneeBend,
      'plank': plank,
      'pushup': pushup,
      'blackJeff': blackJeff,
      'situps': situps,
      'dips': dips
  };
  }

  void addPainItem(Pain item) {
    painDataItems.add(item);
  }

  void removePainItemAt(int index) {
    painDataItems.removeAt(index);
  }

  String getBirthdayAsString() {
    String bd = birthday.day.toString();
    bd = bd + ".";
    bd = bd + birthday.month.toString();
    bd = bd + ".";
    bd = bd + birthday.year.toString();

    return bd;
  }

  String getAge() {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthday.year;
    int month1 = currentDate.month;
    int month2 = birthday.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthday.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age.toString();
  }

  int getAgeAsInt() {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthday.year;
    int month1 = currentDate.month;
    int month2 = birthday.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthday.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }

  String getMyBMI() {
    return (weight / (height/100.0 * height/100.0)).toStringAsFixed(1);
  }

  String getNormalBMI() {
    BMI bmi = new BMI();

    if (gender == 'weiblich') {
      return bmi.getBMIRange('f', getAgeAsInt());
    } else {
      return bmi.getBMIRange('m', getAgeAsInt());
    }
  }

  void addImage(int imageNumber) {
    if(imageNumber == 1) {
      photos += 1;
    } else if(imageNumber == 2) {
      photos += 2;
    } else if(imageNumber == 3) {
      photos += 4;
    }
  }

  void removeImage(int imageNumber) {
    if(imageNumber == 1) {
      photos -= 1;
    } else if(imageNumber == 2) {
      photos -= 2;
    } else if(imageNumber == 3) {
      photos -= 4;
    }
  }
}