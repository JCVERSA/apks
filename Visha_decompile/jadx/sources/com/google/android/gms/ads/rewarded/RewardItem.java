package com.google.android.gms.ads.rewarded;

import androidx.annotation.NonNull;
import defpackage.q5e;

public interface RewardItem {

    @NonNull
    public static final RewardItem DEFAULT_REWARD = new q5e();

    int getAmount();

    @NonNull
    String getType();
}
