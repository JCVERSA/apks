package com.cloud.h5update.utils;

import java.io.File;
import java.io.InputStream;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;

public final class i {

    public static final i f20687a = new i();

    private i() {
    }

    private final String a(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        Intrinsics.g(charArray, "this as java.lang.String).toCharArray()");
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            sb2.append(charArray[(b10 >> 4) & 15]);
            sb2.append(charArray[b10 & 15]);
        }
        String string = sb2.toString();
        Intrinsics.g(string, "r.toString()");
        return string;
    }

    public final String b(File file) {
        h.a aVar = h.f20680a;
        String strA = "";
        if (!aVar.r(file)) {
            return "";
        }
        InputStream inputStreamN = null;
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                inputStreamN = aVar.n(file);
                byte[] bArr = new byte[8192];
                while (true) {
                    Intrinsics.e(inputStreamN);
                    int i10 = inputStreamN.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i10);
                }
                byte[] bArrDigest = messageDigest.digest();
                Intrinsics.g(bArrDigest, "digest.digest()");
                strA = a(bArrDigest);
                h.f20680a.e(inputStreamN);
            } catch (Exception e10) {
                rf.b.f71178a.e(e10);
                h.f20680a.e(inputStreamN);
            }
            return strA;
        } catch (Throwable th2) {
            h.f20680a.e(inputStreamN);
            throw th2;
        }
    }
}
