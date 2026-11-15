package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;

public interface iq {
    public static final a a = a.a;

    public static final class a {
        private static volatile kq b;
        static final a a = new a();
        private static final Object c = new Object();

        private a() {
        }

        public static iq a(Context context) {
            y45.j(context, "context");
            if (b == null) {
                synchronized (c) {
                    try {
                        if (b == null) {
                            b = jq.a(context);
                        }
                        zfb zfbVar = zfb.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            kq kqVar = b;
            if (kqVar != null) {
                return kqVar;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    String a();

    String b();

    String c();
}
