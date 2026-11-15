package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class bv0 extends qg<ex0, ex0> {
    @Override
    public final ig a(Object obj, String str) {
        ex0 ex0Var = (ex0) obj;
        y45.j(str, "name");
        y45.j(ex0Var, ES6Iterator.VALUE_PROPERTY);
        return qg.a(str, "media", ex0Var);
    }
}
