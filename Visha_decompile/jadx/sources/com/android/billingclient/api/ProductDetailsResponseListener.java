package com.android.billingclient.api;

import androidx.annotation.NonNull;

public interface ProductDetailsResponseListener {
    void onProductDetailsResponse(@NonNull BillingResult billingResult, @NonNull QueryProductDetailsResult queryProductDetailsResult);
}
