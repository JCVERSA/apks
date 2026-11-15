package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class db1 implements jb1 {
    private final CopyOnWriteArrayList<jb1> a = new CopyOnWriteArrayList<>();

    public final void a(jb1 jb1Var) {
        y45.j(jb1Var, "listener");
        this.a.add(jb1Var);
    }

    @Override
    public final void b() {
        Iterator<jb1> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override
    public final void a(long j, long j2) {
        Iterator<jb1> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(j, j2);
        }
    }

    public final void b(jb1 jb1Var) {
        y45.j(jb1Var, "listener");
        this.a.remove(jb1Var);
    }

    @Override
    public final void a() {
        Iterator<jb1> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }
}
