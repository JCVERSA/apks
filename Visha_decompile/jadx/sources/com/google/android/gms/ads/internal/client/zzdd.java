package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.MuteThisAdListener;

public final class zzdd extends zzdb {
    private final MuteThisAdListener zza;

    public zzdd(MuteThisAdListener muteThisAdListener) {
        this.zza = muteThisAdListener;
    }

    @Override
    public final void zze() {
        this.zza.onAdMuted();
    }
}
