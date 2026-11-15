package com.doman.core.d;

import android.util.Base64;
import java.io.UnsupportedEncodingException;

public final class e {
    private static String a = "EncodeUtils";
    private static String b = "utf-8";

    public static String a(String str) {
        try {
            return new String(Base64.decode(str, 0), b);
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }
}
