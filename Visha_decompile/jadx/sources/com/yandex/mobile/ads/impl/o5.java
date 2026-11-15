package com.yandex.mobile.ads.impl;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.exoplayer.source.ads.AdsLoader;
import defpackage.y45;

public final class o5 {
    private AdsLoader.EventListener a;
    private AdPlaybackState b;

    public o5(AdsLoader.EventListener eventListener) {
        this.a = eventListener;
        AdPlaybackState adPlaybackState = AdPlaybackState.NONE;
        y45.i(adPlaybackState, "NONE");
        this.b = adPlaybackState;
    }

    public final AdPlaybackState a() {
        return this.b;
    }

    public final void b() {
        this.a = null;
        AdPlaybackState adPlaybackState = AdPlaybackState.NONE;
        y45.i(adPlaybackState, "NONE");
        this.b = adPlaybackState;
    }

    public final void a(AdsLoader.EventListener eventListener) {
        this.a = eventListener;
    }

    public final void a(AdPlaybackState adPlaybackState) {
        y45.j(adPlaybackState, "adPlaybackState");
        this.b = adPlaybackState;
        AdsLoader.EventListener eventListener = this.a;
        if (eventListener != null) {
            eventListener.onAdPlaybackState(adPlaybackState);
        }
    }
}
