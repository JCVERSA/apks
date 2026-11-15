package com.google.android.gms.internal.auth;

import defpackage.vpg;
import java.util.Comparator;

final class zzdw implements Comparator {
    @Override
    public final int compare(Object obj, Object obj2) {
        zzee zzeeVar = (zzee) obj;
        zzee zzeeVar2 = (zzee) obj2;
        vpg vpgVar = new vpg(zzeeVar);
        vpg vpgVar2 = new vpg(zzeeVar2);
        while (vpgVar.hasNext() && vpgVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(vpgVar.zza() & 255).compareTo(Integer.valueOf(vpgVar2.zza() & 255));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzeeVar.zzd()).compareTo(Integer.valueOf(zzeeVar2.zzd()));
    }
}
