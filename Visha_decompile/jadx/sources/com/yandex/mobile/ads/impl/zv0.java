package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.annotation.LayoutRes;
import com.monetization.ads.nativeads.video.view.CorePlaybackControlsContainer;
import defpackage.y45;

public final class zv0 {
    private final yv0 a;
    private final gt1<CorePlaybackControlsContainer> b;

    public zv0() {
        this(new yv0(), new gt1());
    }

    public final aw0 a(Context context, @LayoutRes int i, aw0 aw0Var) {
        y45.j(context, "context");
        y45.j(aw0Var, "customControls");
        this.a.getClass();
        y45.j(aw0Var, "controls");
        if (aw0Var.getMuteControl() != null || aw0Var.getVideoProgress() != null || aw0Var.getCountDownProgress() != null) {
            return new nv(aw0Var.getMuteControl(), aw0Var.getVideoProgress(), aw0Var.getCountDownProgress());
        }
        this.b.getClass();
        return (aw0) gt1.a(context, CorePlaybackControlsContainer.class, i, null);
    }

    public zv0(yv0 yv0Var, gt1<CorePlaybackControlsContainer> gt1Var) {
        y45.j(yv0Var, "controlsAvailabilityChecker");
        y45.j(gt1Var, "safeLayoutInflater");
        this.a = yv0Var;
        this.b = gt1Var;
    }
}
