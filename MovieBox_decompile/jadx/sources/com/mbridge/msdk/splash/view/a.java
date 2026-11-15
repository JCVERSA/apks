package com.mbridge.msdk.splash.view;

import android.graphics.Bitmap;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbsignalcommon.base.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;

public class a extends b {

    private final String f36885c = "SplashWebViewClient";

    com.mbridge.msdk.splash.middle.a f36886d;

    class C0521a implements ValueCallback<String> {
        C0521a() {
        }

        @Override
        public void onReceiveValue(String str) {
        }
    }

    public void a(com.mbridge.msdk.splash.middle.a aVar) {
        if (aVar != null) {
            this.f36886d = aVar;
        }
    }

    @Override
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        try {
            webView.evaluateJavascript("javascript:" + com.mbridge.msdk.setting.util.a.a().b(), new C0521a());
        } catch (Throwable th2) {
            o0.b("SplashWebViewClient", "onPageStarted", th2);
        }
    }

    @Override
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            WindVaneWebView windVaneWebView = (WindVaneWebView) webView;
            if (System.currentTimeMillis() - windVaneWebView.lastTouchTime > com.mbridge.msdk.click.utils.a.f33614c && com.mbridge.msdk.click.utils.a.a(((com.mbridge.msdk.splash.signal.b) windVaneWebView.getObject()).b().get(0), windVaneWebView.getUrl(), com.mbridge.msdk.click.utils.a.f33613b)) {
                return false;
            }
            com.mbridge.msdk.splash.middle.a aVar = this.f36886d;
            if (aVar == null) {
                return true;
            }
            aVar.a(false, str);
            return true;
        } catch (Throwable th2) {
            o0.b("SplashWebViewClient", "shouldOverrideUrlLoading", th2);
            return false;
        }
    }
}
