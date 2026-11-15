package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

final class zzcac implements Runnable {
    final MediaPlayer zza;
    final zzcak zzb;

    public zzcac(zzcak zzcakVar, MediaPlayer mediaPlayer) {
        this.zza = mediaPlayer;
        this.zzb = zzcakVar;
    }

    @Override
    public final void run() {
        zzcak zzcakVar = this.zzb;
        zzcak.h(zzcakVar, this.zza);
        if (zzcakVar.r != null) {
            zzcakVar.r.zzf();
        }
    }
}
