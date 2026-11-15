package androidx.media3.exoplayer;

import androidx.media3.decoder.DecoderInputBuffer;
import java.util.Objects;

public abstract class i implements w3, y3 {

    private final int f11697b;

    private z3 f11699d;

    private int f11700e;

    private x1.f4 f11701f;

    private androidx.media3.common.util.i f11702g;

    private int f11703h;

    private f2.u f11704i;

    private androidx.media3.common.r[] f11705j;

    private long f11706k;

    private long f11707l;

    private boolean f11709n;

    private boolean f11710o;

    private y3.a f11712q;

    private final Object f11696a = new Object();

    private final s2 f11698c = new s2();

    private long f11708m = Long.MIN_VALUE;

    private androidx.media3.common.e0 f11711p = androidx.media3.common.e0.f9613a;

    public i(int i10) {
        this.f11697b = i10;
    }

    private void O(long j10, boolean z10) {
        this.f11709n = false;
        this.f11707l = j10;
        this.f11708m = j10;
        F(j10, z10);
    }

    protected final androidx.media3.common.e0 A() {
        return this.f11711p;
    }

    protected final boolean B() {
        return hasReadStreamToEnd() ? this.f11709n : ((f2.u) androidx.media3.common.util.a.e(this.f11704i)).isReady();
    }

    protected abstract void C();

    protected abstract void F(long j10, boolean z10);

    protected final void H() {
        y3.a aVar;
        synchronized (this.f11696a) {
            aVar = this.f11712q;
        }
        if (aVar != null) {
            aVar.b(this);
        }
    }

    protected final int N(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int iC = ((f2.u) androidx.media3.common.util.a.e(this.f11704i)).c(s2Var, decoderInputBuffer, i10);
        if (iC == -4) {
            if (decoderInputBuffer.isEndOfStream()) {
                this.f11708m = Long.MIN_VALUE;
                return this.f11709n ? -4 : -3;
            }
            long j10 = decoderInputBuffer.f10608e + this.f11706k;
            decoderInputBuffer.f10608e = j10;
            this.f11708m = Math.max(this.f11708m, j10);
        } else if (iC == -5) {
            androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(s2Var.f12258b);
            if (rVar.f9854t != Long.MAX_VALUE) {
                s2Var.f12258b = rVar.b().y0(rVar.f9854t + this.f11706k).N();
            }
        }
        return iC;
    }

    protected int P(long j10) {
        return ((f2.u) androidx.media3.common.util.a.e(this.f11704i)).skipData(j10 - this.f11706k);
    }

    @Override
    public void c() {
        v3.a(this);
    }

    @Override
    public void d(float f10, float f11) {
        v3.c(this, f10, f11);
    }

    @Override
    public final void disable() {
        androidx.media3.common.util.a.g(this.f11703h == 1);
        this.f11698c.a();
        this.f11703h = 0;
        this.f11704i = null;
        this.f11705j = null;
        this.f11709n = false;
        C();
    }

    @Override
    public final long e() {
        return this.f11708m;
    }

    @Override
    public final void f() {
        synchronized (this.f11696a) {
            this.f11712q = null;
        }
    }

    @Override
    public final void g(z3 z3Var, androidx.media3.common.r[] rVarArr, f2.u uVar, long j10, boolean z10, boolean z11, long j11, long j12, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.g(this.f11703h == 0);
        this.f11699d = z3Var;
        this.f11703h = 1;
        D(z10, z11);
        l(rVarArr, uVar, j11, j12, bVar);
        O(j11, z10);
    }

    @Override
    public x2 getMediaClock() {
        return null;
    }

    @Override
    public final int getState() {
        return this.f11703h;
    }

    @Override
    public final f2.u getStream() {
        return this.f11704i;
    }

    @Override
    public final int getTrackType() {
        return this.f11697b;
    }

    @Override
    public final boolean hasReadStreamToEnd() {
        return this.f11708m == Long.MIN_VALUE;
    }

    @Override
    public final void i(int i10, x1.f4 f4Var, androidx.media3.common.util.i iVar) {
        this.f11700e = i10;
        this.f11701f = f4Var;
        this.f11702g = iVar;
        E();
    }

    @Override
    public final boolean isCurrentStreamFinal() {
        return this.f11709n;
    }

    @Override
    public final void l(androidx.media3.common.r[] rVarArr, f2.u uVar, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
        androidx.media3.common.util.a.g(!this.f11709n);
        this.f11704i = uVar;
        if (this.f11708m == Long.MIN_VALUE) {
            this.f11708m = j10;
        }
        this.f11705j = rVarArr;
        this.f11706k = j11;
        L(rVarArr, j10, j11, bVar);
    }

    @Override
    public long m(long j10, long j11) {
        return v3.b(this, j10, j11);
    }

    @Override
    public final void maybeThrowStreamError() {
        ((f2.u) androidx.media3.common.util.a.e(this.f11704i)).maybeThrowError();
    }

    @Override
    public final void n(androidx.media3.common.e0 e0Var) {
        if (Objects.equals(this.f11711p, e0Var)) {
            return;
        }
        this.f11711p = e0Var;
        M(e0Var);
    }

    @Override
    public final void o(y3.a aVar) {
        synchronized (this.f11696a) {
            this.f11712q = aVar;
        }
    }

    protected final ExoPlaybackException q(Throwable th2, androidx.media3.common.r rVar, int i10) {
        return r(th2, rVar, false, i10);
    }

    protected final ExoPlaybackException r(Throwable th2, androidx.media3.common.r rVar, boolean z10, int i10) {
        int i11;
        if (rVar == null || this.f11710o) {
            i11 = 4;
        } else {
            this.f11710o = true;
            try {
                i11 = x3.i(a(rVar));
                this.f11710o = false;
            } catch (ExoPlaybackException unused) {
                this.f11710o = false;
                i11 = 4;
            } catch (Throwable th3) {
                this.f11710o = false;
                throw th3;
            }
        }
        return ExoPlaybackException.createForRenderer(th2, getName(), v(), rVar, i11, z10, i10);
    }

    @Override
    public final void release() {
        androidx.media3.common.util.a.g(this.f11703h == 0);
        G();
    }

    @Override
    public final void reset() {
        androidx.media3.common.util.a.g(this.f11703h == 0);
        this.f11698c.a();
        I();
    }

    @Override
    public final void resetPosition(long j10) {
        O(j10, false);
    }

    protected final androidx.media3.common.util.i s() {
        return (androidx.media3.common.util.i) androidx.media3.common.util.a.e(this.f11702g);
    }

    @Override
    public final void setCurrentStreamFinal() {
        this.f11709n = true;
    }

    @Override
    public final void start() {
        androidx.media3.common.util.a.g(this.f11703h == 1);
        this.f11703h = 2;
        J();
    }

    @Override
    public final void stop() {
        androidx.media3.common.util.a.g(this.f11703h == 2);
        this.f11703h = 1;
        K();
    }

    @Override
    public int supportsMixedMimeTypeAdaptation() {
        return 0;
    }

    protected final z3 t() {
        return (z3) androidx.media3.common.util.a.e(this.f11699d);
    }

    protected final s2 u() {
        this.f11698c.a();
        return this.f11698c;
    }

    protected final int v() {
        return this.f11700e;
    }

    protected final long w() {
        return this.f11707l;
    }

    protected final x1.f4 x() {
        return (x1.f4) androidx.media3.common.util.a.e(this.f11701f);
    }

    protected final androidx.media3.common.r[] y() {
        return (androidx.media3.common.r[]) androidx.media3.common.util.a.e(this.f11705j);
    }

    protected final long z() {
        return this.f11706k;
    }

    protected void E() {
    }

    protected void G() {
    }

    protected void I() {
    }

    protected void J() {
    }

    protected void K() {
    }

    @Override
    public final y3 getCapabilities() {
        return this;
    }

    protected void M(androidx.media3.common.e0 e0Var) {
    }

    protected void D(boolean z10, boolean z11) {
    }

    @Override
    public void handleMessage(int i10, Object obj) {
    }

    protected void L(androidx.media3.common.r[] rVarArr, long j10, long j11, androidx.media3.exoplayer.source.r.b bVar) {
    }
}
