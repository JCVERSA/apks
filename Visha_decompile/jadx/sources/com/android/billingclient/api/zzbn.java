package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import java.util.Objects;

final class zzbn extends ResultReceiver {
    final BillingProgramInformationDialogListener zza;
    final BillingClientImpl zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbn(BillingClientImpl billingClientImpl, Handler handler, BillingProgramInformationDialogListener billingProgramInformationDialogListener) {
        super(handler);
        this.zza = billingProgramInformationDialogListener;
        Objects.requireNonNull(billingClientImpl);
        this.zzb = billingClientImpl;
    }

    @Override
    public final void onReceiveResult(int i, @Nullable Bundle bundle) {
        BillingResult.Builder builderNewBuilder = BillingResult.newBuilder();
        builderNewBuilder.setResponseCode(i);
        if (i != 0) {
            if (bundle == null) {
                this.zzb.zzbm(this.zza, zzdh.zzh, zzjs.NULL_BUNDLE_RETURNED_BY_PHONESKY, null);
                return;
            }
            builderNewBuilder.setDebugMessage(a.j(bundle, "BillingClient"));
            int i2 = bundle.getInt("INTERNAL_LOG_ERROR_REASON");
            BillingClientImpl billingClientImpl = this.zzb;
            zzjs zzjsVarZzb = i2 != 0 ? zzjs.zzb(i2) : zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY;
            BillingResult billingResultBuild = builderNewBuilder.build();
            String string = bundle.getString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS");
            int i3 = zzdc.zza;
            billingClientImpl.zzbo(zzdc.zzb(zzjsVarZzb, 39, billingResultBuild, string, zzjz.BROADCAST_ACTION_UNSPECIFIED));
        }
        this.zza.onBillingProgramInformationDialogResponse(builderNewBuilder.build());
    }
}
