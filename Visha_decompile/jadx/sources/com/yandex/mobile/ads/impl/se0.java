package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class se0 {
    private static final Object b = new Object();
    private final ps0 a;

    public se0(ps0 ps0Var) {
        y45.j(ps0Var, "localStorage");
        this.a = ps0Var;
    }

    public final boolean a(lc lcVar) {
        String strA;
        boolean z = false;
        if (lcVar == null || (strA = lcVar.a()) == null) {
            return false;
        }
        synchronized (b) {
            String strD = this.a.d("google_advertising_id_key");
            if (strD != null && !y45.e(strA, strD)) {
                z = true;
            }
        }
        return z;
    }

    public final void b(lc lcVar) {
        String strD = this.a.d("google_advertising_id_key");
        String strA = lcVar != null ? lcVar.a() : null;
        if (strD != null || strA == null) {
            return;
        }
        this.a.a("google_advertising_id_key", strA);
    }
}
