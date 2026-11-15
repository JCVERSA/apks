package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.y45;

public final class o22<T extends View> implements Runnable {
    private final T b;
    private final zd<T> c;

    public o22(T t, zd<T> zdVar) {
        y45.j(t, "view");
        y45.j(zdVar, "animator");
        this.b = t;
        this.c = zdVar;
    }

    @Override
    public final void run() {
        this.c.a(this.b);
    }
}
