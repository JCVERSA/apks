package com.bytedance.sdk.component.utils;

import android.annotation.TargetApi;
import android.webkit.WebView;

public class sef {
    private static final Sj Sj = new sP();

    private static class Sj {
        private Sj() {
        }

        public void Sj(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    @TargetApi(19)
    private static class sP extends Sj {
        private sP() {
            super();
        }

        @Override
        public void Sj(WebView webView, String str) {
            if (webView == null) {
                return;
            }
            if (str != null && str.startsWith("javascript:")) {
                try {
                    webView.evaluateJavascript(str, null);
                    return;
                } catch (Throwable th2) {
                    boolean z10 = th2 instanceof IllegalStateException;
                }
            }
            try {
                webView.loadUrl(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static void Sj(WebView webView, String str) {
        Sj.Sj(webView, str);
    }
}
