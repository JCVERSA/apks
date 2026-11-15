package com.yandex.mobile.ads.impl;

import android.webkit.WebView;

final class vo2 implements Runnable {
    final WebView b;
    final String c;

    public vo2(WebView webView, String str) {
        this.b = webView;
        this.c = str;
    }

    @Override
    public final void run() {
        this.b.loadUrl(this.c);
    }
}
