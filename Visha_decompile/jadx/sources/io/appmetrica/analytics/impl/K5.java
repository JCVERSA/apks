package io.appmetrica.analytics.impl;

import defpackage.y71;
import defpackage.ye9;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;

public final class K5 implements J8, W8 {
    public final S6 a;
    public final Set b;
    public final AtomicLong c;

    public K5(S6 s6) {
        this.a = s6;
        Set setJ = ye9.j(Integer.valueOf(EnumC2588hb.EVENT_CLIENT_EXTERNAL_ATTRIBUTION.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_APP_UPDATE.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_FIRST_ACTIVATION.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_INIT.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_SEND_AD_REVENUE_EVENT.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_SEND_ECOMMERCE_EVENT.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_SEND_REFERRER.a()), Integer.valueOf(EnumC2588hb.EVENT_TYPE_SEND_REVENUE_EVENT.a()));
        this.b = setJ;
        this.c = new AtomicLong(s6.a(setJ));
        s6.a(this);
    }

    @Override
    public final void a() {
        this.c.set(this.a.a(this.b));
    }

    @Override
    public final boolean b() {
        return this.c.get() > 0;
    }

    @Override
    public final void b(List<Integer> list) {
        int i = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (this.b.contains(Integer.valueOf(((Number) it.next()).intValue())) && (i = i + 1) < 0) {
                    y71.t();
                }
            }
        }
        this.c.addAndGet(-i);
    }

    @Override
    public final void a(List<Integer> list) {
        int i = 0;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                if (this.b.contains(Integer.valueOf(((Number) it.next()).intValue())) && (i = i + 1) < 0) {
                    y71.t();
                }
            }
        }
        this.c.addAndGet(i);
    }
}
