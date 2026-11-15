package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public interface lr {
    public static final a a = a.a;

    public static final class a {
        static final a a = new a();
        private static final Object b = new Object();
        private static volatile lr c;

        private a() {
        }

        public static lr a(Context context) {
            y45.j(context, "context");
            if (c == null) {
                synchronized (b) {
                    try {
                        if (c == null) {
                            int i = rs0.b;
                            y45.j(context, "context");
                            c = new mr(rs0.a(context, "YadPreferenceFile"), new g60(), new u6());
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            lr lrVar = c;
            if (lrVar != null) {
                return lrVar;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    ju1 a();

    void a(ju1 ju1Var);
}
