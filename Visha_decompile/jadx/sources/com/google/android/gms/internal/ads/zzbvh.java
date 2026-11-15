package com.google.android.gms.internal.ads;

import defpackage.jc7;

public final class zzbvh extends zzbvj {
    private final String zza;
    private final int zzb;

    public zzbvh(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbvh)) {
            zzbvh zzbvhVar = (zzbvh) obj;
            if (jc7.a(this.zza, zzbvhVar.zza)) {
                if (jc7.a(Integer.valueOf(this.zzb), Integer.valueOf(zzbvhVar.zzb))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final int zzb() {
        return this.zzb;
    }

    @Override
    public final String zzc() {
        return this.zza;
    }
}
