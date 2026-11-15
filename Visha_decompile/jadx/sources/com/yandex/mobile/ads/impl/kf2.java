package com.yandex.mobile.ads.impl;

public final class kf2 implements nu {
    private nu a;

    public final void a(lf2 lf2Var) {
        this.a = lf2Var;
    }

    @Override
    public final void onVideoCompleted() {
        nu nuVar = this.a;
        if (nuVar != null) {
            nuVar.onVideoCompleted();
        }
    }

    @Override
    public final void onVideoError() {
        nu nuVar = this.a;
        if (nuVar != null) {
            nuVar.onVideoError();
        }
    }

    @Override
    public final void onVideoPaused() {
        nu nuVar = this.a;
        if (nuVar != null) {
            nuVar.onVideoPaused();
        }
    }

    @Override
    public final void onVideoPrepared() {
        nu nuVar = this.a;
        if (nuVar != null) {
            nuVar.onVideoPrepared();
        }
    }

    @Override
    public final void onVideoResumed() {
        nu nuVar = this.a;
        if (nuVar != null) {
            nuVar.onVideoResumed();
        }
    }
}
