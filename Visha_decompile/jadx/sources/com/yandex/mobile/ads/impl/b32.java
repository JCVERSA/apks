package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class b32 extends qg<String, String> {
    @Override
    public final ig a(Object obj, String str) {
        String str2 = (String) obj;
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        return qg.a(str, "string", str2);
    }
}
