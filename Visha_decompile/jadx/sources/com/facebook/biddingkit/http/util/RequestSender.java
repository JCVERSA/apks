package com.facebook.biddingkit.http.util;

import com.facebook.biddingkit.http.client.AndroidHttpClient;
import com.facebook.biddingkit.http.client.HttpResponse;
import java.nio.charset.Charset;

public class RequestSender {
    public static HttpResponse get(String str, int i) {
        AndroidHttpClient androidHttpClientCreateHttpsClient = NetworkUtilities.createHttpsClient();
        androidHttpClientCreateHttpsClient.setConnectionTimeout(i);
        return androidHttpClientCreateHttpsClient.get(str, null);
    }

    public static HttpResponse post(String str, int i, String str2) {
        AndroidHttpClient androidHttpClientCreateHttpsClient = NetworkUtilities.createHttpsClient();
        androidHttpClientCreateHttpsClient.setConnectionTimeout(i);
        return androidHttpClientCreateHttpsClient.post(str, "application/json", str2.getBytes(Charset.forName("UTF-8")));
    }
}
