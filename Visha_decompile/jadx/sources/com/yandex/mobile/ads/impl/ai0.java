package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import defpackage.y45;

public final class ai0 {
    public static final boolean a(String str) {
        y45.j(str, "method");
        return (y45.e(str, ShareTarget.METHOD_GET) || y45.e(str, "HEAD")) ? false : true;
    }

    public static final boolean b(String str) {
        y45.j(str, "method");
        return y45.e(str, "POST") || y45.e(str, "PUT") || y45.e(str, "PATCH") || y45.e(str, "PROPPATCH") || y45.e(str, "REPORT");
    }
}
