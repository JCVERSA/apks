package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zzck;

public final class zzayv extends zzck {
    private final AppEventListener zza;

    public zzayv(AppEventListener appEventListener) {
        this.zza = appEventListener;
    }

    public final AppEventListener zzb() {
        return this.zza;
    }

    @Override
    public final void zzc(String str, String str2) {
        this.zza.onAppEvent(str, str2);
    }
}
