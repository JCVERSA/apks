package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;

class zzx {
    private static final zzx zze = new zzx(true, 3, 1, null, null);
    final boolean zza;
    final String zzb;
    final Throwable zzc;
    final int zzd;

    private zzx(boolean z10, int i10, int i11, String str, Throwable th2) {
        this.zza = z10;
        this.zzd = i10;
        this.zzb = str;
        this.zzc = th2;
    }

    @Deprecated
    static zzx zzb() {
        return zze;
    }

    static zzx zzc(@NonNull String str) {
        return new zzx(false, 1, 5, str, null);
    }

    static zzx zzd(@NonNull String str, @NonNull Throwable th2) {
        return new zzx(false, 1, 5, str, th2);
    }

    static zzx zzf(int i10) {
        return new zzx(true, i10, 1, null, null);
    }

    static zzx zzg(int i10, int i11, @NonNull String str, Throwable th2) {
        return new zzx(false, i10, i11, str, th2);
    }

    String zza() {
        return this.zzb;
    }

    final void zze() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            zza();
        } else {
            zza();
        }
    }
}
