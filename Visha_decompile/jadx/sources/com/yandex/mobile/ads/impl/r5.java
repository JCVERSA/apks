package com.yandex.mobile.ads.impl;

import defpackage.blb;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class r5 {
    private final c3 a;

    public r5(pe2 pe2Var, c3 c3Var) {
        y45.j(pe2Var, "videoDurationHolder");
        y45.j(c3Var, "adBreakTimingProvider");
        this.a = c3Var;
    }

    public final com.google.android.exoplayer2.source.ads.a a(et etVar, Object obj) {
        y45.j(etVar, "instreamAd");
        List<gt> listA = etVar.a();
        if (listA.isEmpty() || obj == null) {
            com.google.android.exoplayer2.source.ads.a aVar = com.google.android.exoplayer2.source.ads.a.h;
            y45.g(aVar);
            return aVar;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<gt> it = listA.iterator();
        boolean z = false;
        while (it.hasNext()) {
            long jA = this.a.a(it.next().b());
            if (jA == Long.MIN_VALUE) {
                z = true;
            } else if (jA != -1) {
                arrayList.add(Long.valueOf(blb.t0(jA)));
            }
        }
        int size = z ? arrayList.size() + 1 : arrayList.size();
        long[] jArr = new long[size];
        if (z) {
            jArr[size - 1] = Long.MIN_VALUE;
        }
        int size2 = arrayList.size();
        for (int i = 0; i < size2; i++) {
            jArr[i] = ((Number) arrayList.get(i)).longValue();
        }
        Arrays.sort(jArr, 0, arrayList.size());
        return new com.google.android.exoplayer2.source.ads.a(obj, Arrays.copyOf(jArr, size));
    }
}
