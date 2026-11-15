package com.just.agentweb;

import android.webkit.WebView;

public class DefaultWebLifeCycleImpl implements WebLifeCycle {
    private static final String TAG = "DefaultWebLifeCycleImpl";
    private WebView mWebView;

    public DefaultWebLifeCycleImpl(WebView webView) {
        this.mWebView = webView;
    }

    @Override
    public void onDestroy() {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.destroy();
        }
    }

    @Override
    public void onPause() {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.onPause();
            this.mWebView.pauseTimers();
        }
    }

    @Override
    public void onResume() {
        WebView webView = this.mWebView;
        if (webView != null) {
            webView.onResume();
            this.mWebView.resumeTimers();
        }
    }
}
