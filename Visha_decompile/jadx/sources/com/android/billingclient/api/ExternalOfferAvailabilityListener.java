package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzi
@Deprecated
public interface ExternalOfferAvailabilityListener {
    void onExternalOfferAvailabilityResponse(@NonNull BillingResult billingResult);
}
