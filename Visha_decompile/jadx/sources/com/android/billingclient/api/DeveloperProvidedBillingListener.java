package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzk
public interface DeveloperProvidedBillingListener {
    void onUserSelectedDeveloperBilling(@NonNull DeveloperProvidedBillingDetails developerProvidedBillingDetails);
}
