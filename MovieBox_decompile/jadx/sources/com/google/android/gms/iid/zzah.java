package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

final class zzah extends BroadcastReceiver {
    private final zzaf zzdc;

    zzah(zzaf zzafVar) {
        this.zzdc = zzafVar;
    }

    @Override
    public final void onReceive(Context context, Intent intent) {
        Log.isLoggable("InstanceID", 3);
        this.zzdc.zzh(intent);
    }
}
