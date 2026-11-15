package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@zze
public final class BillingChoiceInfo {
    private final String playBillingChoiceImageUrl;

    @Nullable
    private final String playBillingLoyaltyInfo;

    public BillingChoiceInfo(String str, @Nullable String str2) {
        this.playBillingChoiceImageUrl = str;
        this.playBillingLoyaltyInfo = str2;
    }

    @NonNull
    public String getPlayBillingChoiceImageUrl() {
        return this.playBillingChoiceImageUrl;
    }

    @Nullable
    public String getPlayBillingLoyaltyInfo() {
        return this.playBillingLoyaltyInfo;
    }
}
