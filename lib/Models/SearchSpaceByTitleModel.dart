class SearchSpaceByTitleModel {
  List<Data>? data;
  Includes? includes;
  Meta? meta;

  SearchSpaceByTitleModel({this.data, this.includes, this.meta});

  SearchSpaceByTitleModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    includes = json['includes'] != null
        ? new Includes.fromJson(json['includes'])
        : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.includes != null) {
      data['includes'] = this.includes!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? state;
  String? creatorId;
  String? title;
  int? participantCount;
  String? scheduledStart;
  String? id;
  String? createdAt;

  Data(
      {this.state,
      this.creatorId,
      this.title,
      this.participantCount,
      this.scheduledStart,
      this.id,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    creatorId = json['creator_id'];
    title = json['title'];
    participantCount = json['participant_count'];
    scheduledStart = json['scheduled_start'];
    id = json['id'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['creator_id'] = this.creatorId;
    data['title'] = this.title;
    data['participant_count'] = this.participantCount;
    data['scheduled_start'] = this.scheduledStart;
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    return data;
  }
}

class Includes {
  List<Users>? users;

  Includes({this.users});

  Includes.fromJson(Map<String, dynamic> json) {
    if (json['users'] != null) {
      users = [];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  String? url;
  String? name;
  String? username;
  String? profileImageUrl;
  String? id;

  Users({this.url, this.name, this.username, this.profileImageUrl, this.id});

  Users.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    username = json['username'];
    profileImageUrl = json['profile_image_url'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['name'] = this.name;
    data['username'] = this.username;
    data['profile_image_url'] = this.profileImageUrl;
    data['id'] = this.id;
    return data;
  }
}

class Meta {
  int? resultCount;

  Meta({this.resultCount});

  Meta.fromJson(Map<String, dynamic> json) {
    resultCount = json['result_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result_count'] = this.resultCount;
    return data;
  }
}
