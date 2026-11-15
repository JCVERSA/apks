package com.yandex.mobile.ads.impl;

import defpackage.q15;
import defpackage.u15;
import defpackage.u95;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.random.Random;

public final class kl0 {
    private final u95 a;
    private final uj b;

    public kl0(u95 u95Var, uj ujVar) {
        y45.j(u95Var, "jsonSerializer");
        y45.j(ujVar, "dataEncoder");
        this.a = u95Var;
        this.b = ujVar;
    }

    public final String a(sx sxVar) {
        y45.j(sxVar, "reportData");
        u95 u95Var = this.a;
        u95.d.a();
        String strB = u95Var.b(sx.Companion.serializer(), sxVar);
        this.b.getClass();
        String strA = uj.a(strB);
        if (strA == null) {
            strA = "";
        }
        List listH0 = defpackage.i81.H0(new defpackage.hv0('A', 'Z'), new defpackage.hv0('a', 'z'));
        u15 u15Var = new u15(1, 3);
        ArrayList arrayList = new ArrayList(defpackage.z71.v(u15Var, 10));
        Iterator it = u15Var.iterator();
        while (it.hasNext()) {
            ((q15) it).nextInt();
            Character ch = (Character) defpackage.i81.L0(listH0, Random.Default);
            ch.getClass();
            arrayList.add(ch);
        }
        return defpackage.i81.y0(arrayList, "", null, null, 0, null, null, 62, null) + strA;
    }
}
