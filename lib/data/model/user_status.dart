class UserStatus {
  bool requestedTrainingsplan = false;
  bool dataUploaded = false;
  DateTime lastUploadDate;
  DateTime lastDownloadDate;
  DateTime lastTrainingRequestDate;

  UserStatus(this.dataUploaded, this.requestedTrainingsplan, this.lastUploadDate, this.lastDownloadDate, this.lastTrainingRequestDate);

  factory UserStatus.fromJson(Map<String, dynamic> json) {
    final bool requestedTrainingsplan;
    final bool dataUploaded;
    final DateTime lastUploadDate;
    final DateTime lastDownloadDate;
    final DateTime lastTrainingRequestDate;

    if(json['requestedTrainingsplan'] != null) {
      requestedTrainingsplan = json['requestedTrainingsplan'] as bool;
    } else {
      requestedTrainingsplan = false;
    }
    if(json['dataUploaded'] != null) {
      dataUploaded = json['dataUploaded'] as bool;
    } else {
      dataUploaded = false;
    }
    if(json['lastUploadDate'] != null) {
      String s = json['lastUploadDate'];
      lastUploadDate = DateTime.parse(s);
    } else {
      lastUploadDate = DateTime.now();
    }
    if(json['lastDownloadDate'] != null) {
      String s = json['lastDownloadDate'];
      lastDownloadDate = DateTime.parse(s);
    } else {
      lastDownloadDate = DateTime.now();
    }
    if(json['lastTrainingRequestDate'] != null) {
      String s = json['lastTrainingRequestDate'];
      lastTrainingRequestDate = DateTime.parse(s);
    } else {
      lastTrainingRequestDate = DateTime.now();
    }


    return UserStatus(
      dataUploaded,
      requestedTrainingsplan,
      lastUploadDate,
      lastDownloadDate,
      lastTrainingRequestDate
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dataUploaded': dataUploaded,
      'requestedTrainingsplan': requestedTrainingsplan,
      'lastUploadDate': lastUploadDate.toString(),
      'lastDownloadDate': lastDownloadDate.toString(),
      'lastTrainingRequestDate': lastTrainingRequestDate.toString(),
    };
  }
}