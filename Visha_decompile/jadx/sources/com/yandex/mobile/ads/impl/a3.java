package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a3 {
    private final qm0 a;
    private final dj1 b;
    private z2 c;

    public a3(qm0 qm0Var) {
        this(qm0Var, new dj1());
    }

    public final z2 a() {
        z2 z2Var = this.c;
        if (z2Var != null) {
            return z2Var;
        }
        om0 om0VarA = this.a.a();
        this.b.getClass();
        y45.j(om0VarA, "playlist");
        List listC = defpackage.x71.c();
        gt gtVarC = om0VarA.c();
        if (gtVarC != null) {
            listC.add(gtVarC);
        }
        List<ej1> listA = om0VarA.a();
        ArrayList arrayList = new ArrayList(defpackage.z71.v(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((ej1) it.next()).a());
        }
        listC.addAll(arrayList);
        gt gtVarB = om0VarA.b();
        if (gtVarB != null) {
            listC.add(gtVarB);
        }
        z2 z2Var2 = new z2(defpackage.x71.a(listC));
        this.c = z2Var2;
        return z2Var2;
    }

    public a3(qm0 qm0Var, dj1 dj1Var) {
        y45.j(qm0Var, "instreamAdPlaylistHolder");
        y45.j(dj1Var, "playlistAdBreaksProvider");
        this.a = qm0Var;
        this.b = dj1Var;
    }
}
