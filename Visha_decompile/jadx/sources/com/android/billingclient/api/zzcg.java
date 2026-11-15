package com.android.billingclient.api;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.c;
import com.google.android.gms.internal.play_billing.zzjs;
import java.util.Objects;

final class zzcg extends com.google.android.gms.internal.play_billing.zzaj {
    final zzbz zza;
    final Boolean zzb;
    final int zzc;
    final BillingClientImpl zzd;

    public zzcg(BillingClientImpl billingClientImpl, zzbz zzbzVar, Boolean bool, int i, zzcm zzcmVar) {
        Objects.requireNonNull(billingClientImpl);
        this.zzd = billingClientImpl;
        this.zza = zzbzVar;
        this.zzb = bool;
        this.zzc = i;
    }

    private final void zzb(zzbz zzbzVar, BillingResult billingResult, zzjs zzjsVar, boolean z, @Nullable String str, int i) {
        this.zzd.zzbs(0);
        zzbzVar.zzi(billingResult, zzjsVar, str, z, i);
        zzbzVar.zzk(billingResult);
    }

    @Override
    public final void zza(Bundle bundle) {
        if (bundle == null) {
            a.n("BillingClient", "Response bundle is null.");
            zzb(this.zza, zzdh.zzh, zzjs.NULL_BUNDLE_RETURNED_BY_PHONESKY, this.zzb.booleanValue(), null, this.zzc);
            return;
        }
        if (!bundle.containsKey("RESPONSE_CODE")) {
            a.n("BillingClient", "Response bundle doesn't contain a response code");
            zzb(this.zza, zzdh.zzh, zzjs.RESPONSE_CODE_NOT_SET_IN_BUNDLE, this.zzb.booleanValue(), null, this.zzc);
            return;
        }
        if (bundle.getInt("RESPONSE_CODE") != 0) {
            zzb(this.zza, zzdh.zza(bundle.getInt("RESPONSE_CODE"), bundle.getString("DEBUG_MESSAGE", "")), zzjs.NON_OK_CODE_RETURNED_BY_PHONESKY, this.zzb.booleanValue(), "Response code from Phonesky: " + bundle.getInt("RESPONSE_CODE"), this.zzc);
            return;
        }
        if (!bundle.containsKey("BILLING_API_VERSION_KEY")) {
            a.n("BillingClient", "Billing API version not found in response bundle.");
            zzb(this.zza, zzdh.zzh, zzjs.BILLING_API_VERSION_NOT_SET_IN_BUNDLE, this.zzb.booleanValue(), null, this.zzc);
            return;
        }
        int i = bundle.getInt("BILLING_API_VERSION_KEY");
        BillingClientImpl billingClientImpl = this.zzd;
        BillingClientImpl.zzat(billingClientImpl, i);
        billingClientImpl.zzl = i >= 5;
        billingClientImpl.zzk = i >= 3;
        Bundle bundle2 = bundle.getBundle("EXPERIMENT_VALUES_KEY");
        if (bundle2 != null) {
            try {
                zzdq.zzg(bundle2.getBoolean("DELEGATION_API_ENABLED_KEY"));
            } catch (Throwable th) {
                a.o("BillingClient", "Error reading EnableDelegationApi experiment flag: ".concat(bundle2.toString()), th);
            }
            try {
                zzdq.zzf(bundle2.getLong("AUTO_SERVICE_RECONNECTION_SYNCHRONOUS_TIMEOUT_MS_KEY"));
            } catch (Throwable th2) {
                a.o("BillingClient", "Error reading AutoServiceReconnectionSynchronousTimeoutMs experiment flag: ".concat(bundle2.toString()), th2);
            }
            try {
                zzdq.zzd(bundle2.getLong("AUTO_SERVICE_RECONNECTION_ASYNCHRONOUS_TIMEOUT_MS_KEY"));
            } catch (Throwable th3) {
                a.o("BillingClient", "Error reading AutoServiceReconnectionAsynchronousTimeoutMs experiment flag: ".concat(bundle2.toString()), th3);
            }
            try {
                zzdq.zze(bundle2.getInt("AUTO_SERVICE_RECONNECTION_MAX_NUM_RETRIES_KEY"));
            } catch (Throwable th4) {
                a.o("BillingClient", "Error reading AutoServiceReconnectionMaxNumRetries experiment flag: ".concat(bundle2.toString()), th4);
            }
            try {
                zzdq.zzh(bundle2.getBoolean("ENABLE_DEDUPLICATE_SERVICE_DISCONNECTED_CALLBACK"));
            } catch (Throwable th5) {
                a.o("BillingClient", "Error reading EnableDeduplicateServiceDisconnectedCallback experiment flag: ".concat(bundle2.toString()), th5);
            }
        }
        Bundle bundle3 = bundle.getBundle("ENABLED_SUBSCRIPTION_CLIENT_ACTIONS_KEY");
        if (bundle3 != null) {
            c cVar = new c();
            for (zzev zzevVar : zzev.values()) {
                if (bundle3.getBoolean(zzevVar.name(), false)) {
                    cVar.b(zzevVar);
                }
            }
            BillingClientImpl billingClientImpl2 = this.zzd;
            billingClientImpl2.zzJ = cVar.c();
            if (billingClientImpl2.zzf != null) {
                billingClientImpl2.zzf.zzj(billingClientImpl2.zzJ);
            }
        }
        BillingClientImpl billingClientImpl3 = this.zzd;
        if (billingClientImpl3.zzm < 3) {
            a.n("BillingClient", "In-app billing API version 3 is not supported on this device.");
            zzb(this.zza, zzdh.zzb, zzjs.ONE_TIME_PRODUCT_NOT_SUPPORTED, this.zzb.booleanValue(), null, this.zzc);
            return;
        }
        zzbz zzbzVar = this.zza;
        Boolean bool = this.zzb;
        int i2 = this.zzc;
        boolean zBooleanValue = bool.booleanValue();
        BillingClientImpl.zzav(billingClientImpl3, 0);
        synchronized (billingClientImpl3.zza) {
            try {
                if (billingClientImpl3.zzb == 3) {
                    return;
                }
                zzbzVar.zzj(zBooleanValue, i2);
                zzbzVar.zzk(zzdh.zzi);
            } catch (Throwable th6) {
                throw th6;
            }
        }
    }
}
