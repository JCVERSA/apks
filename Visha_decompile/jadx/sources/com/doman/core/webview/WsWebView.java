package com.doman.core.webview;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

public class WsWebView extends WebView {
    public WsWebView(Context context) {
        super(context);
    }

    @Override
    public void loadUrl(String str) {
        super.loadUrl(str);
    }

    public WsWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public WsWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
