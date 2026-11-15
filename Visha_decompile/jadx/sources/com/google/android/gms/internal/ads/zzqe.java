package com.google.android.gms.internal.ads;

import defpackage.erj;

public final class zzqe extends Exception {
    public final int zza;
    public final boolean zzb;
    public final erj zzc;

    public zzqe(int i, erj erjVar, boolean z) {
        super("AudioTrack write failed: " + i);
        this.zzb = z;
        this.zza = i;
        this.zzc = erjVar;
    }
}
