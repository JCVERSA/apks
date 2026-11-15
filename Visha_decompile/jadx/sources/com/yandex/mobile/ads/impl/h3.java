package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import defpackage.af5;
import defpackage.y45;

public final class h3 extends vk {

    public final class a extends WebChromeClient {
        static final af5[] b = {ta.a(a.class, "context", "getContext()Landroid/content/Context;", 0)};
        private final go1 a;

        public a(Context context) {
            y45.j(context, "context");
            this.a = ho1.a(context);
        }

        @Override
        public final void onProgressChanged(WebView webView, int i) {
            y45.j(webView, "view");
            Object obj = (Context) this.a.getValue(this, b[0]);
            c cVar = obj instanceof c ? (c) obj : null;
            if (cVar != null) {
                cVar.a(webView, i);
            }
        }
    }

    public final class b extends WebViewClient {
        static final af5[] d = {ta.a(b.class, "context", "getContext()Landroid/content/Context;", 0)};
        private final go1 a;
        private final yj2 b;
        private final y82 c;

        public b(Context context) {
            y45.j(context, "context");
            this.a = ho1.a(context);
            this.b = dt1.b();
            this.c = new y82();
        }

        @Override
        public final void onPageFinished(WebView webView, String str) {
            y45.j(webView, "view");
            super.onPageFinished(webView, str);
            Object obj = (Context) this.a.getValue(this, d[0]);
            c cVar = obj instanceof c ? (c) obj : null;
            if (cVar != null) {
                cVar.b(webView);
            }
        }

        @Override
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            y45.j(webView, "view");
            super.onPageStarted(webView, str, bitmap);
            Object obj = (Context) this.a.getValue(this, d[0]);
            c cVar = obj instanceof c ? (c) obj : null;
            if (cVar != null) {
                cVar.a(webView);
            }
        }

        @Override
        @SuppressLint({"WebViewClientOnReceivedSslError"})
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            y45.j(webView, "view");
            y45.j(sslErrorHandler, "handler");
            y45.j(sslError, "error");
            yj2 yj2Var = this.b;
            Context context = webView.getContext();
            y45.i(context, "getContext(...)");
            if (yj2Var.a(context, sslError)) {
                sslErrorHandler.proceed();
            }
        }

        @Override
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            return true;
        }

        @Override
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            y45.j(webView, "view");
            if (str != null && str.length() > 0) {
                w82.a.getClass();
                if (w82.a.c(str) || !URLUtil.isNetworkUrl(str)) {
                    y82 y82Var = this.c;
                    Context context = webView.getContext();
                    y45.i(context, "getContext(...)");
                    return y82Var.a(context, str);
                }
            }
            return false;
        }
    }

    public interface c {
        void a(WebView webView);

        void a(WebView webView, int i);

        void b(WebView webView);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h3(Context context) {
        super(context);
        y45.j(context, "context");
        a(context);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public final void a(Context context) {
        y45.j(context, "context");
        y45.j(context, "context");
        setBackgroundColor(-1);
        setInitialScale(1);
        WebSettings settings = getSettings();
        y45.i(settings, "getSettings(...)");
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        setDisplayZoomControls(false);
        setScrollbarFadingEnabled(true);
        setDrawingCacheEnabled(true);
        setWebChromeClient(new a(context));
        setWebViewClient(new b(context));
    }
}
