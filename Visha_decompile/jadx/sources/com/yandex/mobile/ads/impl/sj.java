package com.yandex.mobile.ads.impl;

import android.util.Base64;
import defpackage.y45;
import java.nio.charset.Charset;
import org.mozilla.javascript.ES6Iterator;

public final class sj {
    public static String a(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        byte[] bytes = str.getBytes(defpackage.qv0.b);
        y45.i(bytes, "getBytes(...)");
        return a(bytes);
    }

    public static String b(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        Charset charset = defpackage.qv0.b;
        byte[] bytes = str.getBytes(charset);
        y45.i(bytes, "getBytes(...)");
        try {
            byte[] bArrDecode = Base64.decode(bytes, 0);
            y45.i(bArrDecode, "decode(...)");
            return new String(bArrDecode, charset);
        } catch (Exception unused) {
            int i = sp0.b;
            y45.j(new Object[0], "args");
            return null;
        }
    }

    public static String a(byte[] bArr) {
        y45.j(bArr, "data");
        try {
            byte[] bArrDecode = Base64.decode(bArr, 0);
            y45.i(bArrDecode, "decode(...)");
            return new String(bArrDecode, defpackage.qv0.b);
        } catch (Exception unused) {
            String str = new String(bArr, defpackage.qv0.b);
            int i = sp0.b;
            y45.j(new Object[0], "args");
            return str;
        }
    }
}
