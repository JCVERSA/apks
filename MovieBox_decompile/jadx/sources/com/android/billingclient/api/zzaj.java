package com.android.billingclient.api;

import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zzb;

final class zzaj extends ResultReceiver {
    @Override
    public final void onReceiveResult(int i10, Bundle bundle) {
        zzb.zzf(bundle, "BillingClient");
        throw null;
    }
}
