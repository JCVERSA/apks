package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public abstract class HttpRequest {
    public static final String JSON_ENCODED = "application/json";
    private static final String TAG = "HttpRequest";
    public static final String URLENCODED = "application/x-www-form-urlencoded;charset=UTF-8";
    protected byte[] content;
    protected String contentType;
    protected HttpMethod httpMethod;
    protected String path;

    public HttpRequest(String str, Map<String, String> map) {
        this.path = "";
        if (str != null) {
            this.path = str;
        }
        if (map != null) {
            this.path += "?" + urlEncode(map);
        }
    }

    private String urlEncode(Map<String, String> map) {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(str);
            String str2 = map.get(str);
            if (str2 != null) {
                sb.append("=");
                try {
                    sb.append(URLEncoder.encode(str2, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    Log.e(TAG, "Failed url encode: ", e);
                }
            }
        }
        return sb.toString();
    }

    public byte[] getContent() {
        return this.content;
    }

    public String getContentType() {
        return this.contentType;
    }

    public HttpMethod getHttpMethod() {
        return this.httpMethod;
    }

    public String getPath() {
        return this.path;
    }
}
