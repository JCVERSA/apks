package com.yandex.mobile.ads.impl;

import defpackage.af5;
import defpackage.go8;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class go1 implements go8 {
    private WeakReference<Object> a;

    public go1(Object obj) {
        this.a = new WeakReference<>(obj);
    }

    @Override
    public final Object getValue(Object obj, af5 af5Var) {
        y45.j(af5Var, "property");
        return this.a.get();
    }

    @Override
    public final void setValue(Object obj, af5 af5Var, Object obj2) {
        y45.j(af5Var, "property");
        this.a = new WeakReference<>(obj2);
    }
}
