package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;

public class HttpResponse {
    private static final String TAG = "HttpResponse";
    private byte[] body;
    private Map<String, List<String>> headers;
    private int status;
    private String url;

    public HttpResponse(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.status = httpURLConnection.getResponseCode();
            this.url = httpURLConnection.getURL().toString();
            this.headers = httpURLConnection.getHeaderFields();
        } catch (Throwable th) {
            Log.e(TAG, "Failed to createHttpResponse", th);
        }
        this.body = bArr;
    }

    public byte[] getBody() {
        return this.body;
    }

    public String getBodyAsString() {
        byte[] bArr = this.body;
        if (bArr != null) {
            return new String(bArr);
        }
        return null;
    }

    public Map<String, List<String>> getHeaders() {
        return this.headers;
    }

    public int getStatus() {
        return this.status;
    }

    public String getUrl() {
        return this.url;
    }
}
