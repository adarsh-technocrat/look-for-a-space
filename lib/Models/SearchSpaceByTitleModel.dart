class SearchSpaceByTitleModel {
  List<Data>? data;
  Includes? includes;
  List<Errors>? errors;
  Meta? meta;

  SearchSpaceByTitleModel({this.data, this.includes, this.errors, this.meta});

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
    if (json['errors'] != null) {
      errors = [];
      json['errors'].forEach((v) {
        errors!.add(new Errors.fromJson(v));
      });
    }
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
    if (this.errors != null) {
      data['errors'] = this.errors!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? state;
  String? createdAt;
  String? creatorId;
  int? participantCount;
  String? scheduledStart;
  String? id;
  String? title;

  Data(
      {this.state,
      this.createdAt,
      this.creatorId,
      this.participantCount,
      this.scheduledStart,
      this.id,
      this.title});

  Data.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    createdAt = json['created_at'];
    creatorId = json['creator_id'];
    participantCount = json['participant_count'];
    scheduledStart = json['scheduled_start'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    data['created_at'] = this.createdAt;
    data['creator_id'] = this.creatorId;
    data['participant_count'] = this.participantCount;
    data['scheduled_start'] = this.scheduledStart;
    data['id'] = this.id;
    data['title'] = this.title;
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
  String? username;
  String? id;
  String? profileImageUrl;
  String? name;
  String? url;

  Users({this.username, this.id, this.profileImageUrl, this.name, this.url});

  Users.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    id = json['id'];
    profileImageUrl = json['profile_image_url'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['id'] = this.id;
    data['profile_image_url'] = this.profileImageUrl;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Errors {
  String? resourceId;
  String? parameter;
  String? resourceType;
  String? section;
  String? title;
  String? value;
  String? detail;
  String? type;

  Errors(
      {this.resourceId,
      this.parameter,
      this.resourceType,
      this.section,
      this.title,
      this.value,
      this.detail,
      this.type});

  Errors.fromJson(Map<String, dynamic> json) {
    resourceId = json['resource_id'];
    parameter = json['parameter'];
    resourceType = json['resource_type'];
    section = json['section'];
    title = json['title'];
    value = json['value'];
    detail = json['detail'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resource_id'] = this.resourceId;
    data['parameter'] = this.parameter;
    data['resource_type'] = this.resourceType;
    data['section'] = this.section;
    data['title'] = this.title;
    data['value'] = this.value;
    data['detail'] = this.detail;
    data['type'] = this.type;
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
