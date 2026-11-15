package com.google.android.gms.ads;

import androidx.annotation.NonNull;

public abstract class AdLoadCallback<AdT> {
    public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
    }

    public void onAdLoaded(@NonNull AdT adt) {
    }
}
