package com.google.android.exoplayer2.source;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.exoplayer2.l3;
import com.google.android.exoplayer2.upstream.k0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.w1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;

public final class ClippingMediaSource extends c {

    private final o f24990k;

    private final long f24991l;

    private final long f24992m;

    private final boolean f24993n;

    private final boolean f24994o;

    private final boolean f24995p;

    private final ArrayList f24996q;

    private final l3.d f24997r;

    private a f24998s;

    private IllegalClippingException f24999t;

    private long f25000u;

    private long f25001v;

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        public IllegalClippingException(int i10) {
            super("Illegal clipping: " + getReasonDescription(i10));
            this.reason = i10;
        }

        private static String getReasonDescription(int i10) {
            if (i10 == 0) {
                return "invalid period count";
            }
            if (i10 != 1) {
                return i10 != 2 ? TmcConstants.ROUTE_UNKNOWN : "start exceeds end";
            }
            return "not seekable to start";
        }
    }

    private static final class a extends j {

        private final long f25002d;

        private final long f25003e;

        private final long f25004f;

        private final boolean f25005g;

        public a(l3 l3Var, long j10, long j11) throws IllegalClippingException {
            super(l3Var);
            boolean z10 = false;
            if (l3Var.m() != 1) {
                throw new IllegalClippingException(0);
            }
            l3.d dVarR = l3Var.r(0, new l3.d());
            long jMax = Math.max(0L, j10);
            if (!dVarR.f24549l && jMax != 0 && !dVarR.f24545h) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j11 == Long.MIN_VALUE ? dVarR.f24551n : Math.max(0L, j11);
            long j12 = dVarR.f24551n;
            if (j12 != C.TIME_UNSET) {
                jMax2 = jMax2 > j12 ? j12 : jMax2;
                if (jMax > jMax2) {
                    throw new IllegalClippingException(2);
                }
            }
            this.f25002d = jMax;
            this.f25003e = jMax2;
            this.f25004f = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (dVarR.f24546i && (jMax2 == C.TIME_UNSET || (j12 != C.TIME_UNSET && jMax2 == j12))) {
                z10 = true;
            }
            this.f25005g = z10;
        }

        @Override
        public l3.b k(int i10, l3.b bVar, boolean z10) {
            this.f25555c.k(0, bVar, z10);
            long jQ = bVar.q() - this.f25002d;
            long j10 = this.f25004f;
            return bVar.v(bVar.f24523a, bVar.f24524b, 0, j10 == C.TIME_UNSET ? -9223372036854775807L : j10 - jQ, jQ);
        }

        @Override
        public l3.d s(int i10, l3.d dVar, long j10) {
            this.f25555c.s(0, dVar, 0L);
            long j11 = dVar.f24554q;
            long j12 = this.f25002d;
            dVar.f24554q = j11 + j12;
            dVar.f24551n = this.f25004f;
            dVar.f24546i = this.f25005g;
            long j13 = dVar.f24550m;
            if (j13 != C.TIME_UNSET) {
                long jMax = Math.max(j13, j12);
                dVar.f24550m = jMax;
                long j14 = this.f25003e;
                if (j14 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j14);
                }
                dVar.f24550m = jMax - this.f25002d;
            }
            long jE1 = p0.e1(this.f25002d);
            long j15 = dVar.f24542e;
            if (j15 != C.TIME_UNSET) {
                dVar.f24542e = j15 + jE1;
            }
            long j16 = dVar.f24543f;
            if (j16 != C.TIME_UNSET) {
                dVar.f24543f = j16 + jE1;
            }
            return dVar;
        }
    }

    public ClippingMediaSource(o oVar, long j10, long j11, boolean z10, boolean z11, boolean z12) {
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        this.f24990k = (o) com.google.android.exoplayer2.util.a.e(oVar);
        this.f24991l = j10;
        this.f24992m = j11;
        this.f24993n = z10;
        this.f24994o = z11;
        this.f24995p = z12;
        this.f24996q = new ArrayList();
        this.f24997r = new l3.d();
    }

    private void M(l3 l3Var) {
        long j10;
        long j11;
        l3Var.r(0, this.f24997r);
        long jH = this.f24997r.h();
        if (this.f24998s == null || this.f24996q.isEmpty() || this.f24994o) {
            long j12 = this.f24991l;
            long j13 = this.f24992m;
            if (this.f24995p) {
                long jF = this.f24997r.f();
                j12 += jF;
                j13 += jF;
            }
            this.f25000u = jH + j12;
            this.f25001v = this.f24992m != Long.MIN_VALUE ? jH + j13 : Long.MIN_VALUE;
            int size = this.f24996q.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((b) this.f24996q.get(i10)).l(this.f25000u, this.f25001v);
            }
            j10 = j12;
            j11 = j13;
        } else {
            long j14 = this.f25000u - jH;
            j11 = this.f24992m != Long.MIN_VALUE ? this.f25001v - jH : Long.MIN_VALUE;
            j10 = j14;
        }
        try {
            a aVar = new a(l3Var, j10, j11);
            this.f24998s = aVar;
            C(aVar);
        } catch (IllegalClippingException e10) {
            this.f24999t = e10;
            for (int i11 = 0; i11 < this.f24996q.size(); i11++) {
                ((b) this.f24996q.get(i11)).j(this.f24999t);
            }
        }
    }

    @Override
    protected void B(k0 k0Var) {
        super.B(k0Var);
        K(null, this.f24990k);
    }

    @Override
    protected void D() {
        super.D();
        this.f24999t = null;
        this.f24998s = null;
    }

    @Override
    public void I(Void r10, o oVar, l3 l3Var) {
        if (this.f24999t != null) {
            return;
        }
        M(l3Var);
    }

    @Override
    public w1 a() {
        return this.f24990k.a();
    }

    @Override
    public n d(o.b bVar, com.google.android.exoplayer2.upstream.b bVar2, long j10) {
        b bVar3 = new b(this.f24990k.d(bVar, bVar2, j10), this.f24993n, this.f25000u, this.f25001v);
        this.f24996q.add(bVar3);
        return bVar3;
    }

    @Override
    public void i(n nVar) {
        com.google.android.exoplayer2.util.a.g(this.f24996q.remove(nVar));
        this.f24990k.i(((b) nVar).f25058a);
        if (!this.f24996q.isEmpty() || this.f24994o) {
            return;
        }
        M(((a) com.google.android.exoplayer2.util.a.e(this.f24998s)).f25555c);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.f24999t;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }
}
