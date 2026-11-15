package defpackage;

import android.webkit.WebView;

public abstract class usf {
    public static Boolean a;

    public static void a(WebView webView, String str) {
        boolean zBooleanValue;
        synchronized (usf.class) {
            if (a == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    a = Boolean.TRUE;
                } catch (IllegalStateException unused) {
                    a = Boolean.FALSE;
                }
                zBooleanValue = a.booleanValue();
            } else {
                zBooleanValue = a.booleanValue();
            }
            throw th;
        }
        if (zBooleanValue) {
            webView.evaluateJavascript(str, null);
        } else {
            webView.loadUrl("javascript:".concat(str));
        }
    }
}
