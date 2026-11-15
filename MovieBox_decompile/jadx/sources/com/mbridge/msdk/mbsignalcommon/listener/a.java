package com.mbridge.msdk.mbsignalcommon.listener;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.windvane.c;

public class a implements c {
    public void a(Object obj) {
        o0.a("RVWindVaneWebView", "getEndScreenInfo");
    }

    @Override
    public boolean b(WebView webView, String str) {
        o0.a("RVWindVaneWebView", "shouldOverrideUrlLoading");
        return true;
    }

    @Override
    public void c(WebView webView, int i10) {
        o0.a("RVWindVaneWebView", "onProgressChanged");
    }

    public void a(WebView webView, String str, String str2, int i10, int i11) {
        o0.a("RVWindVaneWebView", "loadAds");
    }

    @Override
    public void b(WebView webView, int i10) {
        o0.a("RVWindVaneWebView", "loadingResourceStatus");
    }

    public void a(Object obj, String str) {
        o0.a("RVWindVaneWebView", "operateComponent");
    }

    @Override
    public void a(WebView webView, String str, Bitmap bitmap) {
        o0.a("RVWindVaneWebView", "onPageStarted");
    }

    @Override
    public void a(WebView webView, int i10, String str, String str2) {
        o0.a("RVWindVaneWebView", "onReceivedError");
    }

    @Override
    public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        o0.a("RVWindVaneWebView", "onReceivedSslError");
    }

    @Override
    public void a(WebView webView, String str) {
        o0.a("RVWindVaneWebView", "onPageFinished");
    }

    @Override
    public void a(WebView webView, int i10) {
        o0.a("RVWindVaneWebView", "readyState");
    }

    @Override
    public void a(WebView webView) {
        o0.a("RVWindVaneWebView", "onRenderProcessGone");
    }
}
