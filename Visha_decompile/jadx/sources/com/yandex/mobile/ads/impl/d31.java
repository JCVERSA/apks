package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import defpackage.y45;
import java.util.WeakHashMap;

@MainThread
public final class d31 {
    public static final a c = new a(0);
    private static volatile d31 d;
    private final int a;
    private final WeakHashMap<wu0, w21> b;

    public static final class a {
        private a() {
        }

        @AnyThread
        public final d31 a(Context context) {
            y45.j(context, "context");
            d31 d31Var = d31.d;
            if (d31Var == null) {
                synchronized (this) {
                    try {
                        d31Var = d31.d;
                        if (d31Var == null) {
                            int i = pw1.l;
                            ju1 ju1VarA = pw1.a.a().a(context);
                            d31 d31Var2 = new d31(ju1VarA != null ? ju1VarA.D() : 0, 0);
                            d31.d = d31Var2;
                            d31Var = d31Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return d31Var;
        }

        public a(int i) {
            this();
        }
    }

    private d31(int i) {
        this.a = i;
        this.b = new WeakHashMap<>();
    }

    public final w21 b(wu0 wu0Var) {
        y45.j(wu0Var, "media");
        return this.b.remove(wu0Var);
    }

    public final boolean a(wu0 wu0Var) {
        y45.j(wu0Var, "media");
        return this.b.containsKey(wu0Var);
    }

    public final boolean b() {
        return this.b.size() == this.a;
    }

    public d31(int i, int i2) {
        this(i);
    }

    public final void a(w21 w21Var, wu0 wu0Var) {
        y45.j(wu0Var, "media");
        y45.j(w21Var, "mraidWebView");
        if (this.b.size() < this.a) {
            this.b.put(wu0Var, w21Var);
        }
    }
}
