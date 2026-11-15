package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class dd2 implements cd2, ed2 {
    private final LinkedHashSet a = new LinkedHashSet();
    private final LinkedHashSet b = new LinkedHashSet();

    public final void a(cd2... cd2VarArr) {
        y45.j(cd2VarArr, "newProgressChangeListeners");
        defpackage.d81.D(this.a, cd2VarArr);
    }

    @Override
    public final void b() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ed2) it.next()).b();
        }
    }

    public final void a(ed2... ed2VarArr) {
        y45.j(ed2VarArr, "newProgressLifecycleListeners");
        defpackage.d81.D(this.b, ed2VarArr);
    }

    @Override
    public final void a(long j, long j2) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((cd2) it.next()).a(j, j2);
        }
    }

    @Override
    public final void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ed2) it.next()).a();
        }
    }
}
