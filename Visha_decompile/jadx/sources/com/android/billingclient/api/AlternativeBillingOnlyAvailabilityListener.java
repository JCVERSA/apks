package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzc
public interface AlternativeBillingOnlyAvailabilityListener {
    void onAlternativeBillingOnlyAvailabilityResponse(@NonNull BillingResult billingResult);
}
