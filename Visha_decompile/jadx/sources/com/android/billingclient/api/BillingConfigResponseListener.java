package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zzl
public interface BillingConfigResponseListener {
    void onBillingConfigResponse(@NonNull BillingResult billingResult, @Nullable BillingConfig billingConfig);
}
