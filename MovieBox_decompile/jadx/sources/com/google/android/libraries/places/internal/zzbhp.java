package com.google.android.libraries.places.internal;

import java.io.InputStream;

final class zzbhp implements Runnable {
    final InputStream zza;
    final zzbhy zzb;

    zzbhp(zzbhy zzbhyVar, InputStream inputStream) {
        this.zza = inputStream;
        this.zzb = zzbhyVar;
    }

    @Override
    public final void run() {
        this.zzb.zzc.zzw(this.zza);
    }
}
