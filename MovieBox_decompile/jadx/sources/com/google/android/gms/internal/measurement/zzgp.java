package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

final class zzgp extends ContentObserver {
    private final zzgn zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzgp(zzgn zzgnVar, Handler handler) {
        super(null);
        this.zza = zzgnVar;
    }

    @Override
    public final void onChange(boolean z10) {
        this.zza.zza.set(true);
    }
}
