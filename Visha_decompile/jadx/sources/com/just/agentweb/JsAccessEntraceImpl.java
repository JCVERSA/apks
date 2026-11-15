package com.just.agentweb;

import android.os.Handler;
import android.os.Looper;
import android.webkit.ValueCallback;
import android.webkit.WebView;

public class JsAccessEntraceImpl extends BaseJsAccessEntrace {
    private Handler mHandler;
    private WebView mWebView;

    private JsAccessEntraceImpl(WebView webView) {
        super(webView);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mWebView = webView;
    }

    public static JsAccessEntraceImpl getInstance(WebView webView) {
        return new JsAccessEntraceImpl(webView);
    }

    private void safeCallJs(final String str, final ValueCallback valueCallback) {
        this.mHandler.post(new Runnable() {
            @Override
            public void run() {
                JsAccessEntraceImpl.this.callJs(str, valueCallback);
            }
        });
    }

    @Override
    public void callJs(String str, ValueCallback<String> valueCallback) {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            safeCallJs(str, valueCallback);
        } else {
            super.callJs(str, valueCallback);
        }
    }
}
