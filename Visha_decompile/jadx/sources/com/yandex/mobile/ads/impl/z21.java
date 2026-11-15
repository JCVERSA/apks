package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.ByteArrayInputStream;

public final class z21 extends ah0 {
    private String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z21(bh0 bh0Var) {
        super(bh0Var);
        y45.j(bh0Var, "webViewClientListener");
    }

    public final void a(String str) {
        this.c = str;
    }

    @Override
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url;
        y45.j(webView, "view");
        y45.j(webResourceRequest, Progress.REQUEST);
        String str = this.c;
        if (str == null || str.length() <= 0 || (url = webResourceRequest.getUrl()) == null || !y45.e("mraid.js", url.getLastPathSegment())) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        byte[] bytes = str.getBytes(defpackage.qv0.b);
        y45.i(bytes, "getBytes(...)");
        return new WebResourceResponse("text/javascript", "UTF-8", new ByteArrayInputStream(bytes));
    }

    @Override
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        y45.j(webView, "view");
        y45.j(str, "url");
        return super.shouldInterceptRequest(webView, str);
    }
}
