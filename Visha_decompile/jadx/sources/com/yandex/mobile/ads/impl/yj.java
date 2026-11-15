package com.yandex.mobile.ads.impl;

import android.util.Base64;
import defpackage.y45;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.util.zip.GZIPInputStream;
import kotlin.Result;

public final class yj {
    public static final byte[] a(String str) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(Base64.decode(str, 0));
            try {
                GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
                try {
                    byte[] bArrC = defpackage.oo0.c(gZIPInputStream);
                    defpackage.ly0.a(gZIPInputStream, null);
                    defpackage.ly0.a(byteArrayInputStream, null);
                    objM279constructorimpl = Result.m279constructorimpl(bArrC);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        defpackage.ly0.a(gZIPInputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    defpackage.ly0.a(byteArrayInputStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th5));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = new byte[0];
        }
        return (byte[]) objM279constructorimpl;
    }

    public static final String b(String str) {
        Object objM279constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            byte[] bArrDecode = Base64.decode(str, 0);
            y45.g(bArrDecode);
            Charset charset = defpackage.qv0.b;
            objM279constructorimpl = Result.m279constructorimpl(new String(a(new String(bArrDecode, charset)), charset));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) != null) {
            objM279constructorimpl = "";
        }
        return (String) objM279constructorimpl;
    }
}
