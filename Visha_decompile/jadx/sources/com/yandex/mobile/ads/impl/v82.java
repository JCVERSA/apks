package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.y45;
import java.net.URI;
import kotlin.Result;

public final class v82 {
    public static final v82 a = new v82();

    private v82() {
    }

    public static String a(String str) {
        Object objM279constructorimpl;
        String str2;
        y45.j(str, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean zX = j1a.X(str, "://", false, 2, null);
            if (!zX) {
                str = b(str);
            }
            URI uri = new URI(str);
            if (zX) {
                str2 = uri.getScheme() + "://";
            } else {
                str2 = "";
            }
            objM279constructorimpl = Result.m279constructorimpl(str2 + uri.getHost());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = "bad_url";
        }
        return (String) objM279constructorimpl;
    }

    private static String b(String str) {
        return "stub://" + str;
    }
}
