package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import defpackage.eff;
import java.io.IOException;

final class zzbyq implements Runnable {
    final Context zza;
    final eff zzb;

    public zzbyq(w3 w3Var, Context context, eff effVar) {
        this.zza = context;
        this.zzb = effVar;
    }

    @Override
    public final void run() {
        try {
            this.zzb.c(AdvertisingIdClient.getAdvertisingIdInfo(this.zza));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.zzb.d(e);
            zzo.zzh("Exception while getting advertising Id info", e);
        }
    }
}
