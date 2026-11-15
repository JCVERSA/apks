package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;

public final class x4 {
    private static final String a = "yandex_ad_info";

    public static String a(ub2 ub2Var) {
        Object next;
        y45.j(ub2Var, "videoAdExtensions");
        Iterator<T> it = ub2Var.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!y45.e(((u70) next).a(), a));
        u70 u70Var = (u70) next;
        if (u70Var != null) {
            return u70Var.b();
        }
        return null;
    }
}
