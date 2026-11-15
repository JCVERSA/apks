package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import android.os.Handler;

final class zzcf extends ContentObserver {
    final zzcg zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcf(zzcg zzcgVar, Handler handler) {
        super(null);
        this.zza = zzcgVar;
    }

    @Override
    public final void onChange(boolean z10) {
        this.zza.zze();
    }
}
