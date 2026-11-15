package com.facebook.biddingkit.http.client;

import java.util.Map;

public class HttpPost extends HttpRequest {
    public HttpPost(String str, Map<String, String> map, String str2, byte[] bArr) {
        super(str, map);
        this.httpMethod = HttpMethod.POST;
        this.contentType = str2;
        this.content = bArr;
    }
}
