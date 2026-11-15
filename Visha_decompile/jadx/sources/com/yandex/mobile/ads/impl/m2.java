package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public final class m2 {
    private static final Object b = new Object();
    private static volatile m2 c;
    public static final int d = 0;
    private final l2 a;

    public static final class a {
        public static m2 a(Context context) {
            y45.j(context, "context");
            if (m2.c == null) {
                synchronized (m2.b) {
                    try {
                        if (m2.c == null) {
                            int i = rs0.b;
                            y45.j(context, "context");
                            m2.c = new m2(rs0.a(context, "YadPreferenceFile"));
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            m2 m2Var = m2.c;
            if (m2Var != null) {
                return m2Var;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    private m2(l2 l2Var) {
        this.a = l2Var;
    }

    public final l2 c() {
        return this.a;
    }

    public m2(ps0 ps0Var) {
        this(new l2(ps0Var));
    }
}
