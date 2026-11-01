package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import app.fast.ssh.ProtectedFastSSH;
import com.android.billingclient.api.zzy$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.internal.ads.zzbjg;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

public final class zzcg {
    private boolean zzd;
    private Context zze;
    private boolean zzc = false;
    private final Map zzb = new WeakHashMap();
    private final BroadcastReceiver zza = new zzcf(this);

    private final synchronized void zze(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.zzb.entrySet()) {
            if (((IntentFilter) entry.getValue()).hasAction(intent.getAction())) {
                arrayList.add((BroadcastReceiver) entry.getKey());
            }
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((BroadcastReceiver) arrayList.get(i)).onReceive(context, intent);
        }
    }

    public final synchronized void zza(Context context) {
        if (this.zzc) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        if (applicationContext == null) {
            this.zze = context;
        }
        zzbjg.zza(this.zze);
        this.zzd = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzeR)).booleanValue();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ProtectedFastSSH.s("㫚"));
        intentFilter.addAction(ProtectedFastSSH.s("㫛"));
        intentFilter.addAction(ProtectedFastSSH.s("㫜"));
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmF)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            this.zze.registerReceiver(this.zza, intentFilter);
        } else {
            zzy$$ExternalSyntheticApiModelOutline0.m(this.zze, this.zza, intentFilter, 4);
        }
        this.zzc = true;
    }

    public final synchronized void zzb(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.zzd) {
            this.zzb.put(broadcastReceiver, intentFilter);
            return;
        }
        zzbjg.zza(context);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzd(zzbjg.zzmF)).booleanValue() || Build.VERSION.SDK_INT < 33) {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } else {
            zzy$$ExternalSyntheticApiModelOutline0.m(context, broadcastReceiver, intentFilter, 4);
        }
    }

    public final synchronized void zzc(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.zzd) {
            this.zzb.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }

    final void zzd(Context context, Intent intent) {
        zze(context, intent);
    }
}
