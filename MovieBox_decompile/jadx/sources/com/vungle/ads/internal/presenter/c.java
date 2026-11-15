package com.vungle.ads.internal.presenter;

import com.vungle.ads.VungleError;
import kotlin.jvm.internal.Intrinsics;

public class c implements b {
    private final b adPlayCallback;

    public c(b adPlayCallback) {
        Intrinsics.h(adPlayCallback, "adPlayCallback");
        this.adPlayCallback = adPlayCallback;
    }

    @Override
    public void onAdClick(String str) {
        this.adPlayCallback.onAdClick(str);
    }

    @Override
    public void onAdEnd(String str) {
        this.adPlayCallback.onAdEnd(str);
    }

    @Override
    public void onAdImpression(String str) {
        this.adPlayCallback.onAdImpression(str);
    }

    @Override
    public void onAdLeftApplication(String str) {
        this.adPlayCallback.onAdLeftApplication(str);
    }

    @Override
    public void onAdRewarded(String str) {
        this.adPlayCallback.onAdRewarded(str);
    }

    @Override
    public void onAdStart(String str) {
        this.adPlayCallback.onAdStart(str);
    }

    @Override
    public void onFailure(VungleError error) {
        Intrinsics.h(error, "error");
        this.adPlayCallback.onFailure(error);
    }
}
