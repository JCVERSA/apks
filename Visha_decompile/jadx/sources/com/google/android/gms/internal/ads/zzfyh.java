package com.google.android.gms.internal.ads;

import java.util.Comparator;

public abstract class zzfyh implements Comparator {
    public static zzfyh zzb(Comparator comparator) {
        return new zzfwh(comparator);
    }

    public static zzfyh zzc() {
        return zzfyf.zza;
    }

    @Override
    public abstract int compare(Object obj, Object obj2);

    public zzfyh zza() {
        return new zzfyq(this);
    }
}
