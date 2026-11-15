package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class TAdWebView extends WebView {

    class a extends WebChromeClient {
        a() {
        }

        @Override
        public void onProgressChanged(WebView webView, int i10) {
            super.onProgressChanged(webView, i10);
        }
    }

    public TAdWebView(Context context) {
        this(context, null);
    }

    private void a() {
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setSupportZoom(true);
        settings.setUseWideViewPort(false);
        settings.setLoadWithOverviewMode(true);
        setWebChromeClient(new a());
    }

    public TAdWebView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TAdWebView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a();
    }
}
