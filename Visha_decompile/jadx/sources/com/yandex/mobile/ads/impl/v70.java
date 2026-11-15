package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collection;
import java.util.List;
import org.mozilla.javascript.ES6Iterator;

public final class v70 {
    private final List<u70> a;

    public v70(ub2 ub2Var) {
        this(ub2Var, ub2Var.a());
    }

    public final boolean a() {
        y45.j("ad_system", "type");
        y45.j("adfox", ES6Iterator.VALUE_PROPERTY);
        List<u70> list = this.a;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (u70 u70Var : list) {
                if (y45.e(u70Var.a(), "ad_system") && y45.e(u70Var.b(), "adfox")) {
                    return true;
                }
            }
        }
        return false;
    }

    public v70(ub2 ub2Var, List<u70> list) {
        y45.j(ub2Var, "videoAdExtensions");
        y45.j(list, "extensions");
        this.a = list;
    }
}
