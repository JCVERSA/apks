package com.google.android.exoplayer2.source;

import androidx.media3.common.C;
import com.google.android.exoplayer2.a0;
import defpackage.blb;
import defpackage.cb;
import defpackage.m54;
import defpackage.u5b;
import defpackage.zi;
import java.io.IOException;
import java.util.ArrayList;

public final class ClippingMediaSource extends c {
    public final i k;
    public final long l;
    public final long m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final ArrayList q;
    public final a0.d r;
    public a s;
    public IllegalClippingException t;
    public long u;
    public long v;

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        public IllegalClippingException(int i) {
            super("Illegal clipping: " + getReasonDescription(i));
            this.reason = i;
        }

        private static String getReasonDescription(int i) {
            if (i == 0) {
                return "invalid period count";
            }
            if (i != 1) {
                return i != 2 ? "unknown" : "start exceeds end";
            }
            return "not seekable to start";
        }
    }

    public static final class a extends m54 {
        public final long e;
        public final long f;
        public final long g;
        public final boolean h;

        public a(a0 a0Var, long j, long j2) throws IllegalClippingException {
            super(a0Var);
            boolean z = false;
            if (a0Var.m() != 1) {
                throw new IllegalClippingException(0);
            }
            a0.d dVarR = a0Var.r(0, new a0.d());
            long jMax = Math.max(0L, j);
            if (!dVarR.m && jMax != 0 && !dVarR.i) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j2 == Long.MIN_VALUE ? dVarR.o : Math.max(0L, j2);
            long j3 = dVarR.o;
            if (j3 != C.TIME_UNSET) {
                jMax2 = jMax2 > j3 ? j3 : jMax2;
                if (jMax > jMax2) {
                    throw new IllegalClippingException(2);
                }
            }
            this.e = jMax;
            this.f = jMax2;
            this.g = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (dVarR.j && (jMax2 == C.TIME_UNSET || (j3 != C.TIME_UNSET && jMax2 == j3))) {
                z = true;
            }
            this.h = z;
        }

        @Override
        public a0.b k(int i, a0.b bVar, boolean z) {
            this.d.k(0, bVar, z);
            long jQ = bVar.q() - this.e;
            long j = this.g;
            return bVar.v(bVar.b, bVar.c, 0, j == C.TIME_UNSET ? -9223372036854775807L : j - jQ, jQ);
        }

        @Override
        public a0.d s(int i, a0.d dVar, long j) {
            this.d.s(0, dVar, 0L);
            long j2 = dVar.r;
            long j3 = this.e;
            dVar.r = j2 + j3;
            dVar.o = this.g;
            dVar.j = this.h;
            long j4 = dVar.n;
            if (j4 != C.TIME_UNSET) {
                long jMax = Math.max(j4, j3);
                dVar.n = jMax;
                long j5 = this.f;
                if (j5 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j5);
                }
                dVar.n = jMax - this.e;
            }
            long jP0 = blb.P0(this.e);
            long j6 = dVar.f;
            if (j6 != C.TIME_UNSET) {
                dVar.f = j6 + jP0;
            }
            long j7 = dVar.g;
            if (j7 != C.TIME_UNSET) {
                dVar.g = j7 + jP0;
            }
            return dVar;
        }
    }

    public ClippingMediaSource(i iVar, long j, long j2, boolean z, boolean z2, boolean z3) {
        zi.a(j >= 0);
        this.k = (i) zi.e(iVar);
        this.l = j;
        this.m = j2;
        this.n = z;
        this.o = z2;
        this.p = z3;
        this.q = new ArrayList();
        this.r = new a0.d();
    }

    @Override
    public void A(Void r1, i iVar, a0 a0Var) {
        if (this.t != null) {
            return;
        }
        E(a0Var);
    }

    public final void E(a0 a0Var) {
        long j;
        long j2;
        a0Var.r(0, this.r);
        long jH = this.r.h();
        if (this.s == null || this.q.isEmpty() || this.o) {
            long j3 = this.l;
            long j4 = this.m;
            if (this.p) {
                long jF = this.r.f();
                j3 += jF;
                j4 += jF;
            }
            this.u = jH + j3;
            this.v = this.m != Long.MIN_VALUE ? jH + j4 : Long.MIN_VALUE;
            int size = this.q.size();
            for (int i = 0; i < size; i++) {
                ((b) this.q.get(i)).k(this.u, this.v);
            }
            j = j3;
            j2 = j4;
        } else {
            long j5 = this.u - jH;
            j2 = this.m != Long.MIN_VALUE ? this.v - jH : Long.MIN_VALUE;
            j = j5;
        }
        try {
            a aVar = new a(a0Var, j, j2);
            this.s = aVar;
            u(aVar);
        } catch (IllegalClippingException e) {
            this.t = e;
            for (int i2 = 0; i2 < this.q.size(); i2++) {
                ((b) this.q.get(i2)).i(this.t);
            }
        }
    }

    @Override
    public h c(i.b bVar, cb cbVar, long j) {
        b bVar2 = new b(this.k.c(bVar, cbVar, j), this.n, this.u, this.v);
        this.q.add(bVar2);
        return bVar2;
    }

    @Override
    public void e(h hVar) {
        zi.g(this.q.remove(hVar));
        this.k.e(((b) hVar).b);
        if (!this.q.isEmpty() || this.o) {
            return;
        }
        E(((a) zi.e(this.s)).d);
    }

    @Override
    public com.google.android.exoplayer2.n getMediaItem() {
        return this.k.getMediaItem();
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.t;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override
    public void t(u5b u5bVar) {
        super.t(u5bVar);
        C(null, this.k);
    }

    @Override
    public void v() {
        super.v();
        this.t = null;
        this.s = null;
    }
}
