package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import org.json.JSONException;

final class zzcd extends com.google.android.gms.internal.play_billing.zzaf {
    final BillingConfigResponseListener zza;
    final zzdd zzb;
    final int zzc;

    public zzcd(BillingConfigResponseListener billingConfigResponseListener, zzdd zzddVar, int i, zzcm zzcmVar) {
        this.zza = billingConfigResponseListener;
        this.zzb = zzddVar;
        this.zzc = i;
    }

    @Override
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzdd zzddVar = this.zzb;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_FROM_GET_BILLING_CONFIG_SERVICE_CALL;
            BillingResult billingResult = zzdh.zzh;
            int i = zzdc.zza;
            zzddVar.zzb(zzdc.zzb(zzjsVar, 13, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onBillingConfigResponse(billingResult, null);
            return;
        }
        int iB = a.b(bundle, "BillingClient");
        String strJ = a.j(bundle, "BillingClient");
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.setResponseCode(iB);
        builderNewBuilder.setDebugMessage(strJ);
        if (iB != 0) {
            a.n("BillingClient", zza.zza(iB, "getBillingConfig() failed. Response code: "));
            BillingResult billingResultBuild = builderNewBuilder.build();
            zzdd zzddVar2 = this.zzb;
            zzjs zzjsVar2 = zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i2 = zzdc.zza;
            zzddVar2.zzb(zzdc.zzb(zzjsVar2, 13, billingResultBuild, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onBillingConfigResponse(billingResultBuild, null);
            return;
        }
        if (!bundle.containsKey("BILLING_CONFIG")) {
            a.n("BillingClient", "getBillingConfig() returned a bundle with neither an error nor a billing config response");
            builderNewBuilder.setResponseCode(6);
            BillingResult billingResultBuild2 = builderNewBuilder.build();
            zzdd zzddVar3 = this.zzb;
            zzjs zzjsVar3 = zzjs.MISSING_BILLING_CONFIG_IN_GET_BILLING_CONFIG_RESPONSE;
            int i3 = zzdc.zza;
            zzddVar3.zzb(zzdc.zzb(zzjsVar3, 13, billingResultBuild2, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onBillingConfigResponse(billingResultBuild2, null);
            return;
        }
        try {
            this.zza.onBillingConfigResponse(builderNewBuilder.build(), new BillingConfig(bundle.getString("BILLING_CONFIG")));
        } catch (JSONException e) {
            a.o("BillingClient", "Got a JSON exception trying to decode BillingConfig. \n Exception: ", e);
            zzdd zzddVar4 = this.zzb;
            zzjs zzjsVar4 = zzjs.ERROR_DECODING_BILLING_CONFIG_DATA;
            BillingResult billingResult2 = zzdh.zzh;
            int i4 = zzdc.zza;
            zzddVar4.zzb(zzdc.zzb(zzjsVar4, 13, billingResult2, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onBillingConfigResponse(billingResult2, null);
        }
    }
}
