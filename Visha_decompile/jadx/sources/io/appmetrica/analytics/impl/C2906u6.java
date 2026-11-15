package io.appmetrica.analytics.impl;

import defpackage.d81;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class C2906u6 implements Ma {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override
    public final void a(Throwable th, S s) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((Ma) it.next()).a(th, s);
        }
    }

    public final void a(Ma... maArr) {
        d81.D(this.a, maArr);
    }

    public final void a(List<? extends Ma> list) {
        this.a.addAll(list);
    }

    public final void a() {
        this.a.clear();
    }
}
