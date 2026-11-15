package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class ze2 {
    public static final a c = new a(0);
    private static volatile ze2 d;
    private final Context a;
    private final iq1 b;

    public static final class a {
        private a() {
        }

        public final ze2 a(Context context) {
            y45.j(context, "context");
            ze2 ze2Var = ze2.d;
            if (ze2Var == null) {
                synchronized (this) {
                    ze2Var = ze2.d;
                    if (ze2Var == null) {
                        ze2Var = new ze2(context, 0);
                        ze2.d = ze2Var;
                    }
                }
            }
            return ze2Var;
        }

        public a(int i) {
            this();
        }
    }

    private ze2(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.a = applicationContext;
        y45.i(applicationContext, "appContext");
        this.b = hl2.a(applicationContext, 4);
    }

    public final void a(String str) {
        y45.j(str, "url");
        Context context = this.a;
        y45.i(context, "appContext");
        y45.j(context, "context");
        y45.j(str, "url");
        y45.j(context, "context");
        y45.j(str, "url");
        this.b.a(new kh1(context, str, new yi2()));
    }

    public ze2(Context context, int i) {
        this(context);
    }
}
