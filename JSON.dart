void main() {
  Map<String, dynamic> jsonSample = {
    "name": "balaji",
    "age": 28,
    "occupation": {"role": "developer", "tech": "flutter"},
    "person_list": [
      {
        "name": "balaji",
        "age": 25,
      },
      {"name": "srini", "age": 25, "phone": 6328037835},
      {
        "name": 'dhinesh',
        "age": 21,
        "family": {
          "father": {"name": "Ramadoss", "age": 60},
          "mother": {"name": "Santhi", "age": 55},
          "children": [
            {"name": "dhinesh"},
            {"name": "balaji"}
          ]
        },
      }
    ],
  };
  print(jsonSample["person_list"][2]["family"]["father"]["name"]);

  MapToObject ob = MapToObject.fromJson(jsonSample);

  print(ob.toJson());

  print(ob.personList?[1].phone);
  print(ob.personList?[2].family?.mother?.name);
  print(ob.personList?[2].family?.mother?.age);
}

class MapToObject {
  String? name;
  int? age;
  Occupation? occupation;
  List<Person>? personList;

  MapToObject({
    this.name,
    this.age,
    this.occupation,
    this.personList,
  });

  factory MapToObject.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> personMap = json['person_list'];

    List<Person> persons = personMap.map((e) => Person.fromJson(e)).toList();

    return MapToObject(
      name: json['name'],
      age: json['age'] is int ? json['age'] : null,
      occupation: Occupation.fromJson(json['occupation']),
      personList: persons,
    );
  }

  Map<String, dynamic> toJson() {
    var personJsonList = personList?.map((e) => e.toJson()).toList();
    return {
      'name': name,
      'age': age,
      'occupation': occupation?.toJson(),
      'person_list': personJsonList,
    };
  }
}

class Occupation {
  String? role;
  String? tech;

  Occupation({
    this.role,
    this.tech,
  });

  Occupation.fromJson(Map<String, String> json)
      : role = json['role'],
        tech = json['tech'];

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'tech': tech,
    };
  }
}

class Person {
  String? name;
  int? age;
  int? phone;
  Family? family;

  Person({
    this.name,
    this.age,
    this.phone,
    this.family,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      phone: json['phone'],
      family: json['family'] != null ? Family.fromJson(json['family']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'phone': phone,
      'family': family?.toJson(),
    };
  }
}

class Family {
  FamilyDetail? father;
  FamilyDetail? mother;
  List<Children>? children;

  Family({
    this.father,
    this.mother,
    this.children,
  });

  factory Family.fromJson(Map<String, dynamic> json) {
    List<Map<String, dynamic>> childrenDetail = json['children'];
    List<Children> children =
        childrenDetail.map((e) => Children.fromJson(e)).toList();
    return Family(
      father: FamilyDetail.fromJson(json['father']),
      mother: FamilyDetail.fromJson(json['mother']),
      children: children,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>>? child =
        children?.map((e) => e.toJson()).toList();
    return {
      'father': father?.toJson(),
      'mother': mother?.toJson(),
      'children': child,
    };
  }
}

class FamilyDetail {
  String? name;
  int? age;

  FamilyDetail({
    this.name,
    this.age,
  });

  factory FamilyDetail.fromJson(Map<String, dynamic> json) {
    return FamilyDetail(
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Children {
  String? name;
  Children({this.name});

  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name};
  }
}
