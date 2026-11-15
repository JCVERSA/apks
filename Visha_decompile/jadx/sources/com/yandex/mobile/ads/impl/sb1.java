package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;
import defpackage.y45;

public final class sb1 {
    private final ov a;

    public sb1() {
        this(new ov());
    }

    public final yf2 a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "mediaView");
        this.a.getClass();
        y45.j(customizableMediaView, "mediaView");
        yf2 videoScaleType = customizableMediaView.getVideoScaleType();
        return videoScaleType == null ? yf2.b : videoScaleType;
    }

    public sb1(ov ovVar) {
        y45.j(ovVar, "customizableMediaViewManager");
        this.a = ovVar;
    }
}
