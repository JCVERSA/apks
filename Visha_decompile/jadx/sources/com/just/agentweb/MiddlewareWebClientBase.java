package com.just.agentweb;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import androidx.annotation.RequiresApi;

public class MiddlewareWebClientBase extends WebViewClientDelegate {
    private static final String TAG = "MiddlewareWebClientBase";
    private MiddlewareWebClientBase mMiddleWrareWebClientBase;

    public MiddlewareWebClientBase(MiddlewareWebClientBase middlewareWebClientBase) {
        super(middlewareWebClientBase);
        this.mMiddleWrareWebClientBase = middlewareWebClientBase;
    }

    public final MiddlewareWebClientBase enq(MiddlewareWebClientBase middlewareWebClientBase) {
        setDelegate(middlewareWebClientBase);
        this.mMiddleWrareWebClientBase = middlewareWebClientBase;
        return middlewareWebClientBase;
    }

    public final MiddlewareWebClientBase next() {
        return this.mMiddleWrareWebClientBase;
    }

    @Override
    @RequiresApi(api = 26)
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    @Override
    public final void setDelegate(android.webkit.WebViewClient webViewClient) {
        super.setDelegate(webViewClient);
    }

    public MiddlewareWebClientBase(android.webkit.WebViewClient webViewClient) {
        super(webViewClient);
    }

    public MiddlewareWebClientBase() {
        super(null);
    }
}
