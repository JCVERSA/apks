package com.android.billingclient.api;

import android.text.TextUtils;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import java.util.Objects;
import java.util.concurrent.Callable;

final class zzbp implements Callable {
    final PurchasesResponseListener zza;
    final String zzb;
    final boolean zzc;
    final BillingClientImpl zzd;

    public zzbp(BillingClientImpl billingClientImpl, PurchasesResponseListener purchasesResponseListener, String str, boolean z) {
        this.zza = purchasesResponseListener;
        this.zzb = str;
        this.zzc = z;
        Objects.requireNonNull(billingClientImpl);
        this.zzd = billingClientImpl;
    }

    @Override
    public final Object call() throws Exception {
        BillingClientImpl billingClientImpl = this.zzd;
        if (!billingClientImpl.zzbx(zzdq.zzb())) {
            zzjs zzjsVar = zzjs.SERVICE_CONNECTION_NOT_READY;
            BillingResult billingResult = zzdh.zzj;
            billingClientImpl.zzbE(zzjsVar, 9, billingResult);
            this.zza.onQueryPurchasesResponse(billingResult, com.google.android.gms.internal.play_billing.zzca.zzk());
            return null;
        }
        String str = this.zzb;
        if (TextUtils.isEmpty(str)) {
            a.n("BillingClient", "Please provide a valid product type.");
            zzjs zzjsVar2 = zzjs.EMPTY_PRODUCT_TYPE;
            BillingResult billingResult2 = zzdh.zze;
            billingClientImpl.zzbE(zzjsVar2, 9, billingResult2);
            this.zza.onQueryPurchasesResponse(billingResult2, com.google.android.gms.internal.play_billing.zzca.zzk());
            return null;
        }
        zzek zzekVarZzbC = billingClientImpl.zzbC(str, this.zzc, 9);
        if (zzekVarZzbC.zzb() != null) {
            this.zza.onQueryPurchasesResponse(zzekVarZzbC.zza(), zzekVarZzbC.zzb());
            return null;
        }
        this.zza.onQueryPurchasesResponse(zzekVarZzbC.zza(), com.google.android.gms.internal.play_billing.zzca.zzk());
        return null;
    }
}
