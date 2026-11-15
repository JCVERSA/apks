package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.g1a;
import defpackage.y45;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;

public final class yh0 implements ct {
    private final Context a;
    private final et1 b;

    public yh0(Context context, et1 et1Var) {
        y45.j(context, "context");
        y45.j(et1Var, "sslSocketFactoryCreator");
        this.a = context;
        this.b = et1Var;
    }

    private final HttpsURLConnection b(String str) throws IOException {
        StringBuilder sb = new StringBuilder(str.length() + 13);
        if (!g1a.R(str, "https://", false, 2, null)) {
            sb.append("https://");
        }
        sb.append(str);
        if (!g1a.D(str, "/ping", false, 2, null)) {
            sb.append("/ping");
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        URLConnection uRLConnectionOpenConnection = new URL(string).openConnection();
        y45.h(uRLConnectionOpenConnection, "null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnectionOpenConnection;
        httpsURLConnection.setSSLSocketFactory(this.b.a(this.a));
        httpsURLConnection.setRequestMethod("HEAD");
        httpsURLConnection.setConnectTimeout(2000);
        httpsURLConnection.setReadTimeout(2000);
        return httpsURLConnection;
    }

    @Override
    public final boolean a(String str) {
        HttpsURLConnection httpsURLConnectionB;
        y45.j(str, SerializableCookie.HOST);
        boolean z = false;
        try {
            httpsURLConnectionB = b(str);
            try {
                int responseCode = httpsURLConnectionB.getResponseCode();
                if (200 <= responseCode && responseCode < 500) {
                    z = true;
                }
                httpsURLConnectionB.disconnect();
                return z;
            } catch (Throwable unused) {
                try {
                    sp0.c(new Object[0]);
                    return false;
                } finally {
                    if (httpsURLConnectionB != null) {
                        httpsURLConnectionB.disconnect();
                    }
                }
            }
        } catch (Throwable unused2) {
            httpsURLConnectionB = null;
        }
    }
}
