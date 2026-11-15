package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.video.playback.model.AdPodInfo;
import defpackage.y45;

public final class kl2 implements AdPodInfo {
    private final zc2 a;

    public kl2(zc2 zc2Var) {
        y45.j(zc2Var, "adPodInfo");
        this.a = zc2Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kl2) && y45.e(this.a, ((kl2) obj).a);
    }

    @Override
    public final int getAdPosition() {
        return this.a.a();
    }

    @Override
    public final int getAdsCount() {
        return this.a.b();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexAdPodInfo(adPodInfo=" + this.a + ")";
    }
}
