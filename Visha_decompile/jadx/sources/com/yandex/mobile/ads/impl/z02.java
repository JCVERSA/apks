package com.yandex.mobile.ads.impl;

import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class z02 {
    private final vr0 a;
    private final String b;
    private final b12 c;

    public z02(vr0 vr0Var, String str, b12 b12Var) {
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(str, "name");
        y45.j(b12Var, ES6Iterator.VALUE_PROPERTY);
        this.a = vr0Var;
        this.b = str;
        this.c = b12Var;
    }

    public final vr0 a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final b12 c() {
        return this.c;
    }
}
