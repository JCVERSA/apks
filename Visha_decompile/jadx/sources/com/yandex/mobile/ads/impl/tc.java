package com.yandex.mobile.ads.impl;

import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.WeakHashMap;

public final class tc {
    private final Object a = new Object();
    private final WeakHashMap<vc, Object> b = new WeakHashMap<>();

    private final void a(nc ncVar) {
        ArrayList<vc> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList(this.b.keySet());
            this.b.clear();
            zfb zfbVar = zfb.a;
        }
        for (vc vcVar : arrayList) {
            if (vcVar != null) {
                vcVar.a(ncVar);
            }
        }
    }

    public final void b(nc ncVar) {
        y45.j(ncVar, "advertisingInfoHolder");
        a(ncVar);
    }

    public final void b(vc vcVar) {
        y45.j(vcVar, "listener");
        synchronized (this.a) {
            this.b.remove(vcVar);
        }
    }

    public final void a() {
        a((nc) null);
    }

    public final void a(vc vcVar) {
        y45.j(vcVar, "listener");
        synchronized (this.a) {
            this.b.put(vcVar, null);
            zfb zfbVar = zfb.a;
        }
    }
}
