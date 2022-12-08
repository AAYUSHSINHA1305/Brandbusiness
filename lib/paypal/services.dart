import 'dart:convert';

import 'package:brandbusiness/paypal/models/auth_model.dart';
import 'package:brandbusiness/paypal/models/create_order_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PaypalServices {
  String OrderId = "";
  String aprroveurl = "";

  String accessToken = "";

  getAuthToken() async {
    debugPrint("=================  GetAuthToken   ====================");
    var headers = {
      'Authorization':
          'Basic QVRLVW1rLUotcUVfc1BZNEdnME9JNE9ORUhRR1RxOE1IeXV2cWVFV09EWkFSbkQ2OUJFdmZxZWRlbVFuWWh1dDNOZmNuYmZsaGI1cW1vOGM6RUpFdklYaGZMSWV1eTNXbllIaVhtYm4yc19sOWZ6U2dURWdTNTRLUGVMeHd0QTNvSnduSUpSY1ExS3NSd1MtMDNJdUVvZEItNzZUTlBzUXU=',
      'Content-Type': 'application/x-www-form-urlencoded'
    };
    var request = http.Request(
        'POST', Uri.parse('https://api-m.sandbox.paypal.com/v1/oauth2/token'));
    request.bodyFields = {'grant_type': 'client_credentials'};
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // debugPrint(await response.stream.bytesToString());
      final respStr = await response.stream.bytesToString();
      var respJson = AuthModel.fromJson(json.decode(respStr));
      debugPrint("respJson.accessToken + ${respJson.accessToken}");
      if (respJson.accessToken != null) {
        accessToken = respJson.accessToken;
        createOrder();
      }
    } else {
      debugPrint(response.reasonPhrase);
    }
  }

  createOrder() async {
    debugPrint("=================  CreateOrder   ====================");
    var headers = {
      'Content-Type': 'application/json',
      'Prefer': 'return=representation',
      'PayPal-Request-Id':
          'ewjurgiuwreguiwrgfiurwgfuigiqgif24qifgbhwekgbweg', // UNIQUE ID - THIS SHOULD BE GENERATED FOR EVERY ORDER
      'Authorization': 'Bearer $accessToken'
    };
    var request = http.Request('POST',
        Uri.parse('https://api-m.sandbox.paypal.com/v2/checkout/orders'));
    request.body = json.encode({
      "intent": "CAPTURE",
      "purchase_units": [
        {
          "items": [
            {
              "name": "T-Shirt",
              "description": "Green XL",
              "quantity": "1",
              "unit_amount": {"currency_code": "USD", "value": "100.00"}
            }
          ],
          "amount": {
            "currency_code": "USD",
            "value": "100.00",
            "breakdown": {
              "item_total": {"currency_code": "USD", "value": "100.00"}
            }
          }
        }
      ],
      "application_context": {
        "return_url": "https://example.com/return",
        "cancel_url": "https://example.com/cancel"
      }
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 201) {
      // print(await response.stream.bytesToString());
      var respJson = CreateOrderModel.fromJson(
          json.decode(await response.stream.bytesToString()));
      if (respJson.status == "CREATED") {
        OrderId = respJson.id;
        debugPrint(OrderId);
        // authorizeOrder();
        capturePaymentForOrder();
      }
    } else {
      print(response.reasonPhrase);
    }
  }

  authorizeOrder() async {
    debugPrint("=================  AuthorizeOrder   ====================");
    var headers = {
      'Content-Type': 'application/json',
      'Prefer': 'return=representation',
      'PayPal-Request-Id': '29fef902-6f7c-473a-9f9b-ec4bdbb43ec9',
      'Authorization': 'Bearer $accessToken'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://api-m.sandbox.paypal.com/v2/checkout/orders/$OrderId/authorize'));
    request.body = '''''';
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      var respJson = CreateOrderModel.fromJson(
          json.decode(await response.stream.bytesToString()));
      if (respJson.status == "") {
        capturePaymentForOrder();
      }
    } else {
      print(response.reasonPhrase);
    }
  }

  capturePaymentForOrder() async {
    debugPrint(
        "=================  Create Payment for Order   ====================");
    var headers = {
      'Content-Type': 'application/json',
      'Prefer': 'return=representation',
      'PayPal-Request-Id': 'ewjurgiuwreguiwrgfiurwgfuigiqgif24qifgbhwekgbweg',
      'Authorization': 'Bearer $accessToken'
    };
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://api-m.sandbox.paypal.com/v2/checkout/orders/$OrderId/capture'));
    request.body = '''''';
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  // Confirm Order..
}
