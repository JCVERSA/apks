package com.google.android.exoplayer2;

import defpackage.bw9;
import defpackage.ey0;
import defpackage.nd6;
import defpackage.zi;

public final class g implements nd6 {
    public final bw9 b;
    public final a c;
    public w d;
    public nd6 e;
    public boolean f = true;
    public boolean g;

    public interface a {
        void onPlaybackParametersChanged(s sVar);
    }

    public g(a aVar, ey0 ey0Var) {
        this.c = aVar;
        this.b = new bw9(ey0Var);
    }

    public void a(w wVar) {
        if (wVar == this.d) {
            this.e = null;
            this.d = null;
            this.f = true;
        }
    }

    @Override
    public void b(s sVar) {
        nd6 nd6Var = this.e;
        if (nd6Var != null) {
            nd6Var.b(sVar);
            sVar = this.e.getPlaybackParameters();
        }
        this.b.b(sVar);
    }

    public void c(w wVar) throws ExoPlaybackException {
        nd6 nd6Var;
        nd6 mediaClock = wVar.getMediaClock();
        if (mediaClock == null || mediaClock == (nd6Var = this.e)) {
            return;
        }
        if (nd6Var != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
        this.e = mediaClock;
        this.d = wVar;
        mediaClock.b(this.b.getPlaybackParameters());
    }

    public void d(long j) {
        this.b.a(j);
    }

    public final boolean e(boolean z) {
        w wVar = this.d;
        return wVar == null || wVar.isEnded() || (!this.d.isReady() && (z || this.d.hasReadStreamToEnd()));
    }

    public void f() {
        this.g = true;
        this.b.c();
    }

    public void g() {
        this.g = false;
        this.b.d();
    }

    @Override
    public s getPlaybackParameters() {
        nd6 nd6Var = this.e;
        return nd6Var != null ? nd6Var.getPlaybackParameters() : this.b.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        return this.f ? this.b.getPositionUs() : ((nd6) zi.e(this.e)).getPositionUs();
    }

    public long h(boolean z) {
        i(z);
        return getPositionUs();
    }

    public final void i(boolean z) {
        if (e(z)) {
            this.f = true;
            if (this.g) {
                this.b.c();
                return;
            }
            return;
        }
        nd6 nd6Var = (nd6) zi.e(this.e);
        long positionUs = nd6Var.getPositionUs();
        if (this.f) {
            if (positionUs < this.b.getPositionUs()) {
                this.b.d();
                return;
            } else {
                this.f = false;
                if (this.g) {
                    this.b.c();
                }
            }
        }
        this.b.a(positionUs);
        s playbackParameters = nd6Var.getPlaybackParameters();
        if (playbackParameters.equals(this.b.getPlaybackParameters())) {
            return;
        }
        this.b.b(playbackParameters);
        this.c.onPlaybackParametersChanged(playbackParameters);
    }
}
