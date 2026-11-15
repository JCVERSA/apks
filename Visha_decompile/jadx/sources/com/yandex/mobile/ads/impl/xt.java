package com.yandex.mobile.ads.impl;

public final class xt {
    private final float a;

    public xt(float f) {
        this.a = f;
    }

    public final float a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xt) && Float.compare(this.a, ((xt) obj).a) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.a);
    }

    public final String toString() {
        return "CoreNativeAdMedia(aspectRatio=" + this.a + ")";
    }
}
