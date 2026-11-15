package com.google.android.gms.iid;

import android.os.Looper;
import android.os.Message;

final class zzag extends com.google.android.gms.internal.gcm.zzj {
    private final zzaf zzdc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzag(zzaf zzafVar, Looper looper) {
        super(looper);
        this.zzdc = zzafVar;
    }

    @Override
    public final void handleMessage(Message message) {
        this.zzdc.zze(message);
    }
}
