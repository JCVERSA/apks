package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import com.yandex.mobile.ads.nativeads.NativeAdImage;
import defpackage.y45;

public final class sm2 implements NativeAdImage {
    private final tt a;

    public sm2(tt ttVar) {
        y45.j(ttVar, "image");
        this.a = ttVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sm2) && y45.e(this.a, ((sm2) obj).a);
    }

    @Override
    public final Bitmap getBitmap() {
        return this.a.a();
    }

    @Override
    public final int getHeight() {
        return this.a.b();
    }

    @Override
    public final int getWidth() {
        return this.a.d();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "YandexNativeAdImageAdapter(image=" + this.a + ")";
    }
}
