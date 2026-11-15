package com.google.android.exoplayer2;

final class o implements com.google.android.exoplayer2.util.u {

    private final com.google.android.exoplayer2.util.h0 f24835a;

    private final a f24836b;

    private y2 f24837c;

    private com.google.android.exoplayer2.util.u f24838d;

    private boolean f24839e = true;

    private boolean f24840f;

    public interface a {
        void onPlaybackParametersChanged(o2 o2Var);
    }

    public o(a aVar, com.google.android.exoplayer2.util.e eVar) {
        this.f24836b = aVar;
        this.f24835a = new com.google.android.exoplayer2.util.h0(eVar);
    }

    private boolean e(boolean z10) {
        y2 y2Var = this.f24837c;
        return y2Var == null || y2Var.isEnded() || (!this.f24837c.isReady() && (z10 || this.f24837c.hasReadStreamToEnd()));
    }

    private void i(boolean z10) {
        if (e(z10)) {
            this.f24839e = true;
            if (this.f24840f) {
                this.f24835a.c();
                return;
            }
            return;
        }
        com.google.android.exoplayer2.util.u uVar = (com.google.android.exoplayer2.util.u) com.google.android.exoplayer2.util.a.e(this.f24838d);
        long positionUs = uVar.getPositionUs();
        if (this.f24839e) {
            if (positionUs < this.f24835a.getPositionUs()) {
                this.f24835a.d();
                return;
            } else {
                this.f24839e = false;
                if (this.f24840f) {
                    this.f24835a.c();
                }
            }
        }
        this.f24835a.a(positionUs);
        o2 playbackParameters = uVar.getPlaybackParameters();
        if (playbackParameters.equals(this.f24835a.getPlaybackParameters())) {
            return;
        }
        this.f24835a.b(playbackParameters);
        this.f24836b.onPlaybackParametersChanged(playbackParameters);
    }

    public void a(y2 y2Var) {
        if (y2Var == this.f24837c) {
            this.f24838d = null;
            this.f24837c = null;
            this.f24839e = true;
        }
    }

    @Override
    public void b(o2 o2Var) {
        com.google.android.exoplayer2.util.u uVar = this.f24838d;
        if (uVar != null) {
            uVar.b(o2Var);
            o2Var = this.f24838d.getPlaybackParameters();
        }
        this.f24835a.b(o2Var);
    }

    public void c(y2 y2Var) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.u uVar;
        com.google.android.exoplayer2.util.u mediaClock = y2Var.getMediaClock();
        if (mediaClock == null || mediaClock == (uVar = this.f24838d)) {
            return;
        }
        if (uVar != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.f24838d = mediaClock;
        this.f24837c = y2Var;
        mediaClock.b(this.f24835a.getPlaybackParameters());
    }

    public void d(long j10) {
        this.f24835a.a(j10);
    }

    public void f() {
        this.f24840f = true;
        this.f24835a.c();
    }

    public void g() {
        this.f24840f = false;
        this.f24835a.d();
    }

    @Override
    public o2 getPlaybackParameters() {
        com.google.android.exoplayer2.util.u uVar = this.f24838d;
        return uVar != null ? uVar.getPlaybackParameters() : this.f24835a.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        return this.f24839e ? this.f24835a.getPositionUs() : ((com.google.android.exoplayer2.util.u) com.google.android.exoplayer2.util.a.e(this.f24838d)).getPositionUs();
    }

    public long h(boolean z10) {
        i(z10);
        return getPositionUs();
    }
}
