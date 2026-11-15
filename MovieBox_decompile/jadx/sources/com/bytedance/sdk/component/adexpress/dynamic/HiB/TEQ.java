package com.bytedance.sdk.component.adexpress.dynamic.HiB;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TEQ {
    public static float Sj(float f10) {
        return (float) Math.ceil((f10 * 16.0f) / 16.0f);
    }

    public static List<sP.Sj> Sj(float f10, List<sP.Sj> list) {
        ArrayList<sP.Sj> arrayList = new ArrayList();
        Iterator<sP.Sj> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((sP.Sj) it.next().clone());
        }
        boolean z10 = true;
        int i10 = 0;
        int i11 = 0;
        for (sP.Sj sj2 : arrayList) {
            if (sj2.sP) {
                i10 = (int) (i10 + sj2.Sj);
            } else {
                i11 = (int) (i11 + sj2.Sj);
                z10 = false;
            }
        }
        if (z10 && f10 > i10) {
            return arrayList;
        }
        float f11 = i10;
        float f12 = f10 < f11 ? f10 / f11 : 1.0f;
        float f13 = f10 > f11 ? (f10 - f11) / i11 : 0.0f;
        if (f13 > 1.0f) {
            ArrayList arrayList2 = new ArrayList();
            boolean z11 = false;
            for (sP.Sj sj3 : arrayList) {
                if (!sj3.sP) {
                    float f14 = sj3.TKC;
                    if (f14 != 0.0f && sj3.Sj * f13 > f14) {
                        sj3.Sj = f14;
                        sj3.sP = true;
                        z11 = true;
                    }
                }
                arrayList2.add(sj3);
            }
            if (z11) {
                return Sj(f10, arrayList2);
            }
        }
        int i12 = 0;
        for (sP.Sj sj4 : arrayList) {
            if (sj4.sP) {
                sj4.Sj = Sj(sj4.Sj * f12);
            } else {
                sj4.Sj = Sj(sj4.Sj * f13);
            }
            i12 = (int) (i12 + sj4.Sj);
        }
        float f15 = i12;
        if (f15 < f10) {
            float f16 = f10 - f15;
            for (int size = 0; size < arrayList.size() && f16 > 0.0f; size = (size + 1) % arrayList.size()) {
                sP.Sj sj5 = (sP.Sj) arrayList.get(size);
                if ((f10 < f11 && sj5.sP) || (f10 > f11 && !sj5.sP)) {
                    sj5.Sj += 0.0625f;
                    f16 -= 0.0625f;
                }
            }
        }
        return arrayList;
    }
}
