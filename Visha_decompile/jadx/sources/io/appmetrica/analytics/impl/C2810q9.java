package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.HashMap;
import java.util.Map;

public final class C2810q9 {
    public final Le a;
    public final Un b;
    public final C2945vk c;
    public final S6 d;
    public final L8 e;
    public final C2746nk f;
    public final C2477d0 g;
    public final X8 h;
    public final C2756o5 i;
    public final TimeProvider j;
    public final int k;
    public long l;
    public int m;

    public C2810q9(Le le, Un un, C2945vk c2945vk, S6 s6, C2477d0 c2477d0, L8 l8, C2746nk c2746nk, int i, C2756o5 c2756o5, X8 x8, SystemTimeProvider systemTimeProvider) {
        this.a = le;
        this.b = un;
        this.c = c2945vk;
        this.d = s6;
        this.g = c2477d0;
        this.e = l8;
        this.f = c2746nk;
        this.k = i;
        this.h = x8;
        this.j = systemTimeProvider;
        this.i = c2756o5;
        this.l = le.h();
        this.m = le.g();
    }

    public final void a(C2408a6 c2408a6, C2995xk c2995xk) {
        Map map = c2408a6.p;
        C2746nk c2746nk = this.f;
        c2746nk.getClass();
        map.putAll(new HashMap(c2746nk.b));
        c2408a6.c(this.a.i());
        c2408a6.o = Integer.valueOf(this.b.b());
        C2452c0 c2452c0A = this.g.a();
        L8 l8 = this.e;
        l8.getClass();
        K8 k8 = (K8) l8.b.a(EnumC2588hb.a(c2408a6.d));
        S6 s6 = this.d;
        E8 e8A = k8.a(c2408a6);
        int i = c2408a6.d;
        X8 x8 = this.h;
        C2783p7 c2783p7 = new C2783p7(s6.g, c2995xk, i, x8, e8A, (C2469ch) s6.h.k.a(), c2452c0A);
        Long lValueOf = Long.valueOf(c2995xk.a);
        EnumC3045zk enumC3045zk = c2995xk.d;
        Long lValueOf2 = Long.valueOf(c2995xk.b);
        EnumC2588hb enumC2588hbA = EnumC2588hb.a(c2783p7.h.d);
        long jOptLong = 0;
        if (!C9.g.contains(EnumC2588hb.a(i))) {
            Un un = x8.b;
            synchronized (un) {
                jOptLong = un.a.a().optLong("global_number", 0L);
            }
            x8.b.b(1 + jOptLong);
        }
        s6.a(s6.l.fromModel(new C2708m7(lValueOf, enumC3045zk, lValueOf2, enumC2588hbA, Long.valueOf(jOptLong), Long.valueOf(c2995xk.c), c2783p7.a())));
        this.i.a.f();
    }
}
