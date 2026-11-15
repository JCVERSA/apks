package com.google.android.gms.iid;

import android.util.Log;

final class zzj implements Runnable {
    private final zzg zzbn;
    private final zzi zzbo;

    zzj(zzi zziVar, zzg zzgVar) {
        this.zzbo = zziVar;
        this.zzbn = zzgVar;
    }

    @Override
    public final void run() {
        Log.isLoggable("EnhancedIntentService", 3);
        this.zzbo.zzbm.handleIntent(this.zzbn.intent);
        this.zzbn.finish();
    }
}
