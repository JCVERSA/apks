package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;

public final class ef {
    private final Object a = new Object();
    private final ArrayList b = new ArrayList();

    public final void a(df dfVar) {
        ArrayList arrayList;
        y45.j(dfVar, "appMetricaIdentifiers");
        synchronized (this.a) {
            arrayList = new ArrayList(this.b);
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((aj0) it.next()).a(dfVar);
        }
    }

    public final void a() {
        synchronized (this.a) {
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
    }

    public final void a(aj0 aj0Var) {
        y45.j(aj0Var, "observer");
        synchronized (this.a) {
            this.b.add(aj0Var);
        }
    }
}
