package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class gj0 implements wg<xj0> {
    private final c32 a;

    public gj0() {
        this(new c32());
    }

    @Override
    public final boolean a(xj0 xj0Var) {
        y45.j(xj0Var, ES6Iterator.VALUE_PROPERTY);
        String strF = xj0Var.f();
        if (strF != null) {
            this.a.getClass();
            y45.j(strF, ES6Iterator.VALUE_PROPERTY);
            if (strF.length() > 0 && !y45.e("null", strF)) {
                return true;
            }
        }
        return false;
    }

    public gj0(c32 c32Var) {
        y45.j(c32Var, "stringAssetValueValidator");
        this.a = c32Var;
    }
}
