class AuthorizePaymentModel {
  AuthorizePaymentModel({
    required this.id,
    required this.status,
    required this.paymentSource,
    required this.purchaseUnits,
    required this.payer,
    required this.links,
  });
  late final String id;
  late final String status;
  late final PaymentSource paymentSource;
  late final List<PurchaseUnits> purchaseUnits;
  late final Payer payer;
  late final List<Links> links;
  
  AuthorizePaymentModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    status = json['status'];
    paymentSource = PaymentSource.fromJson(json['payment_source']);
    purchaseUnits = List.from(json['purchase_units']).map((e)=>PurchaseUnits.fromJson(e)).toList();
    payer = Payer.fromJson(json['payer']);
    links = List.from(json['links']).map((e)=>Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['status'] = status;
    _data['payment_source'] = paymentSource.toJson();
    _data['purchase_units'] = purchaseUnits.map((e)=>e.toJson()).toList();
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
    required this.accountId,
  });
  late final Name name;
  late final String emailAddress;
  late final String accountId;
  
  Paypal.fromJson(Map<String, dynamic> json){
    name = Name.fromJson(json['name']);
    emailAddress = json['email_address'];
    accountId = json['account_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name.toJson();
    _data['email_address'] = emailAddress;
    _data['account_id'] = accountId;
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

class PurchaseUnits {
  PurchaseUnits({
    required this.referenceId,
    required this.payments,
  });
  late final String referenceId;
  late final Payments payments;
  
  PurchaseUnits.fromJson(Map<String, dynamic> json){
    referenceId = json['reference_id'];
    payments = Payments.fromJson(json['payments']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['reference_id'] = referenceId;
    _data['payments'] = payments.toJson();
    return _data;
  }
}

class Payments {
  Payments({
    required this.authorizations,
  });
  late final List<Authorizations> authorizations;
  
  Payments.fromJson(Map<String, dynamic> json){
    authorizations = List.from(json['authorizations']).map((e)=>Authorizations.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['authorizations'] = authorizations.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Authorizations {
  Authorizations({
    required this.id,
    required this.status,
    required this.amount,
    required this.sellerProtection,
    required this.expirationTime,
    required this.links,
  });
  late final String id;
  late final String status;
  late final Amount amount;
  late final SellerProtection sellerProtection;
  late final String expirationTime;
  late final List<Links> links;
  
  Authorizations.fromJson(Map<String, dynamic> json){
    id = json['id'];
    status = json['status'];
    amount = Amount.fromJson(json['amount']);
    sellerProtection = SellerProtection.fromJson(json['seller_protection']);
    expirationTime = json['expiration_time'];
    links = List.from(json['links']).map((e)=>Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['status'] = status;
    _data['amount'] = amount.toJson();
    _data['seller_protection'] = sellerProtection.toJson();
    _data['expiration_time'] = expirationTime;
    _data['links'] = links.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Amount {
  Amount({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  Amount.fromJson(Map<String, dynamic> json){
    currencyCode = json['currency_code'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['currency_code'] = currencyCode;
    _data['value'] = value;
    return _data;
  }
}

class SellerProtection {
  SellerProtection({
    required this.status,
    required this.disputeCategories,
  });
  late final String status;
  late final List<String> disputeCategories;
  
  SellerProtection.fromJson(Map<String, dynamic> json){
    status = json['status'];
    disputeCategories = List.castFrom<dynamic, String>(json['dispute_categories']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['dispute_categories'] = disputeCategories;
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

class Payer {
  Payer({
    required this.name,
    required this.emailAddress,
    required this.payerId,
  });
  late final Name name;
  late final String emailAddress;
  late final String payerId;
  
  Payer.fromJson(Map<String, dynamic> json){
    name = Name.fromJson(json['name']);
    emailAddress = json['email_address'];
    payerId = json['payer_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name.toJson();
    _data['email_address'] = emailAddress;
    _data['payer_id'] = payerId;
    return _data;
  }
}