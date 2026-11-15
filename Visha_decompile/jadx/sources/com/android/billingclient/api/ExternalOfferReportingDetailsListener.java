package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zzi
@Deprecated
public interface ExternalOfferReportingDetailsListener {
    void onExternalOfferReportingDetailsResponse(@NonNull BillingResult billingResult, @Nullable ExternalOfferReportingDetails externalOfferReportingDetails);
}
