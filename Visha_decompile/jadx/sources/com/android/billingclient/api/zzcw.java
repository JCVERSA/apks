package com.android.billingclient.api;

import androidx.core.util.Consumer;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import defpackage.o8g;
import java.util.Objects;
import java.util.concurrent.TimeoutException;

final class zzcw implements o8g {
    final Consumer zza;
    final Runnable zzb;
    final zzda zzc;
    final int zzd;

    public zzcw(zzda zzdaVar, int i, Consumer consumer, Runnable runnable) {
        this.zzd = i;
        this.zza = consumer;
        this.zzb = runnable;
        Objects.requireNonNull(zzdaVar);
        this.zzc = zzdaVar;
    }

    @Override
    public final void zza(Throwable th) {
        if (th instanceof TimeoutException) {
            this.zzc.zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CALL_TIMEOUT, 28, zzdh.zzF);
            a.o("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            this.zzc.zzaW(zzjs.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, zzdh.zzF);
            a.o("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        this.zzb.run();
    }

    @Override
    public final void zzb(Object obj) {
        Integer num = (Integer) obj;
        int iIntValue = num.intValue();
        zzda zzdaVar = this.zzc;
        if (!zzda.zzaT(iIntValue)) {
            this.zzb.run();
        } else {
            this.zza.accept(zzdaVar.zzaU(this.zzd, num.intValue()));
        }
    }
}
