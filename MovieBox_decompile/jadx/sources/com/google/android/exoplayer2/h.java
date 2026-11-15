package com.google.android.exoplayer2;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;

public abstract class h implements y2, a3 {

    private final int f24459a;

    private b3 f24461c;

    private int f24462d;

    private g9.u1 f24463e;

    private int f24464f;

    private v9.s f24465g;

    private p1[] f24466h;

    private long f24467i;

    private long f24468j;

    private boolean f24470l;

    private boolean f24471m;

    private final q1 f24460b = new q1();

    private long f24469k = Long.MIN_VALUE;

    public h(int i10) {
        this.f24459a = i10;
    }

    private void x(long j10, boolean z10) {
        this.f24470l = false;
        this.f24468j = j10;
        this.f24469k = j10;
        r(j10, z10);
    }

    @Override
    public final void c(b3 b3Var, p1[] p1VarArr, v9.s sVar, long j10, boolean z10, boolean z11, long j11, long j12) {
        com.google.android.exoplayer2.util.a.g(this.f24464f == 0);
        this.f24461c = b3Var;
        this.f24464f = 1;
        q(z10, z11);
        f(p1VarArr, sVar, j11, j12);
        x(j10, z10);
    }

    @Override
    public void d(float f10, float f11) {
        x2.a(this, f10, f11);
    }

    @Override
    public final void disable() {
        com.google.android.exoplayer2.util.a.g(this.f24464f == 1);
        this.f24460b.a();
        this.f24464f = 0;
        this.f24465g = null;
        this.f24466h = null;
        this.f24470l = false;
        p();
    }

    @Override
    public final long e() {
        return this.f24469k;
    }

    @Override
    public final void f(p1[] p1VarArr, v9.s sVar, long j10, long j11) {
        com.google.android.exoplayer2.util.a.g(!this.f24470l);
        this.f24465g = sVar;
        if (this.f24469k == Long.MIN_VALUE) {
            this.f24469k = j10;
        }
        this.f24466h = p1VarArr;
        this.f24467i = j11;
        v(p1VarArr, j10, j11);
    }

    protected final ExoPlaybackException g(Throwable th2, p1 p1Var, int i10) {
        return i(th2, p1Var, false, i10);
    }

    @Override
    public com.google.android.exoplayer2.util.u getMediaClock() {
        return null;
    }

    @Override
    public final int getState() {
        return this.f24464f;
    }

    @Override
    public final v9.s getStream() {
        return this.f24465g;
    }

    @Override
    public final int getTrackType() {
        return this.f24459a;
    }

    @Override
    public final void h(int i10, g9.u1 u1Var) {
        this.f24462d = i10;
        this.f24463e = u1Var;
    }

    @Override
    public final boolean hasReadStreamToEnd() {
        return this.f24469k == Long.MIN_VALUE;
    }

    protected final ExoPlaybackException i(Throwable th2, p1 p1Var, boolean z10, int i10) {
        int iF;
        if (p1Var == null || this.f24471m) {
            iF = 4;
        } else {
            this.f24471m = true;
            try {
                iF = z2.f(a(p1Var));
                this.f24471m = false;
            } catch (ExoPlaybackException unused) {
                this.f24471m = false;
                iF = 4;
            } catch (Throwable th3) {
                this.f24471m = false;
                throw th3;
            }
        }
        return ExoPlaybackException.createForRenderer(th2, getName(), l(), p1Var, iF, z10, i10);
    }

    @Override
    public final boolean isCurrentStreamFinal() {
        return this.f24470l;
    }

    protected final b3 j() {
        return (b3) com.google.android.exoplayer2.util.a.e(this.f24461c);
    }

    protected final q1 k() {
        this.f24460b.a();
        return this.f24460b;
    }

    protected final int l() {
        return this.f24462d;
    }

    protected final g9.u1 m() {
        return (g9.u1) com.google.android.exoplayer2.util.a.e(this.f24463e);
    }

    @Override
    public final void maybeThrowStreamError() {
        ((v9.s) com.google.android.exoplayer2.util.a.e(this.f24465g)).maybeThrowError();
    }

    protected final p1[] n() {
        return (p1[]) com.google.android.exoplayer2.util.a.e(this.f24466h);
    }

    protected final boolean o() {
        return hasReadStreamToEnd() ? this.f24470l : ((v9.s) com.google.android.exoplayer2.util.a.e(this.f24465g)).isReady();
    }

    protected abstract void p();

    protected abstract void r(long j10, boolean z10);

    @Override
    public final void reset() {
        com.google.android.exoplayer2.util.a.g(this.f24464f == 0);
        this.f24460b.a();
        s();
    }

    @Override
    public final void resetPosition(long j10) {
        x(j10, false);
    }

    @Override
    public final void setCurrentStreamFinal() {
        this.f24470l = true;
    }

    @Override
    public final void start() {
        com.google.android.exoplayer2.util.a.g(this.f24464f == 1);
        this.f24464f = 2;
        t();
    }

    @Override
    public final void stop() {
        com.google.android.exoplayer2.util.a.g(this.f24464f == 2);
        this.f24464f = 1;
        u();
    }

    @Override
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    protected abstract void v(p1[] p1VarArr, long j10, long j11);

    protected final int w(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int iA = ((v9.s) com.google.android.exoplayer2.util.a.e(this.f24465g)).a(q1Var, decoderInputBuffer, i10);
        if (iA == -4) {
            if (decoderInputBuffer.h()) {
                this.f24469k = Long.MIN_VALUE;
                return this.f24470l ? -4 : -3;
            }
            long j10 = decoderInputBuffer.f24204e + this.f24467i;
            decoderInputBuffer.f24204e = j10;
            this.f24469k = Math.max(this.f24469k, j10);
        } else if (iA == -5) {
            p1 p1Var = (p1) com.google.android.exoplayer2.util.a.e(q1Var.f24962b);
            if (p1Var.f24905p != Long.MAX_VALUE) {
                q1Var.f24962b = p1Var.b().i0(p1Var.f24905p + this.f24467i).E();
            }
        }
        return iA;
    }

    protected int y(long j10) {
        return ((v9.s) com.google.android.exoplayer2.util.a.e(this.f24465g)).skipData(j10 - this.f24467i);
    }

    @Override
    public final a3 getCapabilities() {
        return this;
    }

    protected void s() {
    }

    protected void t() {
    }

    protected void u() {
    }

    @Override
    public void handleMessage(int i10, Object obj) {
    }

    protected void q(boolean z10, boolean z11) {
    }
}
