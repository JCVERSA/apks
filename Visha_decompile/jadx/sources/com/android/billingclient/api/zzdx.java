package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import defpackage.byg;

final class zzdx extends com.google.android.gms.internal.play_billing.zzab {
    final BillingConfigResponseListener zza;
    final zzdd zzb;
    final int zzc;

    public zzdx(BillingConfigResponseListener billingConfigResponseListener, zzdd zzddVar, int i) {
        billingConfigResponseListener.getClass();
        this.zza = billingConfigResponseListener;
        this.zzb = zzddVar;
        this.zzc = i;
    }

    private final void zza(BillingResult billingResult) {
        BillingConfigResponseListener billingConfigResponseListener = this.zza;
        if (billingConfigResponseListener != null) {
            billingConfigResponseListener.onBillingConfigResponse(billingResult, null);
        } else {
            zzdj.zza(zzjs.NULL_LISTENER_IN_DELEGATE_TO_BACKEND_CALLBACK, billingResult, this.zzb, zzdk.GET_BILLING_CONFIG.zzb(), this.zzc);
        }
    }

    @Override
    public final void onDelegateToBackendResponse(Bundle bundle) {
        if (bundle == null) {
            zzdd zzddVar = this.zzb;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_FROM_DELEGATE_TO_BACKEND_SERVICE_CALL;
            BillingResult billingResult = zzdh.zzh;
            zzdj.zza(zzjsVar, billingResult, zzddVar, zzdk.GET_BILLING_CONFIG.zzb(), this.zzc);
            zza(billingResult);
            return;
        }
        BillingResult billingResultZza = zzdm.zza(bundle, "GetBillingConfigDelegateToBackendCallback", zzdk.GET_BILLING_CONFIG.zzb(), this.zzb, this.zzc);
        if (billingResultZza.getResponseCode() != 0) {
            zza(billingResultZza);
            return;
        }
        try {
            byte[] byteArray = bundle.getByteArray("RESPONSE_DATA");
            if (byteArray == null) {
                throw new IllegalArgumentException("Response data is null");
            }
            this.zza.onBillingConfigResponse(billingResultZza, BillingConfig.forCountryCode(byg.z(byteArray).A()));
        } catch (Exception e) {
            a.o("GetBillingConfigDelegateToBackendCallback", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e);
            zzdd zzddVar2 = this.zzb;
            zzjs zzjsVar2 = zzjs.ERROR_DECODING_DELEGATE_TO_BACKEND_RESPONSE_DATA;
            BillingResult billingResult2 = zzdh.zzh;
            zzdj.zzb(zzjsVar2, billingResult2, zzddVar2, zzdk.GET_BILLING_CONFIG.zzb(), this.zzc, zzdc.zza(e));
            zza(billingResult2);
        }
    }
}
