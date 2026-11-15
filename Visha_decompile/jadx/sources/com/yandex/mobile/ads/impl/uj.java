package com.yandex.mobile.ads.impl;

import android.util.Base64;
import defpackage.y45;
import kotlin.Result;
import org.mozilla.javascript.ES6Iterator;

public final class uj {
    public static String a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        byte[] bytes = str.getBytes(defpackage.qv0.b);
        y45.i(bytes, "getBytes(...)");
        return a(bytes);
    }

    public static String a(byte[] bArr) {
        Object objM279constructorimpl;
        y45.j(bArr, "data");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(Base64.encodeToString(bArr, 2));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            sp0.c(new Object[0]);
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        return (String) objM279constructorimpl;
    }
}
