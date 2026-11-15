package com.airbnb.lottie;

import android.os.Build;
import java.util.HashSet;

class k0 {

    private final HashSet f17142a = new HashSet();

    k0() {
    }

    public boolean a(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        if (!z10) {
            return this.f17142a.remove(lottieFeatureFlag);
        }
        if (Build.VERSION.SDK_INT >= lottieFeatureFlag.minRequiredSdkVersion) {
            return this.f17142a.add(lottieFeatureFlag);
        }
        x4.f.c(String.format("%s is not supported pre SDK %d", lottieFeatureFlag.name(), Integer.valueOf(lottieFeatureFlag.minRequiredSdkVersion)));
        return false;
    }

    public boolean b(LottieFeatureFlag lottieFeatureFlag) {
        return this.f17142a.contains(lottieFeatureFlag);
    }
}
