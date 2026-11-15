package com.facebook.ads.redexgen.core;

import android.webkit.WebView;
import java.util.concurrent.Callable;

public class CallableC1253Ta implements Callable<String> {
    public final SQ A00;

    public CallableC1253Ta(SQ sq) {
        this.A00 = sq;
    }

    @Override
    public final String call() {
        String browserUserAgent = (String) AbstractC1254Tb.A04.get();
        if (browserUserAgent != null) {
            return browserUserAgent;
        }
        WebView webView = new WebView(this.A00.getApplicationContext());
        webView.setWebViewClient(new TZ(this));
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        if (userAgentString != null) {
            AbstractC1254Tb.A04.set(userAgentString);
        }
        return userAgentString;
    }
}
