package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class kn2 implements bb2 {
    private final qe1 a;
    private final Object b;
    private final ArrayList c;

    public kn2(Context context) {
        y45.j(context, "context");
        this.a = qe1.g.a(context);
        this.b = new Object();
        this.c = new ArrayList();
    }

    @Override
    public final void a() {
        List listB1;
        synchronized (this.b) {
            listB1 = defpackage.i81.b1(this.c);
            this.c.clear();
            zfb zfbVar = zfb.a;
        }
        Iterator it = listB1.iterator();
        while (it.hasNext()) {
            this.a.a((cb2) it.next());
        }
    }

    @Override
    public final void a(cb2 cb2Var) {
        y45.j(cb2Var, "listener");
        synchronized (this.b) {
            this.c.add(cb2Var);
            this.a.b(cb2Var);
            zfb zfbVar = zfb.a;
        }
    }
}
