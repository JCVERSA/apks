package defpackage;

import android.webkit.WebView;

public final class svh extends rvh {
    public svh(String str, WebView webView) {
        super(str);
        if (!webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        n(webView);
    }
}
