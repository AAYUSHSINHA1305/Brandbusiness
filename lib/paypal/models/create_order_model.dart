class CreateOrderModel {
  CreateOrderModel({
    required this.id,
    required this.intent,
    required this.status,
    required this.purchaseUnits,
    required this.createTime,
    required this.links,
  });
  late final String id;
  late final String intent;
  late final String status;
  late final List<PurchaseUnits> purchaseUnits;
  late final String createTime;
  late final List<Links> links;
  
  CreateOrderModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    intent = json['intent'];
    status = json['status'];
    purchaseUnits = List.from(json['purchase_units']).map((e)=>PurchaseUnits.fromJson(e)).toList();
    createTime = json['create_time'];
    links = List.from(json['links']).map((e)=>Links.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['intent'] = intent;
    _data['status'] = status;
    _data['purchase_units'] = purchaseUnits.map((e)=>e.toJson()).toList();
    _data['create_time'] = createTime;
    _data['links'] = links.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class PurchaseUnits {
  PurchaseUnits({
    required this.referenceId,
    required this.amount,
    required this.payee,
    required this.items,
  });
  late final String referenceId;
  late final Amount amount;
  late final Payee payee;
  late final List<Items> items;
  
  PurchaseUnits.fromJson(Map<String, dynamic> json){
    referenceId = json['reference_id'];
    amount = Amount.fromJson(json['amount']);
    payee = Payee.fromJson(json['payee']);
    items = List.from(json['items']).map((e)=>Items.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['reference_id'] = referenceId;
    _data['amount'] = amount.toJson();
    _data['payee'] = payee.toJson();
    _data['items'] = items.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Amount {
  Amount({
    required this.currencyCode,
    required this.value,
    required this.breakdown,
  });
  late final String currencyCode;
  late final String value;
  late final Breakdown breakdown;
  
  Amount.fromJson(Map<String, dynamic> json){
    currencyCode = json['currency_code'];
    value = json['value'];
    breakdown = Breakdown.fromJson(json['breakdown']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['currency_code'] = currencyCode;
    _data['value'] = value;
    _data['breakdown'] = breakdown.toJson();
    return _data;
  }
}

class Breakdown {
  Breakdown({
    required this.itemTotal,
  });
  late final ItemTotal itemTotal;
  
  Breakdown.fromJson(Map<String, dynamic> json){
    itemTotal = ItemTotal.fromJson(json['item_total']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['item_total'] = itemTotal.toJson();
    return _data;
  }
}

class ItemTotal {
  ItemTotal({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  ItemTotal.fromJson(Map<String, dynamic> json){
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

class Payee {
  Payee({
    required this.emailAddress,
    required this.merchantId,
  });
  late final String emailAddress;
  late final String merchantId;
  
  Payee.fromJson(Map<String, dynamic> json){
    emailAddress = json['email_address'];
    merchantId = json['merchant_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['email_address'] = emailAddress;
    _data['merchant_id'] = merchantId;
    return _data;
  }
}

class Items {
  Items({
    required this.name,
    required this.unitAmount,
    required this.quantity,
    required this.description,
  });
  late final String name;
  late final UnitAmount unitAmount;
  late final String quantity;
  late final String description;
  
  Items.fromJson(Map<String, dynamic> json){
    name = json['name'];
    unitAmount = UnitAmount.fromJson(json['unit_amount']);
    quantity = json['quantity'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['unit_amount'] = unitAmount.toJson();
    _data['quantity'] = quantity;
    _data['description'] = description;
    return _data;
  }
}

class UnitAmount {
  UnitAmount({
    required this.currencyCode,
    required this.value,
  });
  late final String currencyCode;
  late final String value;
  
  UnitAmount.fromJson(Map<String, dynamic> json){
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