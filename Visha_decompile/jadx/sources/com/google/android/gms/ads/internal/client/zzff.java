package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

final class zzff implements Runnable {
    final zzfg zza;

    public zzff(zzfg zzfgVar) {
        this.zza = zzfgVar;
    }

    @Override
    public final void run() {
        zzfg zzfgVar = this.zza;
        if (zzfgVar.zza != null) {
            try {
                zzfgVar.zza.zze(1);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
