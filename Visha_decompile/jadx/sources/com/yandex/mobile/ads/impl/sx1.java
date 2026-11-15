package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public interface sx1 {
    public static final a a = a.a;

    public static final class a {
        private static volatile tx1 b;
        static final a a = new a();
        private static final Object c = new Object();

        private a() {
        }

        public static sx1 a(Context context) {
            y45.j(context, "context");
            if (b == null) {
                synchronized (c) {
                    try {
                        if (b == null) {
                            int i = rs0.b;
                            y45.j(context, "context");
                            b = new tx1(rs0.a(context, "YadPreferenceFile"));
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            tx1 tx1Var = b;
            if (tx1Var != null) {
                return tx1Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    String a();

    void a(String str);
}
