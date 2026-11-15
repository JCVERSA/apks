package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class rz0 {
    public static boolean a(qz0 qz0Var) {
        y45.j(qz0Var, "network");
        List<qz0.c> listB = qz0Var.b();
        if (!(listB instanceof Collection) || !listB.isEmpty()) {
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                if (!((qz0.c) it.next()).c()) {
                    return false;
                }
            }
        }
        return true;
    }
}
