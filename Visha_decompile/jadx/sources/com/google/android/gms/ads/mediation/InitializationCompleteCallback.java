package com.google.android.gms.ads.mediation;

import androidx.annotation.NonNull;

public interface InitializationCompleteCallback {
    void onInitializationFailed(@NonNull String str);

    void onInitializationSucceeded();
}
