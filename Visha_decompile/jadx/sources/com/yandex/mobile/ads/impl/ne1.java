package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.WeakHashMap;

public final class ne1 {
    private final Object a = new Object();
    private final WeakHashMap<cb2, Object> b = new WeakHashMap<>();

    public final boolean a() {
        boolean z;
        synchronized (this.a) {
            z = !this.b.isEmpty();
        }
        return z;
    }

    public final void b() {
        ArrayList<cb2> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList(this.b.keySet());
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
        for (cb2 cb2Var : arrayList) {
            if (cb2Var != null) {
                cb2Var.a();
            }
        }
    }

    public final void a(cb2 cb2Var) {
        y45.j(cb2Var, "listener");
        synchronized (this.a) {
            this.b.put(cb2Var, null);
            zfb zfbVar = zfb.a;
        }
    }

    public final void b(cb2 cb2Var) {
        y45.j(cb2Var, "listener");
        synchronized (this.a) {
            this.b.remove(cb2Var);
        }
    }
}
