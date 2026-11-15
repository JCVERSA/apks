package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zzc
public interface AlternativeBillingOnlyReportingDetailsListener {
    void onAlternativeBillingOnlyTokenResponse(@NonNull BillingResult billingResult, @Nullable AlternativeBillingOnlyReportingDetails alternativeBillingOnlyReportingDetails);
}
