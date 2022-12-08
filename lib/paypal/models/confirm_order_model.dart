class ConfirmOrderModel {
  ConfirmOrderModel({
    required this.id,
    required this.status,
    required this.paymentSource,
    required this.payer,
    required this.links,
  });
  late final String id;
  late final String status;
  late final PaymentSource paymentSource;
  late final Payer payer;
  late final List<Links> links;
  
  ConfirmOrderModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    status = json['status'];
    paymentSource = PaymentSource.fromJson(json['payment_source']);
    payer = Payer.fromJson(json['payer']);
    links = List.from(json['links']).map((e)=>Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['status'] = status;
    _data['payment_source'] = paymentSource.toJson();
    _data['payer'] = payer.toJson();
    _data['links'] = links.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class PaymentSource {
  PaymentSource({
    required this.paypal,
  });
  late final Paypal paypal;
  
  PaymentSource.fromJson(Map<String, dynamic> json){
    paypal = Paypal.fromJson(json['paypal']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['paypal'] = paypal.toJson();
    return _data;
  }
}

class Paypal {
  Paypal({
    required this.name,
    required this.emailAddress,
  });
  late final Name name;
  late final String emailAddress;
  
  Paypal.fromJson(Map<String, dynamic> json){
    name = Name.fromJson(json['name']);
    emailAddress = json['email_address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name.toJson();
    _data['email_address'] = emailAddress;
    return _data;
  }
}

class Name {
  Name({
    required this.givenName,
    required this.surname,
  });
  late final String givenName;
  late final String surname;
  
  Name.fromJson(Map<String, dynamic> json){
    givenName = json['given_name'];
    surname = json['surname'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['given_name'] = givenName;
    _data['surname'] = surname;
    return _data;
  }
}

class Payer {
  Payer({
    required this.name,
    required this.emailAddress,
  });
  late final Name name;
  late final String emailAddress;
  
  Payer.fromJson(Map<String, dynamic> json){
    name = Name.fromJson(json['name']);
    emailAddress = json['email_address'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name.toJson();
    _data['email_address'] = emailAddress;
    return _data;
  }
}

class Links {
  Links({
    required this.href,
    required this.rel,
    required this.method,
  });
  late final String href;
  late final String rel;
  late final String method;
  
  Links.fromJson(Map<String, dynamic> json){
    href = json['href'];
    rel = json['rel'];
    method = json['method'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['href'] = href;
    _data['rel'] = rel;
    _data['method'] = method;
    return _data;
  }
}