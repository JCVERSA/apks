package com.transsion.transfer.wifi.util;

import android.text.TextUtils;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

public final class b {

    public static final b f53891a = new b();

    private b() {
    }

    public final String a(String s10) {
        Intrinsics.h(s10, "s");
        if (TextUtils.isEmpty(s10)) {
            return "";
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        try {
            byte[] bytes = s10.getBytes(Charsets.UTF_8);
            Intrinsics.g(bytes, "getBytes(...)");
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bytes);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[bArrDigest.length * 2];
            int i10 = 0;
            for (byte b10 : bArrDigest) {
                int i11 = i10 + 1;
                cArr2[i10] = cArr[(b10 >>> 4) & 15];
                i10 += 2;
                cArr2[i11] = cArr[b10 & 15];
            }
            return new String(cArr2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }
}
