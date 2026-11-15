package com.google.android.gms.iid;

import android.content.Intent;
import android.util.Log;

final class zzh implements Runnable {
    private final Intent zzbf;
    private final zzg zzbl;

    zzh(zzg zzgVar, Intent intent) {
        this.zzbl = zzgVar;
        this.zzbf = intent;
    }

    @Override
    public final void run() {
        String action = this.zzbf.getAction();
        StringBuilder sb2 = new StringBuilder(String.valueOf(action).length() + 61);
        sb2.append("Service took too long to process intent: ");
        sb2.append(action);
        sb2.append(" App may get closed.");
        Log.w("EnhancedIntentService", sb2.toString());
        this.zzbl.finish();
    }
}
