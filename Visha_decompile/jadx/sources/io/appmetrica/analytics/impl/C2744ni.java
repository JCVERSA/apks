package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfiguration;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

public final class C2744ni {
    public final W4 a;
    public final C2799pn b;
    public final C2769oi c;
    public final C2602i0 d;
    public InterfaceC2846rl e;
    public final Lj f;

    public C2744ni(C2602i0 c2602i0, C2799pn c2799pn, W4 w4, Lj lj) {
        this(c2602i0, c2799pn, w4, lj, new C2769oi(c2602i0, lj));
    }

    public final void a(C2743nh c2743nh) {
        C2992xh c2992xh = c2743nh.e;
        InterfaceC2846rl interfaceC2846rl = this.e;
        if (interfaceC2846rl != null) {
            c2992xh.b.setUuid(((C2822ql) interfaceC2846rl).g());
        } else {
            c2992xh.getClass();
        }
        this.c.a(c2743nh);
    }

    public final void b(String str) {
        C2791pf c2791pf = this.a.a;
        synchronized (c2791pf) {
            c2791pf.a.put("PROCESS_CFG_INSTALL_REFERRER_SOURCE", str);
        }
    }

    public C2744ni(C2602i0 c2602i0, C2799pn c2799pn, W4 w4, Lj lj, C2769oi c2769oi) {
        this.d = c2602i0;
        this.a = w4;
        this.b = c2799pn;
        this.f = lj;
        this.c = c2769oi;
    }

    public final void a(C2822ql c2822ql) {
        this.e = c2822ql;
        this.a.b.setUuid(c2822ql.g());
    }

    public final void a(Boolean bool, Boolean bool2, Boolean bool3) {
        if (In.a(bool)) {
            this.a.b.setLocationTracking(bool.booleanValue());
        }
        if (In.a(bool2)) {
            this.a.b.setDataSendingEnabled(bool2.booleanValue());
        }
        if (In.a(bool3)) {
            this.a.b.setAdvIdentifiersTracking(bool3.booleanValue());
        }
        C2408a6 c2408a6A = C2408a6.a();
        W4 w4 = this.a;
        a(a(c2408a6A, w4), w4, 1, null);
    }

    public final void a(C2408a6 c2408a6, C2992xh c2992xh, int i, Map map) {
        String str;
        EnumC2588hb enumC2588hb = EnumC2588hb.EVENT_TYPE_UNDEFINED;
        this.d.b();
        if (!In.a(map)) {
            c2408a6.setValue(AbstractC2712mb.b(map));
            a(c2408a6, c2992xh);
        }
        C2791pf c2791pf = new C2791pf(c2992xh.a);
        CounterConfiguration counterConfiguration = new CounterConfiguration(c2992xh.b);
        synchronized (c2992xh) {
            str = c2992xh.f;
        }
        a(new C2743nh(c2408a6, false, i, null, new C2992xh(c2791pf, counterConfiguration, str)));
    }

    public static C2408a6 a(C2408a6 c2408a6, C2992xh c2992xh) {
        if (C9.a.contains(Integer.valueOf(c2408a6.d))) {
            c2408a6.c = c2992xh.d();
        }
        return c2408a6;
    }

    public final void a(List list) {
        C2791pf c2791pf = this.a.a;
        synchronized (c2791pf) {
            c2791pf.a.put("PROCESS_CFG_CUSTOM_HOSTS", In.a((Collection) list) ? null : new JSONArray((Collection) list).toString());
        }
    }

    public final void a(HashMap map) {
        C2791pf c2791pf = this.a.a;
        synchronized (c2791pf) {
            c2791pf.a.put("PROCESS_CFG_CLIDS", AbstractC2712mb.b(map));
        }
    }

    public final void a(String str) {
        C2791pf c2791pf = this.a.a;
        synchronized (c2791pf) {
            c2791pf.a.put("PROCESS_CFG_DISTRIBUTION_REFERRER", str);
        }
    }
}
