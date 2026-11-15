package com.iab.omid.library.hisavana.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import defpackage.t9d;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONObject;

public class h {
    public static h a = new h();

    public class a implements Runnable {
        final WebView a;
        final String b;

        public a(WebView webView, String str) {
            this.a = webView;
            this.b = str;
        }

        @Override
        public void run() {
            h.this.o(this.a, this.b);
        }
    }

    public static final h a() {
        return a;
    }

    public void b(WebView webView, String str) {
        g(webView, "finishSession", str);
    }

    public void c(WebView webView, String str, float f) {
        g(webView, "setDeviceVolume", Float.valueOf(f), str);
    }

    public void d(WebView webView, String str, String str2) {
        g(webView, "setDeviceLockState", str2);
    }

    public void e(WebView webView, String str, JSONObject jSONObject) {
        g(webView, "init", jSONObject, str);
    }

    public void f(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        g(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    public void g(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            t9d.a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        j(sb, objArr);
        sb.append(")}");
        h(webView, sb);
    }

    public void h(WebView webView, StringBuilder sb) {
        String string = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            o(webView, string);
        } else {
            handler.post(new a(webView, string));
        }
    }

    public void i(WebView webView, JSONObject jSONObject) {
        g(webView, "setLastActivity", jSONObject);
    }

    public void j(StringBuilder sb, Object[] objArr) {
        String string;
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                string = "null";
            } else {
                if (obj instanceof String) {
                    string = obj.toString();
                    if (!string.startsWith("{")) {
                        sb.append('\"');
                        sb.append(string);
                        sb.append('\"');
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(StringUtils.COMMA);
            }
            sb.append(string);
            sb.append(StringUtils.COMMA);
        }
        sb.setLength(sb.length() - 1);
    }

    public void k(WebView webView, String str) {
        g(webView, "publishImpressionEvent", str);
    }

    public void l(WebView webView, String str, String str2) {
        g(webView, "setNativeViewHierarchy", str2, str);
    }

    public void m(WebView webView, String str, JSONObject jSONObject) {
        g(webView, "publishLoadedEvent", jSONObject, str);
    }

    public void n(WebView webView, String str, String str2) {
        g(webView, "setState", str2, str);
    }

    public boolean o(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            webView.evaluateJavascript(str, null);
            return true;
        } catch (IllegalStateException unused) {
            webView.loadUrl("javascript: " + str);
            return true;
        }
    }

    public void p(WebView webView, String str, String str2) {
        if (str == null || TextUtils.isEmpty(str2)) {
            return;
        }
        o(webView, "(function() {this.omidVerificationProperties = this.omidVerificationProperties || {};Object.defineProperty(this.omidVerificationProperties, 'injectionId', {get: function() {var currentScript = document && document.currentScript;return currentScript && currentScript.getAttribute('data-injection-id');}, configurable: true});var script = document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");script.setAttribute(\"data-injection-id\",\"%INJECTION_ID%\");document.body.appendChild(script);})();".replace("%SCRIPT_SRC%", str).replace("%INJECTION_ID%", str2));
    }
}
