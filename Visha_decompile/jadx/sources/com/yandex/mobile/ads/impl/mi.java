package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.j1a;
import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class mi {
    private final kg0 a;
    private final ig0 b;

    public mi() {
        this(new kg0(), new ig0());
    }

    public final String a(Context context) {
        String str;
        Object next;
        y45.j(context, "context");
        List<String> listA = this.a.a(context);
        if (listA.size() > 1) {
            Iterator it = defpackage.i81.g0(listA, 1).iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                w82.a.getClass();
                String strA = w82.a.a((String) next);
                if (strA != null && (!j1a.o0(strA))) {
                    ig0 ig0Var = this.b;
                    int i = ig0.c;
                    if (ig0Var.a(1000, strA)) {
                        break;
                    }
                }
            }
            str = (String) next;
            if (str == null) {
                str = (String) defpackage.i81.A0(listA);
            }
        } else {
            str = (String) defpackage.i81.q0(listA);
        }
        return str == null ? "mobile.yandexadexchange.net" : str;
    }

    public mi(kg0 kg0Var, ig0 ig0Var) {
        y45.j(kg0Var, "hostsProvider");
        y45.j(ig0Var, "hostReachabilityRepository");
        this.a = kg0Var;
        this.b = ig0Var;
    }
}
