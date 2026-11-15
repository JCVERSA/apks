package com.android.billingclient.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import org.json.JSONException;

final class zzca extends com.google.android.gms.internal.play_billing.zzw {
    final AlternativeBillingOnlyReportingDetailsListener zza;
    final zzdd zzb;
    final int zzc;

    public zzca(AlternativeBillingOnlyReportingDetailsListener alternativeBillingOnlyReportingDetailsListener, zzdd zzddVar, int i, zzcm zzcmVar) {
        this.zza = alternativeBillingOnlyReportingDetailsListener;
        this.zzb = zzddVar;
        this.zzc = i;
    }

    @Override
    public final void zza(Bundle bundle) throws RemoteException {
        if (bundle == null) {
            zzdd zzddVar = this.zzb;
            zzjs zzjsVar = zzjs.NULL_BUNDLE_FROM_CREATE_ALTERNATIVE_BILLING_ONLY_TOKEN_SERVICE_CALL;
            BillingResult billingResult = zzdh.zzh;
            int i = zzdc.zza;
            zzddVar.zzb(zzdc.zzb(zzjsVar, 15, billingResult, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onAlternativeBillingOnlyTokenResponse(billingResult, null);
            return;
        }
        int iB = a.b(bundle, "BillingClient");
        BillingResult billingResultZza = zzdh.zza(iB, a.j(bundle, "BillingClient"));
        if (iB != 0) {
            a.n("BillingClient", zza.zza(iB, "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: "));
            zzdd zzddVar2 = this.zzb;
            zzjs zzjsVar2 = zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            int i2 = zzdc.zza;
            zzddVar2.zzb(zzdc.zzb(zzjsVar2, 15, billingResultZza, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onAlternativeBillingOnlyTokenResponse(billingResultZza, null);
            return;
        }
        try {
            this.zza.onAlternativeBillingOnlyTokenResponse(billingResultZza, new AlternativeBillingOnlyReportingDetails(bundle.getString("CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS")));
        } catch (JSONException e) {
            a.o("BillingClient", "Error when parsing invalid alternative billing only reporting details. \n Exception: ", e);
            zzdd zzddVar3 = this.zzb;
            zzjs zzjsVar3 = zzjs.ERROR_DECODING_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS;
            BillingResult billingResult2 = zzdh.zzh;
            int i3 = zzdc.zza;
            zzddVar3.zzb(zzdc.zzb(zzjsVar3, 15, billingResult2, null, zzjz.BROADCAST_ACTION_UNSPECIFIED), this.zzc);
            this.zza.onAlternativeBillingOnlyTokenResponse(billingResult2, null);
        }
    }
}
