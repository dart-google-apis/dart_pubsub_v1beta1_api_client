library pubsub_v1beta1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_pubsub_v1beta1_api/src/console_client.dart';

import "package:google_pubsub_v1beta1_api/pubsub_v1beta1_api_client.dart";

/** Provides reliable, many-to-many, asynchronous messaging between applications. */
@deprecated
class Pubsub extends Client with ConsoleClient {

  /** OAuth Scope2: View and manage your data across Google Cloud Platform services */
  static const String CLOUD_PLATFORM_SCOPE = "https://www.googleapis.com/auth/cloud-platform";

  /** OAuth Scope2: View and manage Pub/Sub topics and subscriptions */
  static const String PUBSUB_SCOPE = "https://www.googleapis.com/auth/pubsub";

  final oauth2.OAuth2Console auth;

  Pubsub([oauth2.OAuth2Console this.auth]);
}
