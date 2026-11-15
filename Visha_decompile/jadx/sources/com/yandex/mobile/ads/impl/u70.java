package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class u70 {
    private final String a;
    private final String b;

    public u70(String str, String str2) {
        y45.j(str, "type");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = str2;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }
}
