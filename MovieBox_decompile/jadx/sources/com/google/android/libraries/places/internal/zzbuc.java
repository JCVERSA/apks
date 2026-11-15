package com.google.android.libraries.places.internal;

final class zzbuc {
    private final zzbuc[] zza;
    private final int zzb;
    private final int zzc;

    zzbuc() {
        this.zza = new zzbuc[256];
        this.zzb = 0;
        this.zzc = 0;
    }

    zzbuc(int i10, int i11) {
        this.zza = null;
        this.zzb = i10;
        int i12 = i11 & 7;
        this.zzc = i12 == 0 ? 8 : i12;
    }
}
