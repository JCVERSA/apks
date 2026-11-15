package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;

public final class C2419ah extends X5 {
    public final C2706m5 b;
    public final Zg c;
    public final W3 d;

    public C2419ah(@NonNull C2706m5 c2706m5, @NonNull Zg zg) {
        this(c2706m5, zg, new W3());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @NonNull
    public final C2469ch load(@NonNull W5 w5) {
        C2469ch c2469ch = (C2469ch) super.load(w5);
        c2469ch.m = ((Xg) w5.componentArguments).a;
        c2469ch.r = this.b.t.a();
        c2469ch.w = this.b.q.a();
        Xg xg = (Xg) w5.componentArguments;
        c2469ch.d = xg.b;
        c2469ch.e = xg.c;
        c2469ch.f = xg.d;
        c2469ch.i = xg.e;
        c2469ch.g = xg.f;
        c2469ch.h = xg.g;
        Boolean boolValueOf = Boolean.valueOf(xg.h);
        Zg zg = this.c;
        c2469ch.j = boolValueOf;
        c2469ch.k = zg;
        Xg xg2 = (Xg) w5.componentArguments;
        c2469ch.v = xg2.j;
        Hl hl = w5.a;
        C4 c4 = hl.n;
        c2469ch.n = c4.a;
        C2715me c2715me = hl.s;
        if (c2715me != null) {
            c2469ch.s = c2715me.a;
            c2469ch.t = c2715me.b;
        }
        c2469ch.o = c4.b;
        c2469ch.q = hl.e;
        c2469ch.p = hl.k;
        W3 w3 = this.d;
        Map<String, String> map = xg2.i;
        T3 t3E = C2910ua.E.e();
        w3.getClass();
        c2469ch.u = W3.a(map, hl, t3E);
        return c2469ch;
    }

    @Override
    @NonNull
    public final BaseRequestConfig createBlankConfig() {
        return new C2469ch(this.b);
    }

    public C2419ah(C2706m5 c2706m5, Zg zg, W3 w3) {
        super(c2706m5.getContext(), c2706m5.b().c());
        this.b = c2706m5;
        this.c = zg;
        this.d = w3;
    }

    @NonNull
    public final C2469ch a() {
        return new C2469ch(this.b);
    }
}
