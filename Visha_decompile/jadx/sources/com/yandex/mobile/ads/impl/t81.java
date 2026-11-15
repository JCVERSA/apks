package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

public final class t81 implements w51 {
    private final CopyOnWriteArrayList a = new CopyOnWriteArrayList();
    private boolean b;

    public final void a(s81 s81Var) {
        y45.j(s81Var, "listener");
        this.a.add(s81Var);
        if (this.b) {
            s81Var.b();
        }
    }

    @Override
    public final void b() {
        this.b = true;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((w51) it.next()).b();
        }
    }

    public final void b(s81 s81Var) {
        y45.j(s81Var, "listener");
        this.a.remove(s81Var);
    }

    @Override
    public final void a() {
        this.b = false;
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((w51) it.next()).a();
        }
    }
}
