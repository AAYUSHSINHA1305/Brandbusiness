class CapturePaymentModel {
  CapturePaymentModel({
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
  
  CapturePaymentModel.fromJson(Map<String, dynamic> json){
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
    required this.shipping,
    required this.payments,
  });
  late final String referenceId;
  late final Shipping shipping;
  late final Payments payments;
  
  PurchaseUnits.fromJson(Map<String, dynamic> json){
    referenceId = json['reference_id'];
    shipping = Shipping.fromJson(json['shipping']);
    payments = Payments.fromJson(json['payments']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['reference_id'] = referenceId;
    _data['shipping'] = shipping.toJson();
    _data['payments'] = payments.toJson();
    return _data;
  }
}

class Shipping {
  Shipping({
    required this.address,
  });
  late final Address address;
  
  Shipping.fromJson(Map<String, dynamic> json){
    address = Address.fromJson(json['address']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address'] = address.toJson();
    return _data;
  }
}

class Address {
  Address({
    required this.addressLine_1,
    required this.addressLine_2,
    required this.adminArea_2,
    required this.adminArea_1,
    required this.postalCode,
    required this.countryCode,
  });
  late final String addressLine_1;
  late final String addressLine_2;
  late final String adminArea_2;
  late final String adminArea_1;
  late final String postalCode;
  late final String countryCode;
  
  Address.fromJson(Map<String, dynamic> json){
    addressLine_1 = json['address_line_1'];
    addressLine_2 = json['address_line_2'];
    adminArea_2 = json['admin_area_2'];
    adminArea_1 = json['admin_area_1'];
    postalCode = json['postal_code'];
    countryCode = json['country_code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address_line_1'] = addressLine_1;
    _data['address_line_2'] = addressLine_2;
    _data['admin_area_2'] = adminArea_2;
    _data['admin_area_1'] = adminArea_1;
    _data['postal_code'] = postalCode;
    _data['country_code'] = countryCode;
    return _data;
  }
}

class Payments {
  Payments({
    required this.captures,
  });
  late final List<Captures> captures;
  
  Payments.fromJson(Map<String, dynamic> json){
    captures = List.from(json['captures']).map((e)=>Captures.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['captures'] = captures.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Captures {
  Captures({
    required this.id,
    required this.status,
    required this.amount,
    required this.sellerProtection,
    required this.finalCapture,
    required this.disbursementMode,
    required this.sellerReceivableBreakdown,
    required this.createTime,
    required this.updateTime,
    required this.links,
  });
  late final String id;
  late final String status;
  late final Amount amount;
  late final SellerProtection sellerProtection;
  late final bool finalCapture;
  late final String disbursementMode;
  late final SellerReceivableBreakdown sellerReceivableBreakdown;
  late final String createTime;
  late final String updateTime;
  late final List<Links> links;
  
  Captures.fromJson(Map<String, dynamic> json){
    id = json['id'];
    status = json['status'];
    amount = Amount.fromJson(json['amount']);
    sellerProtection = SellerProtection.fromJson(json['seller_protection']);
    finalCapture = json['final_capture'];
    disbursementMode = json['disbursement_mode'];
    sellerReceivableBreakdown = SellerReceivableBreakdown.fromJson(json['seller_receivable_breakdown']);
    createTime = json['create_time'];
    updateTime = json['update_time'];
    links = List.from(json['links']).map((e)=>Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['status'] = status;
    _data['amount'] = amount.toJson();
    _data['seller_protection'] = sellerProtection.toJson();
    _data['final_capture'] = finalCapture;
    _data['disbursement_mode'] = disbursementMode;
    _data['seller_receivable_breakdown'] = sellerReceivableBreakdown.toJson();
    _data['create_time'] = createTime;
    _data['update_time'] = updateTime;
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

class SellerReceivableBreakdown {
  SellerReceivableBreakdown({
    required this.grossAmount,
    required this.paypalFee,
    required this.netAmount,
  });
  late final GrossAmount grossAmount;
  late final PaypalFee paypalFee;
  late final NetAmount netAmount;
  
  SellerReceivableBreakdown.fromJson(Map<String, dynamic> json){
    grossAmount = GrossAmount.fromJson(json['gross_amount']);
    paypalFee = PaypalFee.fromJson(json['paypal_fee']);
    netAmount = NetAmount.fromJson(json['net_amount']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gross_amount'] = grossAmount.toJson();
    _data['paypal_fee'] = paypalFee.toJson();
    _data['net_amount'] = netAmount.toJson();
    return _data;
  }
}

class GrossAmount {
  GrossAmount({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  GrossAmount.fromJson(Map<String, dynamic> json){
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

class PaypalFee {
  PaypalFee({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  PaypalFee.fromJson(Map<String, dynamic> json){
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

class NetAmount {
  NetAmount({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  NetAmount.fromJson(Map<String, dynamic> json){
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