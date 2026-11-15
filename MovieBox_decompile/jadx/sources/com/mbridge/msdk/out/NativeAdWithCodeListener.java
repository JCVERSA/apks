package com.mbridge.msdk.out;

public abstract class NativeAdWithCodeListener implements NativeListener.NativeAdListener {
    @Override
    public void onAdLoadError(String str) {
        onAdLoadErrorWithCode(com.mbridge.msdk.util.a.a(1000, str), str);
    }

    public abstract void onAdLoadErrorWithCode(int i10, String str);
}
