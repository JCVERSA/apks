package io.appmetrica.analytics.impl;

import android.content.Context;

public final class C2879t4 {
    public static volatile C2879t4 r;
    public final C2688lc a;
    public final L7 b;
    public final C2630j4 c;
    public final M1 d;
    public final C2775p e;
    public final Ak f;
    public final P5 g;
    public final C2675l h;
    public final Km i;
    public C2913ud j;
    public final C2651k0 k;
    public volatile C2805q4 l;
    public final Xc m;
    public volatile Ke n;
    public Ri o;
    public final C2801q0 p;
    public final C2636ja q;

    public C2879t4(C2688lc c2688lc, C2775p c2775p, C2630j4 c2630j4) {
        this(c2688lc, c2775p, c2630j4, new C2675l(c2775p));
    }

    public static C2879t4 i() {
        if (r == null) {
            synchronized (C2879t4.class) {
                try {
                    if (r == null) {
                        r = new C2879t4(new C2688lc(), new C2775p(), new C2630j4());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return r;
    }

    public final C2775p a() {
        return this.e;
    }

    public final C2651k0 b() {
        return this.k;
    }

    public final C2801q0 c() {
        return this.p;
    }

    public final M1 d() {
        return this.d;
    }

    public final C2630j4 e() {
        return this.c;
    }

    public final P5 f() {
        return this.g;
    }

    public final L7 g() {
        return this.b;
    }

    public final C2636ja h() {
        return this.q;
    }

    public final C2688lc j() {
        return this.a;
    }

    public final C2805q4 k() {
        C2805q4 c2805q4 = this.l;
        if (c2805q4 == null) {
            synchronized (this) {
                try {
                    c2805q4 = this.l;
                    if (c2805q4 == null) {
                        c2805q4 = new C2805q4();
                        this.l = c2805q4;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2805q4;
    }

    public final C2688lc l() {
        return this.a;
    }

    public final Ak m() {
        return this.f;
    }

    public C2879t4(C2688lc c2688lc, C2775p c2775p, C2630j4 c2630j4, C2675l c2675l) {
        this(c2688lc, new L7(), c2630j4, c2675l, new M1(), c2775p, new Ak(c2775p, c2675l), new P5(c2775p), new Km(), new C2651k0());
    }

    public final synchronized C2913ud a(Context context) {
        try {
            if (this.j == null) {
                this.j = new C2913ud(context, new Jn());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.j;
    }

    public final Ke b(Context context) {
        Ke ke = this.n;
        if (ke == null) {
            synchronized (this) {
                try {
                    ke = this.n;
                    if (ke == null) {
                        ke = new Ke(C2559g7.a(context).a());
                        this.n = ke;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return ke;
    }

    public C2879t4(C2688lc c2688lc, L7 l7, C2630j4 c2630j4, C2675l c2675l, M1 m1, C2775p c2775p, Ak ak, P5 p5, Km km, C2651k0 c2651k0) {
        this.m = new Xc();
        this.p = new C2801q0();
        this.q = new C2636ja();
        new K7();
        this.a = c2688lc;
        this.b = l7;
        this.c = c2630j4;
        this.h = c2675l;
        this.d = m1;
        this.e = c2775p;
        this.f = ak;
        this.g = p5;
        this.i = km;
        this.k = c2651k0;
    }
}
