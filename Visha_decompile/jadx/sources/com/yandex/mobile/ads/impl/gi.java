package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public final class gi implements ei {
    private final di a;
    private final hi b;
    private final Object c;
    private final ArrayList d;

    public gi(kx1 kx1Var, di diVar, hi hiVar) {
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(diVar, "autograbCollectionEnabledValidator");
        y45.j(hiVar, "autograbProvider");
        this.a = diVar;
        this.b = hiVar;
        this.c = new Object();
        this.d = new ArrayList();
    }

    @Override
    public final void a() {
        HashSet hashSet;
        synchronized (this.c) {
            hashSet = new HashSet(this.d);
            this.d.clear();
            zfb zfbVar = zfb.a;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            this.b.b((ii) it.next());
        }
    }

    @Override
    public final void a(Context context, ii iiVar) {
        y45.j(context, "context");
        y45.j(iiVar, "autograbRequestListener");
        if (this.a.a(context)) {
            synchronized (this.c) {
                this.d.add(iiVar);
                this.b.a(iiVar);
                zfb zfbVar = zfb.a;
            }
            return;
        }
        iiVar.a(null);
    }
}
