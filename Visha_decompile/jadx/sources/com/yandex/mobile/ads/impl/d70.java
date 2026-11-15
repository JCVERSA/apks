package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class d70 {
    private static final Object c = new Object();
    private static volatile d70 d;
    public static final int e = 0;
    private final c70 a;
    private my1 b;

    public static final class a {
        public static d70 a() {
            d70 d70Var;
            d70 d70Var2 = d70.d;
            if (d70Var2 != null) {
                return d70Var2;
            }
            synchronized (d70.c) {
                d70Var = d70.d;
                if (d70Var == null) {
                    d70Var = new d70(0);
                    d70.d = d70Var;
                }
            }
            return d70Var;
        }
    }

    private d70() {
        this.a = new c70();
    }

    public final sm a(Context context) {
        my1 my1VarA;
        y45.j(context, "context");
        synchronized (c) {
            my1VarA = this.b;
            if (my1VarA == null) {
                my1VarA = this.a.a(context);
                this.b = my1VarA;
            }
        }
        return my1VarA;
    }

    public d70(int i) {
        this();
    }
}
