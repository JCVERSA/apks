package com.google.android.gms.internal.measurement;

import defpackage.p3j;
import java.util.Comparator;

final class zziv implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        zzjd zzjdVar = (zzjd) obj;
        zzjd zzjdVar2 = (zzjd) obj2;
        p3j p3jVar = new p3j(zzjdVar);
        p3j p3jVar2 = new p3j(zzjdVar2);
        while (p3jVar.hasNext() && p3jVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(p3jVar.zza() & 255).compareTo(Integer.valueOf(p3jVar2.zza() & 255));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzjdVar.zzd()).compareTo(Integer.valueOf(zzjdVar2.zzd()));
    }
}
