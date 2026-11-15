package com.cloud.tmc.kernel.render;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;

public abstract class d {
    public static Boolean a(WebviewPageCallback webviewPageCallback, WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return Boolean.FALSE;
    }

    public static Boolean b(WebviewPageCallback webviewPageCallback, WebView webView, WebResourceRequest webResourceRequest) {
        return Boolean.FALSE;
    }
}
