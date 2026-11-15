package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zze
public interface BillingChoiceInfoResponseListener {
    void onBillingChoiceInfoResponse(@NonNull BillingResult billingResult, @Nullable BillingChoiceInfo billingChoiceInfo);
}
