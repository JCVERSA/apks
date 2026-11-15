package io.appmetrica.analytics.impl;

import androidx.annotation.WorkerThread;
import defpackage.i81;
import java.util.ArrayList;

public final class Nf implements Jf {
    public final Rf a;

    public Nf(Rf rf) {
        this.a = rf;
    }

    @Override
    @WorkerThread
    public final void a() {
        Rf rf = this.a;
        ArrayList arrayList = rf.g;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            C2468cg c2468cg = (C2468cg) obj;
            rf.c.getClass();
            String str = c2468cg != null ? c2468cg.a : null;
            if (!(str == null || str.length() == 0)) {
                arrayList2.add(obj);
            }
        }
        rf.a(rf.c.a(i81.l0(arrayList2)));
    }
}
