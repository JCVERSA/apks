package com.mbridge.msdk.mbsignalcommon.listener;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.c;

public class b implements c {
    @Override
    public void a(WebView webView, String str, Bitmap bitmap) {
        o0.a("WindVaneWebView", "onPageStarted");
    }

    @Override
    public boolean b(WebView webView, String str) {
        o0.a("WindVaneWebView", "shouldOverrideUrlLoading");
        return true;
    }

    @Override
    public void c(WebView webView, int i10) {
        o0.a("WindVaneWebView", "onProgressChanged");
    }

    @Override
    public void a(WebView webView, int i10, String str, String str2) {
        o0.a("WindVaneWebView", "onReceivedError");
    }

    @Override
    public void b(WebView webView, int i10) {
        o0.a("WindVaneWebView", "loadingResourceStatus");
    }

    @Override
    public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        o0.a("WindVaneWebView", "onReceivedSslError");
    }

    @Override
    public void a(WebView webView, String str) {
        o0.a("WindVaneWebView", "onPageFinished");
    }

    @Override
    public void a(WebView webView, int i10) {
        o0.a("WindVaneWebView", "readyState");
    }

    @Override
    public void a(WebView webView) {
        o0.a("WindVaneWebView", "onRenderProcessGone");
    }
}
