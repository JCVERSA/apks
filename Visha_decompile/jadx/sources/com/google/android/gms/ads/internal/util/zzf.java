package com.google.android.gms.ads.internal.util;

import android.os.Looper;
import android.os.Message;
import defpackage.pzh;

public final class zzf extends pzh {
    public zzf(Looper looper) {
        super(looper);
    }

    @Override
    public final void a(Message message) {
        try {
            super.a(message);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzv.zzq();
            zzs.zzN(com.google.android.gms.ads.internal.zzv.zzp().e(), th);
            throw th;
        }
    }

    @Override
    public final void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().x(e, "AdMobHandler.handleMessage");
        }
    }
}
