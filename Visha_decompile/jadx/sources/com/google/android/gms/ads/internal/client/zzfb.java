package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

final class zzfb implements Runnable {
    final zzfc zza;

    public zzfb(zzfc zzfcVar) {
        this.zza = zzfcVar;
    }

    @Override
    public final void run() {
        zzfe zzfeVar = this.zza.zza;
        if (zzfeVar.zza != null) {
            try {
                zzfeVar.zza.zze(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
