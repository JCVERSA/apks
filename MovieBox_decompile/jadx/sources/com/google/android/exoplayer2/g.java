package com.google.android.exoplayer2;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.List;

public abstract class g implements p2 {

    protected final l3.d f24447a = new l3.d();

    protected g() {
    }

    private int I() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void M(long j10) {
        long currentPosition = getCurrentPosition() + j10;
        long duration = getDuration();
        if (duration != C.TIME_UNSET) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(Math.max(currentPosition, 0L));
    }

    @Override
    public final boolean A() {
        l3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(u(), this.f24447a).i();
    }

    @Override
    public final void C(w1 w1Var) {
        O(Collections.singletonList(w1Var));
    }

    public final long F() {
        l3 currentTimeline = getCurrentTimeline();
        return currentTimeline.u() ? C.TIME_UNSET : currentTimeline.r(u(), this.f24447a).g();
    }

    public final int G() {
        l3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(u(), I(), getShuffleModeEnabled());
    }

    public final int H() {
        l3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(u(), I(), getShuffleModeEnabled());
    }

    public final void J() {
        K(u());
    }

    public final void K(int i10) {
        seekTo(i10, C.TIME_UNSET);
    }

    public final void L() {
        int iG = G();
        if (iG != -1) {
            K(iG);
        }
    }

    public final void N() {
        int iH = H();
        if (iH != -1) {
            K(iH);
        }
    }

    public final void O(List list) {
        e(list, true);
    }

    @Override
    public final void f() {
        if (getCurrentTimeline().u() || isPlayingAd()) {
            return;
        }
        boolean zR = r();
        if (A() && !t()) {
            if (zR) {
                N();
            }
        } else if (!zR || getCurrentPosition() > p()) {
            seekTo(0L);
        } else {
            N();
        }
    }

    @Override
    public final boolean g() {
        return G() != -1;
    }

    @Override
    public final boolean i(int i10) {
        return o().c(i10);
    }

    @Override
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && k() == 0;
    }

    @Override
    public final boolean j() {
        l3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(u(), this.f24447a).f24546i;
    }

    @Override
    public final void n() {
        if (getCurrentTimeline().u() || isPlayingAd()) {
            return;
        }
        if (g()) {
            L();
        } else if (A() && j()) {
            J();
        }
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
    public final boolean r() {
        return H() != -1;
    }

    @Override
    public final void seekTo(long j10) {
        seekTo(u(), j10);
    }

    @Override
    public final boolean t() {
        l3 currentTimeline = getCurrentTimeline();
        return !currentTimeline.u() && currentTimeline.r(u(), this.f24447a).f24545h;
    }

    @Override
    public final void w() {
        M(s());
    }

    @Override
    public final void x() {
        M(-z());
    }
}
