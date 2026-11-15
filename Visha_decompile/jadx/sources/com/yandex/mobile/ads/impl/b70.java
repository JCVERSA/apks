package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class b70 {
    private final LinkedHashSet a = new LinkedHashSet();
    private com.google.android.exoplayer2.t b;

    public final void a(sl1 sl1Var) {
        y45.j(sl1Var, "listener");
        this.a.add(sl1Var);
    }

    public final boolean b() {
        return this.b != null;
    }

    public final com.google.android.exoplayer2.t a() {
        return this.b;
    }

    public final void a(com.google.android.exoplayer2.t tVar) {
        this.b = tVar;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((xi1) it.next()).a(tVar);
        }
    }
}
