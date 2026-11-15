package com.bumptech.glide.integration.cronet;

import java.util.Map;
import org.chromium.net.UrlRequest;

public interface CronetRequestFactory {
    UrlRequest.Builder newRequest(String str, int i10, Map<String, String> map, UrlRequest.Callback callback);
}
