package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

final class zzgw extends ContentObserver {
    private final zzgu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgw(zzgu zzguVar, Handler handler) {
        super(null);
        this.zza = zzguVar;
    }

    @Override
    public final void onChange(boolean z10) {
        this.zza.zzd();
    }
}
