package com.android.billingclient.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

@zzl
public final class BillingConfig {
    private final String countryCode;

    private BillingConfig(@Nullable String str, String str2) {
        this.countryCode = str2;
    }

    public static BillingConfig forCountryCode(String str) {
        return new BillingConfig(null, str);
    }

    @NonNull
    public String getCountryCode() {
        return this.countryCode;
    }

    public BillingConfig(String str) throws JSONException {
        this.countryCode = new JSONObject(str).optString("countryCode");
    }
}
