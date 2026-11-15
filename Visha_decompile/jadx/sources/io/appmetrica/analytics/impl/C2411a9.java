package io.appmetrica.analytics.impl;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class C2411a9 {
    public static final Map h;
    public static final C2411a9 i;
    public final InterfaceC2963wd a;
    public final Qn b;
    public final D8 c;
    public final InterfaceC3034z9 d;
    public final InterfaceC2414ac e;
    public final Md f;
    public final U9 g;

    static {
        HashMap map = new HashMap();
        map.put(EnumC2661ka.FIRST_OCCURRENCE, 1);
        map.put(EnumC2661ka.NON_FIRST_OCCURENCE, 0);
        map.put(EnumC2661ka.UNKNOWN, -1);
        h = Collections.unmodifiableMap(map);
        i = new C2411a9(new Hi(), new Am(), new Ud(), new Gi(), new C2811qa(), new C2835ra(), new C2786pa());
    }

    public C2411a9(Z8 z8) {
        this(z8.a, z8.b, z8.c, z8.d, z8.e, z8.f, z8.g);
    }

    public final C2660k9 a(R8 r8, C2469ch c2469ch) {
        C2660k9 c2660k9 = new C2660k9();
        C2635j9 c2635j9A = this.f.a(r8.l, r8.m);
        C2536f9 c2536f9A = this.e.a(r8.g);
        if (c2635j9A != null) {
            c2660k9.g = c2635j9A;
        }
        if (c2536f9A != null) {
            c2660k9.f = c2536f9A;
        }
        String strA = this.a.a(r8.a);
        if (strA != null) {
            c2660k9.d = strA;
        }
        c2660k9.e = this.b.a(r8, c2469ch);
        String str = r8.j;
        if (str != null) {
            c2660k9.h = str;
        }
        Integer numA = this.d.a(r8);
        if (numA != null) {
            c2660k9.c = numA.intValue();
        }
        Long l = r8.c;
        if (l != null) {
            c2660k9.a = l.longValue();
        }
        Long l2 = r8.d;
        if (l2 != null) {
            c2660k9.n = l2.longValue();
        }
        Long l3 = r8.e;
        if (l3 != null) {
            c2660k9.o = l3.longValue();
        }
        Long l4 = r8.f;
        if (l4 != null) {
            c2660k9.b = l4.longValue();
        }
        Integer num = r8.k;
        if (num != null) {
            c2660k9.i = num.intValue();
        }
        c2660k9.j = this.c.a(r8.o);
        C2808q7 c2808q7 = r8.g;
        c2660k9.k = c2808q7 != null ? new C2831r6().a(c2808q7.a) : -1;
        String str2 = r8.n;
        if (str2 != null) {
            c2660k9.l = str2.getBytes();
        }
        EnumC2661ka enumC2661ka = r8.p;
        Integer num2 = enumC2661ka != null ? (Integer) h.get(enumC2661ka) : null;
        if (num2 != null) {
            c2660k9.m = num2.intValue();
        }
        EnumC2859s9 enumC2859s9 = r8.q;
        if (enumC2859s9 != null) {
            c2660k9.p = enumC2859s9.a;
        }
        Boolean bool = r8.r;
        if (bool != null) {
            c2660k9.q = bool.booleanValue();
        }
        Integer num3 = r8.s;
        if (num3 != null) {
            c2660k9.r = num3.intValue();
        }
        c2660k9.s = ((C2786pa) this.g).a(r8.t);
        return c2660k9;
    }

    public C2411a9(InterfaceC2963wd interfaceC2963wd, Qn qn, D8 d8, InterfaceC3034z9 interfaceC3034z9, InterfaceC2414ac interfaceC2414ac, Md md, U9 u9) {
        this.a = interfaceC2963wd;
        this.b = qn;
        this.c = d8;
        this.d = interfaceC3034z9;
        this.e = interfaceC2414ac;
        this.f = md;
        this.g = u9;
    }

    public static Z8 a() {
        return new Z8(i);
    }
}
