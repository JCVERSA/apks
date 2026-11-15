package com.google.android.exoplayer2;

import androidx.media3.common.C;
import java.util.Collections;
import java.util.List;

public abstract class c implements t {
    public final a0.d a = new a0.d();

    @Override
    public final void c(n nVar) {
        h(Collections.singletonList(nVar));
    }

    public final int e() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(getCurrentMediaItemIndex(), g(), getShuffleModeEnabled());
    }

    public final int f() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(getCurrentMediaItemIndex(), g(), getShuffleModeEnabled());
    }

    public final int g() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    @Override
    public final long getContentDuration() {
        a0 currentTimeline = getCurrentTimeline();
        return currentTimeline.u() ? C.TIME_UNSET : currentTimeline.r(getCurrentMediaItemIndex(), this.a).g();
    }

    public final void h(List list) {
        setMediaItems(list, true);
    }

    @Override
    public final boolean hasNextMediaItem() {
        return e() != -1;
    }

    @Override
    public final boolean hasPreviousMediaItem() {
        return f() != -1;
    }

    @Override
    public final boolean isCurrentMediaItemDynamic() {
        a0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(getCurrentMediaItemIndex(), this.a).j;
    }

    @Override
    public final boolean isCurrentMediaItemLive() {
        a0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(getCurrentMediaItemIndex(), this.a).i();
    }

    @Override
    public final boolean isCurrentMediaItemSeekable() {
        a0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(getCurrentMediaItemIndex(), this.a).i;
    }

    @Override
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && getPlaybackSuppressionReason() == 0;
    }

    @Override
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override
    public final void seekTo(long j) {
        seekTo(getCurrentMediaItemIndex(), j);
    }
}
