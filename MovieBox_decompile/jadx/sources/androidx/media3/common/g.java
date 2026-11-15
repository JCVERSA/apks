package androidx.media3.common;

import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.List;

public abstract class g implements a0 {

    protected final e0.c f9664a = new e0.c();

    protected g() {
    }

    private int b0() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void c0(int i10) {
        e0(-1, C.TIME_UNSET, i10, false);
    }

    private void d0(int i10) {
        e0(u(), C.TIME_UNSET, i10, true);
    }

    private void f0(long j10, int i10) {
        e0(u(), j10, i10, false);
    }

    private void g0(int i10, int i11) {
        e0(i10, C.TIME_UNSET, i11, false);
    }

    private void h0(int i10) {
        int iZ = Z();
        if (iZ == -1) {
            c0(i10);
        } else if (iZ == u()) {
            d0(i10);
        } else {
            g0(iZ, i10);
        }
    }

    private void i0(long j10, int i10) {
        long currentPosition = getCurrentPosition() + j10;
        long duration = getDuration();
        if (duration != C.TIME_UNSET) {
            currentPosition = Math.min(currentPosition, duration);
        }
        f0(Math.max(currentPosition, 0L), i10);
    }

    private void j0(int i10) {
        int iA0 = a0();
        if (iA0 == -1) {
            c0(i10);
        } else if (iA0 == u()) {
            d0(i10);
        } else {
            g0(iA0, i10);
        }
    }

    @Override
    public final boolean A() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(u(), this.f9664a).f();
    }

    @Override
    public final void C() {
        H(0, Integer.MAX_VALUE);
    }

    @Override
    public final void F(int i10) {
        H(i10, i10 + 1);
    }

    @Override
    public final int G() {
        return getCurrentTimeline().p();
    }

    @Override
    public final void I(t tVar) {
        k0(ImmutableList.of(tVar));
    }

    @Override
    public final void K(t tVar) {
        Y(ImmutableList.of(tVar));
    }

    @Override
    public final void N(int i10, t tVar) {
        S(i10, ImmutableList.of(tVar));
    }

    @Override
    public final t O(int i10) {
        return getCurrentTimeline().n(i10, this.f9664a).f9641c;
    }

    public final void P(int i10, t tVar) {
        E(i10, i10 + 1, ImmutableList.of(tVar));
    }

    @Override
    public final long Q() {
        e0 currentTimeline = getCurrentTimeline();
        return currentTimeline.q() ? C.TIME_UNSET : currentTimeline.n(u(), this.f9664a).d();
    }

    public final void Y(List list) {
        S(Integer.MAX_VALUE, list);
    }

    public final int Z() {
        e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.e(u(), b0(), getShuffleModeEnabled());
    }

    @Override
    public final void a(float f10) {
        b(getPlaybackParameters().b(f10));
    }

    public final int a0() {
        e0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.l(u(), b0(), getShuffleModeEnabled());
    }

    protected abstract void e0(int i10, long j10, int i11, boolean z10);

    @Override
    public final void f() {
        if (getCurrentTimeline().q() || isPlayingAd()) {
            c0(7);
            return;
        }
        boolean zR = r();
        if (A() && !t()) {
            if (zR) {
                j0(7);
                return;
            } else {
                c0(7);
                return;
            }
        }
        if (!zR || getCurrentPosition() > p()) {
            f0(0L, 7);
        } else {
            j0(7);
        }
    }

    @Override
    public final boolean g() {
        return Z() != -1;
    }

    @Override
    public final boolean i(int i10) {
        return o().b(i10);
    }

    @Override
    public final boolean isPlaying() {
        return getPlaybackState() == 3 && getPlayWhenReady() && k() == 0;
    }

    @Override
    public final boolean j() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(u(), this.f9664a).f9647i;
    }

    public final void k0(List list) {
        e(list, true);
    }

    @Override
    public final void n() {
        if (getCurrentTimeline().q() || isPlayingAd()) {
            c0(9);
            return;
        }
        if (g()) {
            h0(9);
        } else if (A() && j()) {
            g0(u(), 9);
        } else {
            c0(9);
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
        return a0() != -1;
    }

    @Override
    public final void seekTo(long j10) {
        f0(j10, 5);
    }

    @Override
    public final void seekToDefaultPosition() {
        g0(u(), 4);
    }

    @Override
    public final boolean t() {
        e0 currentTimeline = getCurrentTimeline();
        return !currentTimeline.q() && currentTimeline.n(u(), this.f9664a).f9646h;
    }

    @Override
    public final void w() {
        i0(s(), 12);
    }

    @Override
    public final void x() {
        i0(-z(), 11);
    }

    @Override
    public final void seekTo(int i10, long j10) {
        e0(i10, j10, 10, false);
    }
}
