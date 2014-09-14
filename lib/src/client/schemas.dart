part of pubsub_v1beta1_api;

class AcknowledgeRequest {

  /** The Ack ID for the message being acknowledged. This was returned by the Pub/Sub system in the Pull response. */
  core.List<core.String> ackId;

  /** The subscription whose message is being acknowledged. */
  core.String subscription;

  /** Create new AcknowledgeRequest from JSON data */
  AcknowledgeRequest.fromJson(core.Map json) {
    if (json.containsKey("ackId")) {
      ackId = json["ackId"].toList();
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"];
    }
  }

  /** Create JSON Object for AcknowledgeRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (ackId != null) {
      output["ackId"] = ackId.toList();
    }
    if (subscription != null) {
      output["subscription"] = subscription;
    }

    return output;
  }

  /** Return String representation of AcknowledgeRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** A key-value pair applied to a given object. */
class Label {

  /** The key of a label is a syntactically valid URL (as per RFC 1738) with the "scheme" and initial slashes omitted and with the additional restrictions noted below. Each key should be globally unique. The "host" portion is called the "namespace" and is not necessarily resolvable to a network endpoint. Instead, the namespace indicates what system or entity defines the semantics of the label. Namespaces do not restrict the set of objects to which a label may be associated.

Keys are defined by the following grammar:

key = hostname "/" kpath kpath = ksegment *[ "/" ksegment ] ksegment = alphadigit | *[ alphadigit | "-" | "_" | "." ]

where "hostname" and "alphadigit" are defined as in RFC 1738.

Example key: spanner.google.com/universe */
  core.String key;

  /** An integer value. */
  core.int numValue;

  /** A string value. */
  core.String strValue;

  /** Create new Label from JSON data */
  Label.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = json["key"];
    }
    if (json.containsKey("numValue")) {
      numValue = (json["numValue"] is core.String) ? core.int.parse(json["numValue"]) : json["numValue"];
    }
    if (json.containsKey("strValue")) {
      strValue = json["strValue"];
    }
  }

  /** Create JSON Object for Label */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key;
    }
    if (numValue != null) {
      output["numValue"] = numValue;
    }
    if (strValue != null) {
      output["strValue"] = strValue;
    }

    return output;
  }

  /** Return String representation of Label */
  core.String toString() => JSON.encode(this.toJson());

}

class ListSubscriptionsResponse {

  /** If not empty, indicates that there are more subscriptions that match the request and this value should be passed to the next ListSubscriptionsRequest to continue. */
  core.String nextPageToken;

  /** The subscriptions that match the request. */
  core.List<Subscription> subscription;

  /** Create new ListSubscriptionsResponse from JSON data */
  ListSubscriptionsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"].map((subscriptionItem) => new Subscription.fromJson(subscriptionItem)).toList();
    }
  }

  /** Create JSON Object for ListSubscriptionsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (subscription != null) {
      output["subscription"] = subscription.map((subscriptionItem) => subscriptionItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ListSubscriptionsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ListTopicsResponse {

  /** If not empty, indicates that there are more topics that match the request, and this value should be passed to the next ListTopicsRequest to continue. */
  core.String nextPageToken;

  /** The resulting topics. */
  core.List<Topic> topic;

  /** Create new ListTopicsResponse from JSON data */
  ListTopicsResponse.fromJson(core.Map json) {
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("topic")) {
      topic = json["topic"].map((topicItem) => new Topic.fromJson(topicItem)).toList();
    }
  }

  /** Create JSON Object for ListTopicsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (topic != null) {
      output["topic"] = topic.map((topicItem) => topicItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ListTopicsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class ModifyAckDeadlineRequest {

  /** The new Ack deadline. Must be >= 1. */
  core.int ackDeadlineSeconds;

  /** The Ack ID. */
  core.String ackId;

  /** The name of the subscription from which messages are being pulled. */
  core.String subscription;

  /** Create new ModifyAckDeadlineRequest from JSON data */
  ModifyAckDeadlineRequest.fromJson(core.Map json) {
    if (json.containsKey("ackDeadlineSeconds")) {
      ackDeadlineSeconds = json["ackDeadlineSeconds"];
    }
    if (json.containsKey("ackId")) {
      ackId = json["ackId"];
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"];
    }
  }

  /** Create JSON Object for ModifyAckDeadlineRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (ackDeadlineSeconds != null) {
      output["ackDeadlineSeconds"] = ackDeadlineSeconds;
    }
    if (ackId != null) {
      output["ackId"] = ackId;
    }
    if (subscription != null) {
      output["subscription"] = subscription;
    }

    return output;
  }

  /** Return String representation of ModifyAckDeadlineRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class ModifyPushConfigRequest {

  /** An empty push_config indicates that the Pub/Sub system should pause pushing messages from the given subscription. */
  PushConfig pushConfig;

  /** The name of the subscription. */
  core.String subscription;

  /** Create new ModifyPushConfigRequest from JSON data */
  ModifyPushConfigRequest.fromJson(core.Map json) {
    if (json.containsKey("pushConfig")) {
      pushConfig = new PushConfig.fromJson(json["pushConfig"]);
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"];
    }
  }

  /** Create JSON Object for ModifyPushConfigRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (pushConfig != null) {
      output["pushConfig"] = pushConfig.toJson();
    }
    if (subscription != null) {
      output["subscription"] = subscription;
    }

    return output;
  }

  /** Return String representation of ModifyPushConfigRequest */
  core.String toString() => JSON.encode(this.toJson());

}

class PublishRequest {

  /** The message to publish. */
  PubsubMessage message;

  /** The name of the topic for which the message is being added. */
  core.String topic;

  /** Create new PublishRequest from JSON data */
  PublishRequest.fromJson(core.Map json) {
    if (json.containsKey("message")) {
      message = new PubsubMessage.fromJson(json["message"]);
    }
    if (json.containsKey("topic")) {
      topic = json["topic"];
    }
  }

  /** Create JSON Object for PublishRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (message != null) {
      output["message"] = message.toJson();
    }
    if (topic != null) {
      output["topic"] = topic;
    }

    return output;
  }

  /** Return String representation of PublishRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** An event indicating a received message or truncation event. */
class PubsubEvent {

  /** Indicates that this subscription has been deleted. (Note that pull subscribers will always receive NOT_FOUND in response in their pull request on the subscription, rather than seeing this boolean.) */
  core.bool deleted;

  /** A received message. */
  PubsubMessage message;

  /** The subscription that received the event. */
  core.String subscription;

  /** Indicates that this subscription has been truncated. */
  core.bool truncated;

  /** Create new PubsubEvent from JSON data */
  PubsubEvent.fromJson(core.Map json) {
    if (json.containsKey("deleted")) {
      deleted = json["deleted"];
    }
    if (json.containsKey("message")) {
      message = new PubsubMessage.fromJson(json["message"]);
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"];
    }
    if (json.containsKey("truncated")) {
      truncated = json["truncated"];
    }
  }

  /** Create JSON Object for PubsubEvent */
  core.Map toJson() {
    var output = new core.Map();

    if (deleted != null) {
      output["deleted"] = deleted;
    }
    if (message != null) {
      output["message"] = message.toJson();
    }
    if (subscription != null) {
      output["subscription"] = subscription;
    }
    if (truncated != null) {
      output["truncated"] = truncated;
    }

    return output;
  }

  /** Return String representation of PubsubEvent */
  core.String toString() => JSON.encode(this.toJson());

}

/** A message data and its labels. */
class PubsubMessage {

  /** The message payload. */
  core.String data;

  /** Optional list of labels for this message. Keys in this collection must be unique. */
  core.List<Label> label;

  /** Create new PubsubMessage from JSON data */
  PubsubMessage.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("label")) {
      label = json["label"].map((labelItem) => new Label.fromJson(labelItem)).toList();
    }
  }

  /** Create JSON Object for PubsubMessage */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data;
    }
    if (label != null) {
      output["label"] = label.map((labelItem) => labelItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PubsubMessage */
  core.String toString() => JSON.encode(this.toJson());

}

class PullRequest {

  /** If this is specified as true the system will respond immediately even if it is not able to return a message in the Pull response. Otherwise the system is allowed to wait until at least one message is available rather than returning FAILED_PRECONDITION. The client may cancel the request if it does not wish to wait any longer for the response. */
  core.bool returnImmediately;

  /** The subscription from which a message should be pulled. */
  core.String subscription;

  /** Create new PullRequest from JSON data */
  PullRequest.fromJson(core.Map json) {
    if (json.containsKey("returnImmediately")) {
      returnImmediately = json["returnImmediately"];
    }
    if (json.containsKey("subscription")) {
      subscription = json["subscription"];
    }
  }

  /** Create JSON Object for PullRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (returnImmediately != null) {
      output["returnImmediately"] = returnImmediately;
    }
    if (subscription != null) {
      output["subscription"] = subscription;
    }

    return output;
  }

  /** Return String representation of PullRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Either a PubsubMessage or a truncation event. One of these two must be populated. */
class PullResponse {

  /** This ID must be used to acknowledge the received event or message. */
  core.String ackId;

  /** A pubsub message or truncation event. */
  PubsubEvent pubsubEvent;

  /** Create new PullResponse from JSON data */
  PullResponse.fromJson(core.Map json) {
    if (json.containsKey("ackId")) {
      ackId = json["ackId"];
    }
    if (json.containsKey("pubsubEvent")) {
      pubsubEvent = new PubsubEvent.fromJson(json["pubsubEvent"]);
    }
  }

  /** Create JSON Object for PullResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (ackId != null) {
      output["ackId"] = ackId;
    }
    if (pubsubEvent != null) {
      output["pubsubEvent"] = pubsubEvent.toJson();
    }

    return output;
  }

  /** Return String representation of PullResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Configuration for a push delivery endpoint. */
class PushConfig {

  /** A URL locating the endpoint to which messages should be pushed. For example, a Webhook endpoint might use "https://example.com/push". */
  core.String pushEndpoint;

  /** Create new PushConfig from JSON data */
  PushConfig.fromJson(core.Map json) {
    if (json.containsKey("pushEndpoint")) {
      pushEndpoint = json["pushEndpoint"];
    }
  }

  /** Create JSON Object for PushConfig */
  core.Map toJson() {
    var output = new core.Map();

    if (pushEndpoint != null) {
      output["pushEndpoint"] = pushEndpoint;
    }

    return output;
  }

  /** Return String representation of PushConfig */
  core.String toString() => JSON.encode(this.toJson());

}

/** A subscription resource. */
class Subscription {

  /** For either push or pull delivery, the value is the maximum time after a subscriber receives a message before the subscriber should acknowledge or Nack the message. If the Ack deadline for a message passes without an Ack or a Nack, the Pub/Sub system will eventually redeliver the message. If a subscriber acknowledges after the deadline, the Pub/Sub system may accept the Ack, but it is possible that the message has been already delivered again. Multiple Acks to the message are allowed and will succeed.

For push delivery, this value is used to set the request timeout for the call to the push endpoint.

For pull delivery, this value is used as the initial value for the Ack deadline. It may be overridden for a specific pull request (message) with ModifyAckDeadline. While a message is outstanding (i.e. it has been delivered to a pull subscriber and the subscriber has not yet Acked or Nacked), the Pub/Sub system will not deliver that message to another pull subscriber (on a best-effort basis). */
  core.int ackDeadlineSeconds;

  /** Name of the subscription. */
  core.String name;

  /** If push delivery is used with this subscription, this field is used to configure it. */
  PushConfig pushConfig;

  /** The name of the topic from which this subscription is receiving messages. */
  core.String topic;

  /** Create new Subscription from JSON data */
  Subscription.fromJson(core.Map json) {
    if (json.containsKey("ackDeadlineSeconds")) {
      ackDeadlineSeconds = json["ackDeadlineSeconds"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("pushConfig")) {
      pushConfig = new PushConfig.fromJson(json["pushConfig"]);
    }
    if (json.containsKey("topic")) {
      topic = json["topic"];
    }
  }

  /** Create JSON Object for Subscription */
  core.Map toJson() {
    var output = new core.Map();

    if (ackDeadlineSeconds != null) {
      output["ackDeadlineSeconds"] = ackDeadlineSeconds;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (pushConfig != null) {
      output["pushConfig"] = pushConfig.toJson();
    }
    if (topic != null) {
      output["topic"] = topic;
    }

    return output;
  }

  /** Return String representation of Subscription */
  core.String toString() => JSON.encode(this.toJson());

}

/** A topic resource. */
class Topic {

  /** Name of the topic. */
  core.String name;

  /** Create new Topic from JSON data */
  Topic.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Topic */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Topic */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
