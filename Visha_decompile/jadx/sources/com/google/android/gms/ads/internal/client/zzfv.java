package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.VideoController;

public final class zzfv extends zzec {
    private final VideoController.VideoLifecycleCallbacks zza;

    public zzfv(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zza = videoLifecycleCallbacks;
    }

    @Override
    public final void zze() {
        this.zza.onVideoEnd();
    }

    @Override
    public final void zzf(boolean z) {
        this.zza.onVideoMute(z);
    }

    @Override
    public final void zzg() {
        this.zza.onVideoPause();
    }

    @Override
    public final void zzh() {
        this.zza.onVideoPlay();
    }

    @Override
    public final void zzi() {
        this.zza.onVideoStart();
    }
}
