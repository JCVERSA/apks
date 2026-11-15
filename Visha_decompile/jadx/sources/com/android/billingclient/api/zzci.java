package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;

final class zzci extends com.google.android.gms.internal.play_billing.zzan {
    final ExternalOfferAvailabilityListener zza;
    final zzdd zzb;
    final int zzc;

    public zzci(ExternalOfferAvailabilityListener externalOfferAvailabilityListener, zzdd zzddVar, int i, zzcm zzcmVar) {
        this.zza = externalOfferAvailabilityListener;
        this.zzb = zzddVar;
        this.zzc = i;
    }

    @Override
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzdd zzddVar = this.zzb;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_FROM_IS_EXTERNAL_PAYMENT_AVAILABLE_SERVICE_CALL;
            BillingResult billingResult = zzdh.zzh;
            int i = zzdc.zza;
            zzddVar.zzb(zzdc.zzb(zzjsVar, 23, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onExternalOfferAvailabilityResponse(billingResult);
            return;
        }
        int iB = a.b(bundle, "BillingClient");
        BillingResult billingResultZza = zzdh.zza(iB, a.j(bundle, "BillingClient"));
        if (iB != 0) {
            a.n("BillingClient", zza.zza(iB, "isExternalOfferAvailableAsync() failed. Response code: "));
            zzdd zzddVar2 = this.zzb;
            zzjs zzjsVar2 = zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i2 = zzdc.zza;
            zzddVar2.zzb(zzdc.zzb(zzjsVar2, 23, billingResultZza, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
        }
        this.zza.onExternalOfferAvailabilityResponse(billingResultZza);
    }
}
