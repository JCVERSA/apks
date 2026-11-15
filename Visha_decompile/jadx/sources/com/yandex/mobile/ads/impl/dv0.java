package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public final class dv0 implements wg<ex0> {
    private final gj0 a;
    private final dx0 b;

    public dv0(gj0 gj0Var, dx0 dx0Var) {
        y45.j(gj0Var, "imageAssetValueValidator");
        y45.j(dx0Var, "mediaValidator");
        this.a = gj0Var;
        this.b = dx0Var;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004d  */
    @Override
    public final boolean a(ex0 ex0Var) {
        boolean z;
        boolean z2;
        ex0 ex0Var2 = ex0Var;
        y45.j(ex0Var2, ES6Iterator.VALUE_PROPERTY);
        List<xj0> listA = ex0Var2.a();
        wu0 wu0VarB = ex0Var2.b();
        if (listA == null) {
            z = false;
        } else {
            if (!listA.isEmpty()) {
                Iterator<T> it = listA.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!this.a.a((xj0) it.next())) {
                            z = false;
                        }
                    }
                }
            }
            z = true;
        }
        if (wu0VarB != null) {
            this.b.getClass();
            y45.j(wu0VarB, "media");
            if (wu0VarB.a() > 0.0f) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (listA != null && wu0VarB != null) {
            return z2 && z;
        }
        if (listA != null) {
            return z;
        }
        if (wu0VarB != null) {
            return z2;
        }
        return false;
    }
}
