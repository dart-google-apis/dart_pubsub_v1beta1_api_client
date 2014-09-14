part of pubsub_v1beta1_api;

class SubscriptionsResource_ {

  final Client _client;

  SubscriptionsResource_(Client client) :
      _client = client;

  /**
   * Acknowledges a particular received message: the Pub/Sub system can remove the given message from the subscription. Acknowledging a message whose Ack deadline has expired may succeed, but the message could have been already redelivered. Acknowledging a message more than once will not result in an error. This is only used for messages received via pull.
   *
   * [request] - AcknowledgeRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> acknowledge(AcknowledgeRequest request, {core.Map optParams}) {
    var url = "subscriptions/acknowledge";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Creates a subscription on a given topic for a given subscriber. If the subscription already exists, returns ALREADY_EXISTS. If the corresponding topic doesn't exist, returns NOT_FOUND.
   *
   * [request] - Subscription to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Subscription> create(Subscription request, {core.Map optParams}) {
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Subscription.fromJson(data));
  }

  /**
   * Deletes an existing subscription. All pending messages in the subscription are immediately dropped. Calls to Pull after deletion will return NOT_FOUND.
   *
   * [subscription] - The subscription to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String subscription, {core.Map optParams}) {
    var url = "subscriptions/{+subscription}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (subscription == null) paramErrors.add("subscription is required");
    if (subscription != null) urlParams["subscription"] = subscription;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets the configuration details of a subscription.
   *
   * [subscription] - The name of the subscription to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Subscription> get(core.String subscription, {core.Map optParams}) {
    var url = "subscriptions/{+subscription}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (subscription == null) paramErrors.add("subscription is required");
    if (subscription != null) urlParams["subscription"] = subscription;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Subscription.fromJson(data));
  }

  /**
   * Lists matching subscriptions.
   *
   * [maxResults] - Maximum number of subscriptions to return.
   *
   * [pageToken] - The value obtained in the last ListSubscriptionsResponse for continuation.
   *
   * [query] - A valid label query expression.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListSubscriptionsResponse> list({core.int maxResults, core.String pageToken, core.String query, core.Map optParams}) {
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListSubscriptionsResponse.fromJson(data));
  }

  /**
   * Modifies the Ack deadline for a message received from a pull request.
   *
   * [request] - ModifyAckDeadlineRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> modifyAckDeadline(ModifyAckDeadlineRequest request, {core.Map optParams}) {
    var url = "subscriptions/modifyAckDeadline";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Modifies the PushConfig for a specified subscription. This method can be used to suspend the flow of messages to an end point by clearing the PushConfig field in the request. Messages will be accumulated for delivery even if no push configuration is defined or while the configuration is modified.
   *
   * [request] - ModifyPushConfigRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> modifyPushConfig(ModifyPushConfigRequest request, {core.Map optParams}) {
    var url = "subscriptions/modifyPushConfig";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Pulls a single message from the server. If return_immediately is true, and no messages are available in the subscription, this method returns FAILED_PRECONDITION. The system is free to return an UNAVAILABLE error if no messages are available in a reasonable amount of time (to reduce system load).
   *
   * [request] - PullRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PullResponse> pull(PullRequest request, {core.Map optParams}) {
    var url = "subscriptions/pull";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PullResponse.fromJson(data));
  }
}

class TopicsResource_ {

  final Client _client;

  TopicsResource_(Client client) :
      _client = client;

  /**
   * Creates the given topic with the given name.
   *
   * [request] - Topic to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Topic> create(Topic request, {core.Map optParams}) {
    var url = "topics";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Topic.fromJson(data));
  }

  /**
   * Deletes the topic with the given name. All subscriptions to this topic are also deleted. Returns NOT_FOUND if the topic does not exist. After a topic is deleted, a new topic may be created with the same name.
   *
   * [topic] - Name of the topic to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String topic, {core.Map optParams}) {
    var url = "topics/{+topic}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (topic == null) paramErrors.add("topic is required");
    if (topic != null) urlParams["topic"] = topic;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Gets the configuration of a topic. Since the topic only has the name attribute, this method is only useful to check the existence of a topic. If other attributes are added in the future, they will be returned here.
   *
   * [topic] - The name of the topic to get.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Topic> get(core.String topic, {core.Map optParams}) {
    var url = "topics/{+topic}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (topic == null) paramErrors.add("topic is required");
    if (topic != null) urlParams["topic"] = topic;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Topic.fromJson(data));
  }

  /**
   * Lists matching topics.
   *
   * [maxResults] - Maximum number of topics to return.
   *
   * [pageToken] - The value obtained in the last ListTopicsResponse for continuation.
   *
   * [query] - A valid label query expression.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListTopicsResponse> list({core.int maxResults, core.String pageToken, core.String query, core.Map optParams}) {
    var url = "topics";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (query != null) queryParams["query"] = query;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListTopicsResponse.fromJson(data));
  }

  /**
   * Adds a message to the topic. Returns NOT_FOUND if the topic does not exist.
   *
   * [request] - PublishRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> publish(PublishRequest request, {core.Map optParams}) {
    var url = "topics/publish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

