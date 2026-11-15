package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class ic1 implements ze1, s11 {
    private final CopyOnWriteArrayList<jc1> a = new CopyOnWriteArrayList<>();

    public final void a(jc1 jc1Var) {
        y45.j(jc1Var, "listener");
        this.a.add(jc1Var);
    }

    public final void b(jc1 jc1Var) {
        y45.j(jc1Var, "listener");
        this.a.remove(jc1Var);
    }

    @Override
    public final void c() {
    }

    @Override
    public final void a() {
        Iterator<jc1> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    @Override
    public final void a(boolean z) {
        Iterator<jc1> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }
}
