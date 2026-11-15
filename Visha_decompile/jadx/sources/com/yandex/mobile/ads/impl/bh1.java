package com.yandex.mobile.ads.impl;

import defpackage.pc9;
import defpackage.y45;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class bh1 {
    private final g5 a;

    public bh1(g5 g5Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        this.a = g5Var;
    }

    public final LinkedHashMap a(Set set) {
        y45.j(set, "phases");
        pc9<e5> pc9VarF = SequencesKt___SequencesKt.F(defpackage.i81.b0(this.a.b()), new ah1(set));
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (e5 e5Var : pc9VarF) {
            String strA = e5Var.a().a();
            Object arrayList = linkedHashMap.get(strA);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strA, arrayList);
            }
            ((List) arrayList).add(e5Var.b());
        }
        return linkedHashMap;
    }
}
