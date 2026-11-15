package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.a;
import java.util.Objects;

final class zzcy implements ServiceConnection {
    final zzda zza;

    public zzcy(zzda zzdaVar, zzcz zzczVar) {
        Objects.requireNonNull(zzdaVar);
        this.zza = zzdaVar;
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.m("BillingClientTesting", "Billing Override Service connected.");
        zzda zzdaVar = this.zza;
        zzdaVar.zzc = com.google.android.gms.internal.play_billing.zzaz.zzb(iBinder);
        zzdaVar.zzb = 2;
        zzdaVar.zzaX(26);
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        a.n("BillingClientTesting", "Billing Override Service disconnected.");
        zzda zzdaVar = this.zza;
        zzdaVar.zzc = null;
        zzdaVar.zzb = 0;
    }
}
