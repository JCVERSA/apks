package com.android.billingclient.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import androidx.annotation.Nullable;
import java.util.Objects;

final class zzbq extends ResultReceiver {
    final InAppMessageResponseListener zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbq(BillingClientImpl billingClientImpl, Handler handler, InAppMessageResponseListener inAppMessageResponseListener) {
        super(handler);
        this.zza = inAppMessageResponseListener;
        Objects.requireNonNull(billingClientImpl);
    }

    @Override
    public final void onReceiveResult(int i, @Nullable Bundle bundle) {
        this.zza.onInAppMessageResponse(InAppMessageResult.zza(bundle));
    }
}
