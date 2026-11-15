package com.yandex.mobile.ads.instream;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.ao0;

@MainThread
final class CustomMobileInstreamAds {
    private CustomMobileInstreamAds() {
    }

    public static void setControlsEnabled(boolean z) {
        int i = ao0.g;
        ao0.a.a().b(z);
    }

    public static void setDiscardAdGroupOnSkip(boolean z) {
        int i = ao0.g;
        ao0.a.a().c(z);
    }
}
