package com.yandex.mobile.ads.impl;

import java.util.Iterator;

final class kq0 extends k<Object> {
    final Iterator d;
    final wj1 e;

    public kq0(Iterator it, wj1 wj1Var) {
        this.d = it;
        this.e = wj1Var;
    }

    @Override
    public final Object a() {
        while (this.d.hasNext()) {
            Object next = this.d.next();
            if (this.e.apply(next)) {
                return next;
            }
        }
        b();
        return null;
    }
}
