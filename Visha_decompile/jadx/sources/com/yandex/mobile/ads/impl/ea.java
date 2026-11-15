package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.List;

public final class ea {
    private final fl a;

    public ea(fl flVar) {
        y45.j(flVar, "biddingSettings");
        this.a = flVar;
    }

    public final f01 a(String str) {
        h01 h01VarD;
        List<e01> listE;
        Object next;
        h01 h01VarD2 = this.a.d();
        if (h01VarD2 != null && (h01VarD = this.a.d()) != null && (listE = h01VarD.e()) != null) {
            Iterator<T> it = listE.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((e01) next).d(), str));
            e01 e01Var = (e01) next;
            if (e01Var != null) {
                return new f01(h01VarD2.d(), e01Var.d(), e01Var.e());
            }
        }
        return null;
    }
}
