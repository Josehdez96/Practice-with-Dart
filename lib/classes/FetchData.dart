import 'dart:convert';

import 'Persona.dart';
import 'Support.dart';

FetchData fetchDataFromJson(String str) => FetchData.fromJson(json.decode(str));

String fetchDataToJson(FetchData data) => json.encode(data.toJson());

class FetchData {
    FetchData({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
        required this.support,
    });

    int page;
    int perPage;
    int total;
    int totalPages;
    List<User> data;
    Support support;

    factory FetchData.fromJson(Map<String, dynamic> json) => FetchData(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: List<User>.from(json['data'].map((x) => User.fromJson(x))),
        support: Support.fromJson(json['support']),
    );

    Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
        'support': support.toJson(),
    };
}
