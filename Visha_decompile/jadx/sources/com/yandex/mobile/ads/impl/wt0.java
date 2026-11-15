package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class wt0 {
    private final et a;
    private final f3 b;
    private final g3 c;
    private final rt0 d;

    public wt0(Context context, en2 en2Var, et etVar) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(etVar, "instreamAd");
        this.a = etVar;
        this.b = new f3();
        this.c = new g3();
        this.d = new rt0(context, en2Var, etVar);
    }

    public final ArrayList a(String str) {
        g3 g3Var = this.c;
        List<gt> listA = this.a.a();
        g3Var.getClass();
        y45.j(listA, "adBreaks");
        ArrayList arrayList = new ArrayList(listA);
        Collections.sort(arrayList, new g3.a());
        ArrayList<gt> arrayList2 = new ArrayList(arrayList);
        this.b.getClass();
        y45.j(str, "breakType");
        y45.j(arrayList2, "adBreaks");
        ArrayList arrayList3 = new ArrayList();
        for (gt gtVar : arrayList2) {
            if (y45.e(gtVar.e(), str)) {
                if (ht.a.d == gtVar.b().a()) {
                    arrayList3.add(gtVar);
                }
            }
        }
        ArrayList arrayList4 = new ArrayList(defpackage.z71.v(arrayList3, 10));
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            arrayList4.add(this.d.a((gt) it.next()));
        }
        return arrayList4;
    }
}
