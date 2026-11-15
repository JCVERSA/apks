package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.u;
import java.util.Objects;

final class zzbv implements BillingClientStateListener {
    final u zza;
    final BillingClientImpl zzb;

    public zzbv(BillingClientImpl billingClientImpl, u uVar) {
        this.zza = uVar;
        Objects.requireNonNull(billingClientImpl);
        this.zzb = billingClientImpl;
    }

    @Override
    public final void onBillingServiceDisconnected() {
        a.m("BillingClient", "Reconnection attempt failed.");
        try {
            this.zza.b(zzdh.zzj);
        } catch (Throwable th) {
            a.o("BillingClient", "Exception setting completer.", th);
        }
        BillingClientImpl billingClientImpl = this.zzb;
        if (billingClientImpl.zzK != null) {
            billingClientImpl.zzax(new Runnable() {
                @Override
                public final void run() {
                    try {
                        this.zza.zzb.zzK.onBillingServiceDisconnected();
                    } catch (Throwable th2) {
                        a.o("BillingClient", "Exception calling onBillingServiceDisconnected.", th2);
                    }
                }
            });
        }
    }

    @Override
    public final void onBillingSetupFinished(final BillingResult billingResult) {
        a.m("BillingClient", "Reconnection finished with result: " + billingResult.getResponseCode());
        try {
            this.zza.b(billingResult);
        } catch (Throwable th) {
            a.o("BillingClient", "Exception setting completer.", th);
        }
        BillingClientImpl billingClientImpl = this.zzb;
        if (billingClientImpl.zzK != null) {
            billingClientImpl.zzax(new Runnable() {
                @Override
                public final void run() {
                    zzbv zzbvVar = this.zza;
                    try {
                        zzbvVar.zzb.zzK.onBillingSetupFinished(billingResult);
                    } catch (Throwable th2) {
                        a.o("BillingClient", "Exception calling onBillingSetupFinished.", th2);
                    }
                }
            });
        }
    }
}
