package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.nativeads.NativeAdMedia;
import defpackage.y45;

public final class vm2 implements NativeAdMedia {
    private final xt a;

    public vm2(xt xtVar) {
        y45.j(xtVar, "media");
        this.a = xtVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof vm2) && y45.e(this.a, ((vm2) obj).a);
    }

    @Override
    public final float getAspectRatio() {
        return this.a.a();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexNativeAdMediaAdapter(media=" + this.a + ")";
    }
}
