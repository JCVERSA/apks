package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class rc1 {
    private final o3 a;
    private final o8<?> b;
    private final List<ig<?>> c;
    private final vr0 d;
    private final ek0 e;

    public rc1(o3 o3Var, o8 o8Var, List list, vr0 vr0Var) {
        this(o3Var, o8Var, list, vr0Var, new ek0());
    }

    public final boolean a() {
        if (this.a.u()) {
            if (this.b.Q()) {
                Set<xj0> setA = this.e.a(this.c, this.d);
                if (!setA.isEmpty()) {
                    Iterator<T> it = setA.iterator();
                    while (it.hasNext()) {
                        if (!((xj0) it.next()).b()) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public rc1(o3 o3Var, o8<?> o8Var, List<? extends ig<?>> list, vr0 vr0Var, ek0 ek0Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(list, "assets");
        y45.j(ek0Var, "imageValuesProvider");
        this.a = o3Var;
        this.b = o8Var;
        this.c = list;
        this.d = vr0Var;
        this.e = ek0Var;
    }
}
