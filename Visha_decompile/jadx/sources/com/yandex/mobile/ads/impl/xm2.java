package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xm2 implements com.yandex.mobile.ads.nativeads.video.b {
    private final yt a;

    public xm2(yt ytVar) {
        y45.j(ytVar, "nativeAdVideoController");
        this.a = ytVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof xm2) && y45.e(this.a, ((xm2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override
    public final void pauseAd() {
        this.a.a();
    }

    @Override
    public final void resumeAd() {
        this.a.b();
    }

    public final String toString() {
        return "YandexNativeAdVideoControllerAdapter(nativeAdVideoController=" + this.a + ")";
    }
}
