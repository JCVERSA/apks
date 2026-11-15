package com.google.android.gms.measurement.internal;

import android.net.Uri;

final class zzlc implements Runnable {
    private final boolean zza;
    private final Uri zzb;
    private final String zzc;
    private final String zzd;
    private final zzkz zze;

    zzlc(zzkz zzkzVar, boolean z10, Uri uri, String str, String str2) {
        this.zza = z10;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
        this.zze = zzkzVar;
    }

    @Override
    public final void run() {
        zzkz.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
