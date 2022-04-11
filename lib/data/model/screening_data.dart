import 'package:tfse_screening_common/data/model/pain.dart';

class ScreeningData {
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

  ScreeningData(this.aims, this.painFree, this.painDataItems,
      this.dailyActivity, this.numberOfSportsActivities, this.numberOfStepsPerDay,
      this.fba, this.stretchOverHead, this.kneeling, this.shoulderFromWall,
      this.skippingPause1, this.skippingPause2, this.skippingPause3, this.skippingFailureAttempts,
      this.kneeBend, this.plank, this.pushup, this.blackJeff, this.situps, this.dips);

  factory ScreeningData.fromJson(Map<String, dynamic> json) {
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

    return ScreeningData(
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
}