package com.yandex.mobile.ads.impl;

import android.util.Base64;
import defpackage.y45;

public final class qv0 {
    public static byte[] a(tv0 tv0Var, String str, int i, String str2) {
        tv0Var.getClass();
        byte[] bArrDecode = Base64.decode(str, i);
        y45.i(bArrDecode, str2);
        return bArrDecode;
    }
}
