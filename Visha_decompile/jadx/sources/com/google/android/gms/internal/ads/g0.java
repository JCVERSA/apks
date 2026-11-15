package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class g0 {
    public final e0 a;
    public final String b;
    public final String c;
    public final Class[] e;
    public volatile Method d = null;
    public final CountDownLatch f = new CountDownLatch(1);

    public g0(e0 e0Var, String str, String str2, Class... clsArr) {
        this.a = e0Var;
        this.b = str;
        this.c = str2;
        this.e = clsArr;
        e0Var.j().submit(new zzaxm(this));
    }

    public static void b(g0 g0Var) {
        try {
            e0 e0Var = g0Var.a;
            Class<?> clsLoadClass = e0Var.h().loadClass(g0Var.c(e0Var.s(), g0Var.b));
            if (clsLoadClass != null) {
                g0Var.d = clsLoadClass.getMethod(g0Var.c(e0Var.s(), g0Var.c), g0Var.e);
            }
        } catch (zzavf | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException unused) {
        } finally {
            g0Var.f.countDown();
        }
    }

    public final Method a() {
        if (this.d != null) {
            return this.d;
        }
        try {
            if (this.f.await(2L, TimeUnit.SECONDS)) {
                return this.d;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }

    public final String c(byte[] bArr, String str) {
        return new String(this.a.e().b(bArr, str), "UTF-8");
    }
}
