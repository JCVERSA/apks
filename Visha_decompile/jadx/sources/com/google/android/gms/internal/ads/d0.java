package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import defpackage.boe;
import defpackage.iyh;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public final class d0 {
    public static final ConditionVariable c = new ConditionVariable();
    public static volatile i6 d = null;
    public static volatile Random e = null;
    public final e0 a;
    public volatile Boolean b;

    public d0(e0 e0Var) {
        this.a = e0Var;
        e0Var.j().execute(new zzaur(this));
    }

    public static final int d() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (e == null) {
                synchronized (d0.class) {
                    try {
                        if (e == null) {
                            e = new Random();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return e.nextInt();
        }
    }

    public final void c(int i, int i2, long j, String str, Exception exc) {
        try {
            c.block();
            if (!this.b.booleanValue() || d == null) {
                return;
            }
            boe boeVarB0 = g.b0();
            boeVarB0.v(this.a.a.getPackageName());
            boeVarB0.z(j);
            if (str != null) {
                boeVarB0.w(str);
            }
            if (exc != null) {
                StringWriter stringWriter = new StringWriter();
                exc.printStackTrace(new PrintWriter(stringWriter));
                boeVarB0.A(stringWriter.toString());
                boeVarB0.y(exc.getClass().getName());
            }
            iyh iyhVarA = d.a(((g) boeVarB0.q()).l());
            iyhVarA.a(i);
            if (i2 != -1) {
                iyhVarA.b(i2);
            }
            iyhVarA.c();
        } catch (Exception unused) {
        }
    }
}
