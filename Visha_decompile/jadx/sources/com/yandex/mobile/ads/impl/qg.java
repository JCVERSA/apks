package com.yandex.mobile.ads.impl;

import defpackage.y45;
import org.mozilla.javascript.ES6Iterator;

public abstract class qg<T, V> {
    public static ig a(String str, String str2, Object obj) {
        y45.j(str, "name");
        y45.j(str2, "type");
        y45.j(obj, ES6Iterator.VALUE_PROPERTY);
        return new ig(str, str2, obj, null, false, false);
    }

    public abstract ig a(Object obj, String str);
}
