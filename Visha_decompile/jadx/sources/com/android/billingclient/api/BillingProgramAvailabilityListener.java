package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzf
public interface BillingProgramAvailabilityListener {
    void onBillingProgramAvailabilityResponse(@NonNull BillingResult billingResult, @NonNull BillingProgramAvailabilityDetails billingProgramAvailabilityDetails);
}
