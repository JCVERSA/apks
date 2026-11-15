package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Looper;
import com.yandex.mobile.ads.impl.c00;
import com.yandex.mobile.ads.impl.ez;
import com.yandex.mobile.ads.impl.jp;
import com.yandex.mobile.ads.impl.jz;
import com.yandex.mobile.ads.impl.n60;

public interface n60 extends hi1 {

    public interface a {
        default void a() {
        }
    }

    public static final class b {
        final Context a;
        y32 b;
        t32<bp1> c;
        t32<vw0.a> d;
        t32<f62> e;
        t32<cs0> f;
        t32<wi> g;
        fe0<jp, ed> h;
        Looper i;
        ph j;
        int k;
        boolean l;
        fx1 m;
        b00 n;
        long o;
        long p;
        boolean q;
        boolean r;

        public b(final Context context) {
            this(context, new t32() {
                @Override
                public final Object get() {
                    return n60.b.a(context);
                }
            }, new t32() {
                @Override
                public final Object get() {
                    return n60.b.b(context);
                }
            });
        }

        public static vw0.a b(Context context) {
            return new g00(new oz.a(context, new yz.a()), new xz());
        }

        public static f62 c(Context context) {
            return new s00(context, s00.c.a(context), new za.b(0));
        }

        public final n60 a() {
            if (this.r) {
                throw new IllegalStateException();
            }
            this.r = true;
            return new r60(this);
        }

        private b(final Context context, t32<bp1> t32Var, t32<vw0.a> t32Var2) {
            this(context, t32Var, t32Var2, new t32() {
                @Override
                public final Object get() {
                    return n60.b.c(context);
                }
            }, new t32() {
                @Override
                public final Object get() {
                    return new c00();
                }
            }, new t32() {
                @Override
                public final Object get() {
                    return jz.a(context);
                }
            }, new fe0() {
                @Override
                public final Object apply(Object obj) {
                    return new ez((jp) obj);
                }
            });
        }

        private b(Context context, t32<bp1> t32Var, t32<vw0.a> t32Var2, t32<f62> t32Var3, t32<cs0> t32Var4, t32<wi> t32Var5, fe0<jp, ed> fe0Var) {
            this.a = context;
            this.c = t32Var;
            this.d = t32Var2;
            this.e = t32Var3;
            this.f = t32Var4;
            this.g = t32Var5;
            this.h = fe0Var;
            this.i = f92.c();
            this.j = ph.h;
            this.k = 1;
            this.l = true;
            this.m = fx1.c;
            this.n = new b00.a().a();
            this.b = jp.a;
            this.o = 500L;
            this.p = 2000L;
            this.q = true;
        }

        public static bp1 a(Context context) {
            return new l00(context);
        }
    }

    void a(gm1 gm1Var);
}
