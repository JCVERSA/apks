package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import defpackage.muh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.json.JSONObject;

public final class d6 {
    public static final d6 a = new d6();

    public static final d6 a() {
        return a;
    }

    public static final boolean k(WebView webView, String str) {
        if (webView != null && !TextUtils.isEmpty(str)) {
            try {
                try {
                    webView.evaluateJavascript(str, null);
                    return true;
                } catch (IllegalStateException unused) {
                    webView.loadUrl("javascript: " + str);
                    return true;
                }
            } catch (Exception e) {
                e.getMessage();
                muh.a.booleanValue();
            }
        }
        return false;
    }

    public final void b(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            muh.a.booleanValue();
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        for (Object obj : objArr) {
            if (obj == null) {
                sb.append("null");
            } else if (obj instanceof String) {
                String string = obj.toString();
                if (string.startsWith("{")) {
                    sb.append(string);
                } else {
                    sb.append('\"');
                    sb.append(string);
                    sb.append('\"');
                }
            } else {
                sb.append(obj);
            }
            sb.append(StringUtils.COMMA);
        }
        sb.setLength(sb.length() - 1);
        sb.append(")}");
        String string2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        if (Looper.myLooper() == handler.getLooper()) {
            k(webView, string2);
        } else {
            handler.post(new zzfkx(this, webView, string2));
        }
    }

    public final void c(WebView webView, String str) {
        b(webView, "finishSession", str);
    }

    public final void d(WebView webView, String str, JSONObject jSONObject) {
        b(webView, "init", jSONObject, str);
    }

    public final void e(WebView webView, String str, float f) {
        b(webView, "setDeviceVolume", Float.valueOf(f), str);
    }

    public final void f(WebView webView, JSONObject jSONObject) {
        b(webView, "setLastActivity", jSONObject);
    }

    public final void g(WebView webView, String str, String str2) {
        b(webView, "setDeviceLockState", str2);
    }

    public final void h(WebView webView, String str, String str2) {
        b(webView, "setNativeViewHierarchy", str2, str);
    }

    public final void i(WebView webView, String str, String str2) {
        b(webView, "setState", str2, str);
    }

    public final void j(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        b(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }
}
