package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zzf
public interface BillingProgramReportingDetailsListener {
    void onCreateBillingProgramReportingDetailsResponse(@NonNull BillingResult billingResult, @Nullable BillingProgramReportingDetails billingProgramReportingDetails);
}
