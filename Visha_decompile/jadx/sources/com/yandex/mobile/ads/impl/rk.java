package com.yandex.mobile.ads.impl;

public abstract class rk implements hi1 {
    protected final i52.d a = new i52.d();

    public final boolean b() {
        r60 r60Var = (r60) this;
        return r60Var.getPlaybackState() == 3 && r60Var.getPlayWhenReady() && r60Var.getPlaybackSuppressionReason() == 0;
    }

    @Override
    public final boolean hasNextMediaItem() {
        r60 r60Var = (r60) this;
        i52 currentTimeline = r60Var.getCurrentTimeline();
        if (currentTimeline.c()) {
            return false;
        }
        int currentMediaItemIndex = r60Var.getCurrentMediaItemIndex();
        r60Var.d();
        r60Var.e();
        return currentTimeline.a(currentMediaItemIndex, 0, false) != -1;
    }

    @Override
    public final boolean hasPreviousMediaItem() {
        r60 r60Var = (r60) this;
        i52 currentTimeline = r60Var.getCurrentTimeline();
        if (currentTimeline.c()) {
            return false;
        }
        int currentMediaItemIndex = r60Var.getCurrentMediaItemIndex();
        r60Var.d();
        r60Var.e();
        return currentTimeline.b(currentMediaItemIndex, 0, false) != -1;
    }

    @Override
    public final boolean isCurrentMediaItemDynamic() {
        r60 r60Var = (r60) this;
        i52 currentTimeline = r60Var.getCurrentTimeline();
        return !currentTimeline.c() && currentTimeline.a(r60Var.getCurrentMediaItemIndex(), this.a, 0L).j;
    }

    @Override
    public final boolean isCurrentMediaItemLive() {
        r60 r60Var = (r60) this;
        i52 currentTimeline = r60Var.getCurrentTimeline();
        return !currentTimeline.c() && currentTimeline.a(r60Var.getCurrentMediaItemIndex(), this.a, 0L).a();
    }

    @Override
    public final boolean isCurrentMediaItemSeekable() {
        r60 r60Var = (r60) this;
        i52 currentTimeline = r60Var.getCurrentTimeline();
        return !currentTimeline.c() && currentTimeline.a(r60Var.getCurrentMediaItemIndex(), this.a, 0L).i;
    }
}
