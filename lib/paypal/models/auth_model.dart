class AuthModel {
  AuthModel({
    required this.scope,
    required this.accessToken,
    required this.tokenType,
    required this.appId,
    required this.expiresIn,
    required this.nonce,
  });
  late final String scope;
  late final String accessToken;
  late final String tokenType;
  late final String appId;
  late final int expiresIn;
  late final String nonce;

  AuthModel.fromJson(Map<String, dynamic> json) {
    scope = json['scope'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    appId = json['app_id'];
    expiresIn = json['expires_in'];
    nonce = json['nonce'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['scope'] = scope;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['app_id'] = appId;
    data['expires_in'] = expiresIn;
    data['nonce'] = nonce;
    return data;
  }
}
