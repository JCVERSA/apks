package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

public final class f2 {
    private final Object a = new Object();
    private final WeakHashMap<e2, Object> b = new WeakHashMap<>();

    public final void a() {
        HashSet hashSet;
        synchronized (this.a) {
            hashSet = new HashSet(this.b.keySet());
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((e2) it.next()).a();
        }
    }

    public final void b(e2 e2Var) {
        y45.j(e2Var, "listener");
        synchronized (this.a) {
            this.b.remove(e2Var);
        }
    }

    public final void a(e2 e2Var) {
        y45.j(e2Var, "listener");
        synchronized (this.a) {
            this.b.put(e2Var, null);
        }
    }
}
