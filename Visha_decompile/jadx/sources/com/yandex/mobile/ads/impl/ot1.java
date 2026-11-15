package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;

public final class ot1 {
    private final ArrayList a;

    public ot1(om0 om0Var) {
        y45.j(om0Var, "instreamAdPlaylist");
        this.a = a(om0Var);
    }

    private static ArrayList a(om0 om0Var) {
        ArrayList arrayList = new ArrayList();
        gt gtVarC = om0Var.c();
        if (gtVarC != null) {
            arrayList.add(new ej1(gtVarC, 0L));
        }
        arrayList.addAll(om0Var.a());
        return arrayList;
    }

    public final ArrayList a() {
        return this.a;
    }
}
