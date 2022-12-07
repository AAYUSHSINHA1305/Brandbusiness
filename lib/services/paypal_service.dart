import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http_auth/http_auth.dart';

class PaypalServices {
  // Get the login credentials of paypal dashboard
  // Api request & all are done
  // We just need to check the url & keys

  String domain = "https://api.sandbox.paypal.com"; // for sandbox mode
  // String domain = "https://api.paypal.com"; // for production mode

  // change clientId and secret with your own, provided by paypal
  String clientId =
      'ATKUmk-J-qE_sPY4Gg0OI4ONEHQGTq8MHyuvqeEWODZARnD69BEvfqedemQnYhut3Nfcnbflhb5qmo8c';
  String secret =
      'EJEvIXhfLIeuy3WnYHiXmbn2s_l9fzSgTEgS54KPeLxwtA3oJwnIJRcQ1KsRwS-03IuEodB-76TNPsQu';

  // for getting the access token from Paypal
  Future<dynamic> getAccessToken() async {
    print("getAccessToken");
    try {
      var client = BasicAuthClient(clientId, secret);
      http.Response response = await client.post(
          Uri.parse('$domain/v1/oauth2/token?grant_type=client_credentials'));
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        final body = convert.jsonDecode(response.body);
        return body["access_token"];
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  // for creating the payment request with Paypal
  Future<Map<String, String>?> createPaypalPayment(
      transactions, accessToken) async {
    debugPrint("Create Paypal Payment");
    try {
      var headers = {
        'Content-Type': 'application/json',
        'Prefer': 'return=representation',
        'PayPal-Request-Id': '835496ce-7761-4cd2-ae6a-372ca5254391',
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

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
        // show Order Details
        
        // store the order id 




        // Authorize Payment for Order
        // Capture Payment for Order 
        // Confirm the Order

      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      rethrow;
    }
  }

  // for executing the payment transaction
  Future<String?> executePayment(url, payerId, accessToken) async {
    debugPrint("Execute payment........");
    try {
      var response = await http.post(url,
          body: convert.jsonEncode({"payer_id": payerId}),
          headers: {
            "content-type": "application/json",
            'Authorization': 'Bearer ' + accessToken
          });
      debugPrint(response.body);
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return body["id"];
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }
}
