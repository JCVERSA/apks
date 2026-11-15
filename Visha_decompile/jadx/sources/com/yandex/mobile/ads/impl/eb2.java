package com.yandex.mobile.ads.impl;

import android.text.TextUtils;
import java.net.URL;

public final class eb2 {
    private final String a;
    private final URL b;
    private final String c;

    private eb2(String str, URL url, String str2) {
        this.a = str;
        this.b = url;
        this.c = str2;
    }

    public static eb2 a(String str, URL url, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("VendorKey is null or empty");
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("VerificationParameters is null or empty");
        }
        return new eb2(str, url, str2);
    }

    public final String b() {
        return this.a;
    }

    public final String c() {
        return this.c;
    }

    public static eb2 a(URL url) {
        return new eb2(null, url, null);
    }

    public final URL a() {
        return this.b;
    }
}
