package com.facebook.biddingkit.http.client;

import java.util.Map;

public class HttpGet extends HttpRequest {
    public HttpGet(String str, Map<String, String> map) {
        super(str, map);
        this.httpMethod = HttpMethod.GET;
    }
}
