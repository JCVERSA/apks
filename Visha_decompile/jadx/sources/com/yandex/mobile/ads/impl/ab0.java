package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class ab0 extends qg<za0, xj0> {
    @Override
    public final ig a(Object obj, String str) {
        xj0 xj0Var = (xj0) obj;
        y45.j(str, "name");
        y45.j(xj0Var, ES6Iterator.VALUE_PROPERTY);
        return qg.a(str, "feedback", new za0(xj0Var));
    }
}
