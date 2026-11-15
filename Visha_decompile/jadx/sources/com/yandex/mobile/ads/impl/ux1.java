package com.yandex.mobile.ads.impl;

import java.util.Iterator;

final class ux1 extends k<Object> {
    final Iterator<Object> d;
    final vx1 e;

    public ux1(vx1 vx1Var) {
        this.e = vx1Var;
        this.d = vx1Var.b.iterator();
    }

    @Override
    public final Object a() {
        while (this.d.hasNext()) {
            Object next = this.d.next();
            if (this.e.c.contains(next)) {
                return next;
            }
        }
        b();
        return null;
    }
}
