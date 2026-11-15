package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public final class c32 implements wg<String> {
    @Override
    public final boolean a(String str) {
        String str2 = str;
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        return str2.length() > 0 && !y45.e("null", str2);
    }
}
