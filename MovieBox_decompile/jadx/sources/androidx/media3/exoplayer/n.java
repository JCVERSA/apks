package androidx.media3.exoplayer;

final class n implements x2 {

    private final d4 f11955a;

    private final a f11956b;

    private w3 f11957c;

    private x2 f11958d;

    private boolean f11959e = true;

    private boolean f11960f;

    public interface a {
        void onPlaybackParametersChanged(androidx.media3.common.z zVar);
    }

    public n(a aVar, androidx.media3.common.util.i iVar) {
        this.f11956b = aVar;
        this.f11955a = new d4(iVar);
    }

    private boolean e(boolean z10) {
        w3 w3Var = this.f11957c;
        return w3Var == null || w3Var.isEnded() || (z10 && this.f11957c.getState() != 2) || (!this.f11957c.isReady() && (z10 || this.f11957c.hasReadStreamToEnd()));
    }

    private void j(boolean z10) {
        if (e(z10)) {
            this.f11959e = true;
            if (this.f11960f) {
                this.f11955a.c();
                return;
            }
            return;
        }
        x2 x2Var = (x2) androidx.media3.common.util.a.e(this.f11958d);
        long positionUs = x2Var.getPositionUs();
        if (this.f11959e) {
            if (positionUs < this.f11955a.getPositionUs()) {
                this.f11955a.d();
                return;
            } else {
                this.f11959e = false;
                if (this.f11960f) {
                    this.f11955a.c();
                }
            }
        }
        this.f11955a.a(positionUs);
        androidx.media3.common.z playbackParameters = x2Var.getPlaybackParameters();
        if (playbackParameters.equals(this.f11955a.getPlaybackParameters())) {
            return;
        }
        this.f11955a.b(playbackParameters);
        this.f11956b.onPlaybackParametersChanged(playbackParameters);
    }

    public void a(w3 w3Var) {
        if (w3Var == this.f11957c) {
            this.f11958d = null;
            this.f11957c = null;
            this.f11959e = true;
        }
    }

    @Override
    public void b(androidx.media3.common.z zVar) {
        x2 x2Var = this.f11958d;
        if (x2Var != null) {
            x2Var.b(zVar);
            zVar = this.f11958d.getPlaybackParameters();
        }
        this.f11955a.b(zVar);
    }

    public void c(w3 w3Var) throws ExoPlaybackException {
        x2 x2Var;
        x2 mediaClock = w3Var.getMediaClock();
        if (mediaClock == null || mediaClock == (x2Var = this.f11958d)) {
            return;
        }
        if (x2Var != null) {
            throw ExoPlaybackException.createForUnexpected(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f11958d = mediaClock;
        this.f11957c = w3Var;
        mediaClock.b(this.f11955a.getPlaybackParameters());
    }

    public void d(long j10) {
        this.f11955a.a(j10);
    }

    public void f() {
        this.f11960f = true;
        this.f11955a.c();
    }

    public void g() {
        this.f11960f = false;
        this.f11955a.d();
    }

    @Override
    public androidx.media3.common.z getPlaybackParameters() {
        x2 x2Var = this.f11958d;
        return x2Var != null ? x2Var.getPlaybackParameters() : this.f11955a.getPlaybackParameters();
    }

    @Override
    public long getPositionUs() {
        return this.f11959e ? this.f11955a.getPositionUs() : ((x2) androidx.media3.common.util.a.e(this.f11958d)).getPositionUs();
    }

    @Override
    public boolean h() {
        return this.f11959e ? this.f11955a.h() : ((x2) androidx.media3.common.util.a.e(this.f11958d)).h();
    }

    public long i(boolean z10) {
        j(z10);
        return getPositionUs();
    }
}
