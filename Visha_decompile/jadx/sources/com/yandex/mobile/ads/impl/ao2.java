package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.webkit.WebView;

public final class ao2 extends g9 {
    @SuppressLint({"SetJavaScriptEnabled"})
    public ao2(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        a(webView);
    }
}
