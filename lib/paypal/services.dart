// import 'dart:convert';

// import 'package:brandbusiness/paypal/models/auth_model.dart';
// import 'package:brandbusiness/paypal/models/authorize_payment_model.dart';
// import 'package:brandbusiness/paypal/models/create_order_model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:random_string_generator/random_string_generator.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class PaypalServices {
//   // E1W 1BQ 2223000048400011
//   String OrderId = "";
//   String aprroveurl = "";

//   // String accessToken = "";

//   getAuthToken() async {
//     debugPrint("=================  GetAuthToken   ====================");
//     var headers = {
//       'Authorization':
//           'Basic QVRLVW1rLUotcUVfc1BZNEdnME9JNE9ORUhRR1RxOE1IeXV2cWVFV09EWkFSbkQ2OUJFdmZxZWRlbVFuWWh1dDNOZmNuYmZsaGI1cW1vOGM6RUpFdklYaGZMSWV1eTNXbllIaVhtYm4yc19sOWZ6U2dURWdTNTRLUGVMeHd0QTNvSnduSUpSY1ExS3NSd1MtMDNJdUVvZEItNzZUTlBzUXU=',
//       'Content-Type': 'application/x-www-form-urlencoded'
//     };
//     var request = http.Request(
//         'POST', Uri.parse('https://api-m.sandbox.paypal.com/v1/oauth2/token'));
//     request.bodyFields = {'grant_type': 'client_credentials'};
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       // debugPrint(await response.stream.bytesToString());
//       final respStr = await response.stream.bytesToString();
//       var respJson = AuthModel.fromJson(json.decode(respStr));
//       debugPrint("respJson.accessToken + ${respJson.accessToken}");
//       // accessToken = respJson.accessToken;
//       return respJson.accessToken;
//     } else {
//       debugPrint(response.reasonPhrase);
//       return null;
//     }
//   }

//   createOrder(String accessToken) async {
//     debugPrint("=================  CreateOrder   ====================");
//     var generator = RandomStringGenerator(
//       hasAlpha: true,
//       // alphaCase: AlphaCase.UPPERCASE_ONLY,
//       hasDigits: false,
//       hasSymbols: false,
//       minLength: 10,
//       maxLength: 25,
//       mustHaveAtLeastOneOfEach: true,
//     );
//     String paypalRequestId = generator.generate();
//     print("Paypal Request Id ======= ======  ::: $paypalRequestId");
//     var headers = {
//       'Content-Type': 'application/json',
//       'Prefer': 'return=representation',
//       'PayPal-Request-Id':
//           '$paypalRequestId', // UNIQUE ID - THIS SHOULD BE GENERATED FOR EVERY ORDER
//       'Authorization': 'Bearer $accessToken'
//     };
//     var request = http.Request('POST',
//         Uri.parse('https://api-m.sandbox.paypal.com/v2/checkout/orders'));
//     request.body = json.encode({
//       "intent": "CAPTURE",
//       "purchase_units": [
//         {
//           "items": [
//             {
//               "name": "T-Shirt",
//               "description": "Green XL",
//               "quantity": "1",
//               "unit_amount": {"currency_code": "USD", "value": "1.00"}
//             }
//           ],
//           "amount": {
//             "currency_code": "USD", // INR not available in paypal
//             "value": "1.00",
//             "breakdown": {
//               "item_total": {"currency_code": "USD", "value": "1.00"}
//             }
//           }
//         }
//       ],
//       "application_context": {
//         "return_url": "https://example.com/return",
//         "cancel_url": "https://example.com/cancel"
//       }
//     });
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();
//     debugPrint(response.statusCode.toString());
//     if (response.statusCode == 201) {
//       // print(await response.stream.bytesToString());
//       var respJson = CreateOrderModel.fromJson(
//           json.decode(await response.stream.bytesToString()));
//       if (respJson.status == "CREATED") {
//         OrderId = respJson.id;
//         debugPrint(OrderId);
//         // authorizeOrder();
//         return respJson.id;
//       }
//     } else {
//       print(response.reasonPhrase);
//     }
//   }

//   authorizeOrder({required String accessToken, required String orderId, required BuildContext context,
//       required WebViewController webViewController}) async {
//     debugPrint("=================  AuthorizeOrder   ====================");
//     var headers = {
//       'Content-Type': 'application/json',
//       'Prefer': 'return=representation',
//       'PayPal-Request-Id': '29fef902-6f7c-473a-9f9b-ec4bdbb43ec9',
//       'Authorization': 'Bearer $accessToken'
//     };
//     var request = http.Request(
//         'POST',
//         Uri.parse(
//             'https://api-m.sandbox.paypal.com/v2/checkout/orders/$orderId/authorize'));
//     request.body = '''''';
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 201) {
//       print(await response.stream.bytesToString());
//       var respJson = AuthorizePaymentModel.fromJson(
//           json.decode(await response.stream.bytesToString()));
//       webViewController.loadUrl("https://api-m.paypal.com/v2/payments/authorizations/$orderId/capture");
//       // capturePaymentForOrder(accessToken);
//       // if (respJson.status == "") {
//       //   capturePaymentForOrder(accessToken);
//       // }
//     } else {
//       print(response.reasonPhrase);
//     }
//   }

//   // approveOrder() async {
//   //   debugPrint("===============  Approve Order  ====================");
//   // }

//   capturePaymentForOrder(String accessToken) async {
//     debugPrint(
//         "=================  Capture Payment for Order   ====================");
//     var headers = {
//       'Content-Type': 'application/json',
//       'Prefer': 'return=representation',
//       'PayPal-Request-Id': 'ewjurgiuwreguiwrgfiurwgfuigiqgif24qifgbhwekgbweg',
//       'Authorization': 'Bearer $accessToken'
//     };
//     var request = http.Request(
//         'POST',
//         Uri.parse(
//             'https://api-m.sandbox.paypal.com/v2/checkout/orders/$OrderId/capture'));
//     request.body = '''''';
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       print(await response.stream.bytesToString());
//     } else {
//       print(response.reasonPhrase);
//     }
//   }

//   // Confirm Order..
//   confirmTheOrder(String accessToken) async {
//     debugPrint(
//         "=================  Capture Payment for Order   ====================");
//     var headers = {
//       'Content-Type': 'application/json',
//       'Prefer': 'return=representation',
//       'PayPal-Request-Id': 'ewjurgiuwreguiwrgfiurwgfuigiqgif24qifgbhwekgbweg',
//       'Authorization': 'Bearer $accessToken'
//     };
//     var request = http.Request(
//         'POST',
//         Uri.parse(
//             'https://api-m.sandbox.paypal.com/v2/checkout/orders/$OrderId/capture'));
//     request.body = '''''';
//     request.headers.addAll(headers);

//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       print(await response.stream.bytesToString());
//     } else {
//       print(response.reasonPhrase);
//     }
//   }
// }
