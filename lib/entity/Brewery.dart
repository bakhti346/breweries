import 'dart:ffi';

class Brewery {
  late int id;
  late String obdbId;
  late String name;
  late String breweryType;
  late String street;
  late String address2;
  late String address3;
  late String city;
  late String state;
  late String countyProvince;
  late String postalCode;
  late String country;
  late String longitude;
  late String latitude;
  late String phone;
  late String websiteUrl;
  late String updatedAt;
  late String createdAt;

  Brewery(
      {required this.id,
      required this.obdbId,
      required this.name,
      required this.breweryType,
      required this.street,
      required this.address2,
      required this.address3,
      required this.city,
      required this.state,
      required this.countyProvince,
      required this.postalCode,
      required this.country,
      required this.longitude,
      required this.latitude,
      required this.phone,
      required this.websiteUrl,
      required this.updatedAt,
      required this.createdAt});

  Brewery.fromJson(Map<String, dynamic> json) {
    id = json['id'] == null ? 0 : json['id'];
    obdbId = json['obdb_id'] == null ? "" : json['obdb_id'];
    name = json['name'] == null ? "" : json['name'];
    breweryType = json['brewery_type'] == null ? "" : json['brewery_type'];
    street = json['street'] == null ? "" : json['street'];
    address2 = json['address_2'] == null ? "" : json['address_2'];
    address3 = json['address_3'] == null ? "" : json['address_3'];
    city = json['city'] == null ? "" : json['city'];
    state = json['state'] == null ? "" : json['state'];
    countyProvince =
        json['county_province'] == null ? "" : json['county_province'];
    postalCode = json['postal_code'] == null ? "" : json['postal_code'];
    country = json['country'] == null ? "" : json['country'];
    longitude = json['longitude'] == null ? "" : json['longitude'];
    latitude = json['latitude'] == null ? "" : json['latitude'];
    phone = json['phone'] == null ? "" : json['phone'];
    websiteUrl = json['website_url'] == null ? "" : json['website_url'];
    updatedAt = json['updated_at'] == null ? "" : json['updated_at'];
    createdAt = json['created_at'] == null ? "" : json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['obdb_id'] = this.obdbId;
    data['name'] = this.name;
    data['brewery_type'] = this.breweryType;
    data['street'] = this.street;
    data['address_2'] = this.address2;
    data['address_3'] = this.address3;
    data['city'] = this.city;
    data['state'] = this.state;
    data['county_province'] = this.countyProvince;
    data['postal_code'] = this.postalCode;
    data['country'] = this.country;
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    data['phone'] = this.phone;
    data['website_url'] = this.websiteUrl;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    return data;
  }
}
