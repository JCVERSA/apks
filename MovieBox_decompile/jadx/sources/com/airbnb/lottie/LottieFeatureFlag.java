package com.airbnb.lottie;

public enum LottieFeatureFlag {
    MergePathsApi19(19);

    public final int minRequiredSdkVersion;

    LottieFeatureFlag(int i10) {
        this.minRequiredSdkVersion = i10;
    }
}
