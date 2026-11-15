package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import defpackage.y45;

public class ah0 extends WebViewClient {
    private final bh0 a;
    private final xj2 b;

    public ah0(bh0 bh0Var) {
        this(bh0Var, dt1.b());
    }

    @Override
    public final void onPageFinished(WebView webView, String str) {
        y45.j(webView, "view");
        y45.j(str, "url");
        super.onPageFinished(webView, str);
        this.a.a();
    }

    @Override
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        y45.j(webView, "view");
        y45.j(str, "description");
        y45.j(str2, "failingUrl");
        this.a.a(i);
    }

    @Override
    @SuppressLint({"WebViewClientOnReceivedSslError"})
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        y45.j(webView, "view");
        y45.j(sslErrorHandler, "handler");
        y45.j(sslError, "error");
        xj2 xj2Var = this.b;
        Context context = webView.getContext();
        y45.i(context, "getContext(...)");
        if (xj2Var.a(context, sslError)) {
            sslErrorHandler.proceed();
        } else {
            this.a.a(-11);
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }
    }

    @Override
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }

    @Override
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        y45.j(webView, "view");
        y45.j(str, "url");
        bh0 bh0Var = this.a;
        Context context = webView.getContext();
        y45.i(context, "getContext(...)");
        bh0Var.a(context, str);
        return true;
    }

    public ah0(bh0 bh0Var, xj2 xj2Var) {
        y45.j(bh0Var, "webViewClientListener");
        y45.j(xj2Var, "webViewSslErrorHandler");
        this.a = bh0Var;
        this.b = xj2Var;
    }

    @Override
    @RequiresApi(api = 23)
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        y45.j(webResourceError, "error");
        this.a.a(webResourceError.getErrorCode());
    }
}
