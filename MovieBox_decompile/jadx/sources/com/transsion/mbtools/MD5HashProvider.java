package com.transsion.mbtools;

import android.os.Build;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;

public final class MD5HashProvider {

    public static final MD5HashProvider f44857a = new MD5HashProvider();

    private static final Lazy f44858b = LazyKt.b(new Function0<String>() {
        @Override
        public final String invoke() {
            String ID = Build.ID;
            Intrinsics.g(ID, "ID");
            String strSubstring = ID.substring(0, 4);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.g(MANUFACTURER, "MANUFACTURER");
            return strSubstring + StringsKt.v1(MANUFACTURER);
        }
    });

    private MD5HashProvider() {
    }

    private final String b() {
        return (String) f44858b.getValue();
    }

    public final String a(String content) throws NoSuchAlgorithmException {
        Intrinsics.h(content, "content");
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        byte[] bytes = (b() + content).getBytes(Charsets.UTF_8);
        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] hashBytes = messageDigest.digest(bytes);
        StringBuilder sb2 = new StringBuilder();
        Intrinsics.g(hashBytes, "hashBytes");
        for (byte b10 : hashBytes) {
            sb2.append(CharsKt.f((b10 & 255) >> 4, 16));
            sb2.append(CharsKt.f(b10 & 15, 16));
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
