library pubsub_v1beta1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_pubsub_v1beta1_api/src/browser_client.dart';
import "package:google_pubsub_v1beta1_api/pubsub_v1beta1_api_client.dart";

/** Provides reliable, many-to-many, asynchronous messaging between applications. */
@deprecated
class Pubsub extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View and manage Pub/Sub topics and subscriptions */
  static const String PUBSUB_SCOPE = "https://www.googleapis.com/auth/pubsub";

  final oauth.OAuth2 auth;

  Pubsub([oauth.OAuth2 this.auth]);
}
