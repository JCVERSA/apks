package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.util.Util;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class q5 {
    private final b3 a;

    public q5(oe2 oe2Var, b3 b3Var) {
        y45.j(oe2Var, "videoDurationHolder");
        y45.j(b3Var, "adBreakTimingProvider");
        this.a = b3Var;
    }

    public final AdPlaybackState a(et etVar, Object obj) {
        y45.j(etVar, "instreamAd");
        List<gt> listA = etVar.a();
        if (listA.isEmpty() || obj == null) {
            AdPlaybackState adPlaybackState = AdPlaybackState.NONE;
            y45.g(adPlaybackState);
            return adPlaybackState;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<gt> it = listA.iterator();
        boolean z = false;
        while (it.hasNext()) {
            long jA = this.a.a(it.next().b());
            if (jA == Long.MIN_VALUE) {
                z = true;
            } else if (jA != -1) {
                arrayList.add(Long.valueOf(Util.msToUs(jA)));
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
        return new AdPlaybackState(obj, Arrays.copyOf(jArr, size));
    }
}
