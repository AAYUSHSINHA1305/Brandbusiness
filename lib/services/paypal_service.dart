import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert' as convert;
import 'package:http_auth/http_auth.dart';

class PaypalServices {
  // Get the login credentials of paypal dashboard
  // Api request & all are done
  // We just need to check the url & keys

  String domain = "https://api-m.sandbox.paypal.com"; // for sandbox mode
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
      // Api Request
      var headers = {
        'Authorization':
            'Basic QVRLVW1rLUotcUVfc1BZNEdnME9JNE9ORUhRR1RxOE1IeXV2cWVFV09EWkFSbkQ2OUJFdmZxZWRlbVFuWWh1dDNOZmNuYmZsaGI1cW1vOGM6RUpFdklYaGZMSWV1eTNXbllIaVhtYm4yc19sOWZ6U2dURWdTNTRLUGVMeHd0QTNvSnduSUpSY1ExS3NSd1MtMDNJdUVvZEItNzZUTlBzUXU=',
        'Content-Type': 'application/x-www-form-urlencoded'
      };
      var request = http.Request(
          'POST', Uri.parse('https://api.paypal.com/v1/oauth2/token'));
      request.bodyFields = {'grant_type': 'client_credentials'};
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();
      // checking status code
      print("Response status code : ${response.statusCode}");
      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
      if (response.statusCode == 200) {
        final body =
            convert.jsonDecode(response.stream.bytesToString().toString());
        return body["access_token"];
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  // for creating the payment request with Paypal
  Future<Map<String, String>?> createPaypalPayment(
      transactions, accessToken) async {
    try {
      var response = await http.post("$domain/v2/payments/payment" as Uri,
          body: convert.jsonEncode(transactions),
          headers: {
            "content-type": "application/json",
            'Authorization': 'Bearer ' + accessToken
          });

      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 201) {
        if (body["links"] != null && body["links"].length > 0) {
          List links = body["links"];

          String executeUrl = "";
          String approvalUrl = "";
          final item = links.firstWhere((o) => o["rel"] == "approval_url",
              orElse: () => null);
          if (item != null) {
            approvalUrl = item["href"];
          }
          final item1 = links.firstWhere((o) => o["rel"] == "execute",
              orElse: () => null);
          if (item1 != null) {
            executeUrl = item1["href"];
          }
          return {"executeUrl": executeUrl, "approvalUrl": approvalUrl};
        }
        return null;
      } else {
        throw Exception(body["message"]);
      }
    } catch (e) {
      rethrow;
    }
  }

  // for executing the payment transaction
  Future<String?> executePayment(url, payerId, accessToken) async {
    try {
      var response = await http.post(url,
          body: convert.jsonEncode({"payer_id": payerId}),
          headers: {
            "content-type": "application/json",
            'Authorization': 'Bearer ' + accessToken
          });

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
