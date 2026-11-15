package com.facebook.ads.redexgen.core;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class TZ extends WebViewClient {
    public final CallableC1253Ta A00;

    public TZ(CallableC1253Ta callableC1253Ta) {
        this.A00 = callableC1253Ta;
    }

    @Override
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AbstractC1409Ze.A0D(AbstractC1248Sv.A2j);
        return true;
    }
}
