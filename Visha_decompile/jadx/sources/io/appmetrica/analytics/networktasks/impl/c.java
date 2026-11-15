package io.appmetrica.analytics.networktasks.impl;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import defpackage.y45;

public final class c {
    public final String a;

    public c(String str) {
        this.a = a(str);
    }

    public static String a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        Uri uri = Uri.parse(str);
        return y45.e(ProxyConfig.MATCH_HTTP, uri.getScheme()) ? uri.buildUpon().scheme(ProxyConfig.MATCH_HTTPS).build().toString() : str;
    }
}
