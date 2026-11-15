package com.google.android.gms.internal.auth;

import java.util.Comparator;

final class zzdw implements Comparator {
    zzdw() {
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        zzee zzeeVar = (zzee) obj;
        zzee zzeeVar2 = (zzee) obj2;
        zzdv zzdvVar = new zzdv(zzeeVar);
        zzdv zzdvVar2 = new zzdv(zzeeVar2);
        while (zzdvVar.hasNext() && zzdvVar2.hasNext()) {
            int iCompareTo = Integer.valueOf(zzdvVar.zza() & 255).compareTo(Integer.valueOf(zzdvVar2.zza() & 255));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return Integer.valueOf(zzeeVar.zzd()).compareTo(Integer.valueOf(zzeeVar2.zzd()));
    }
}
