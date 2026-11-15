package com.android.billingclient.api;

import androidx.annotation.NonNull;

public interface ConsumeResponseListener {
    void onConsumeResponse(@NonNull BillingResult billingResult, @NonNull String str);
}
