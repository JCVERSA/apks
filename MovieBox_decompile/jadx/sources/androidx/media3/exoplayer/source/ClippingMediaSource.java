package androidx.media3.exoplayer.source;

import androidx.media3.common.util.a1;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;

public final class ClippingMediaSource extends l0 {

    private final long f12273m;

    private final long f12274n;

    private final boolean f12275o;

    private final boolean f12276p;

    private final boolean f12277q;

    private final boolean f12278r;

    private final ArrayList f12279s;

    private final androidx.media3.common.e0.c f12280t;

    private c f12281u;

    private IllegalClippingException f12282v;

    private long f12283w;

    private long f12284x;

    public static final class IllegalClippingException extends IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        public IllegalClippingException(int i10) {
            this(i10, C.TIME_UNSET, C.TIME_UNSET);
        }

        private static String getReasonDescription(int i10, long j10, long j11) {
            if (i10 == 0) {
                return "invalid period count";
            }
            if (i10 == 1) {
                return "not seekable to start";
            }
            if (i10 != 2) {
                return TmcConstants.ROUTE_UNKNOWN;
            }
            androidx.media3.common.util.a.g((j10 == C.TIME_UNSET || j11 == C.TIME_UNSET) ? false : true);
            return "start exceeds end. Start time: " + j10 + ", End time: " + j11;
        }

        public IllegalClippingException(int i10, long j10, long j11) {
            super("Illegal clipping: " + getReasonDescription(i10, j10, j11));
            this.reason = i10;
        }
    }

    public static final class b {

        private final r f12285a;

        private long f12286b;

        private boolean f12289e;

        private boolean f12290f;

        private boolean f12291g;

        private boolean f12292h;

        private boolean f12288d = true;

        private long f12287c = Long.MIN_VALUE;

        public b(r rVar) {
            this.f12285a = (r) androidx.media3.common.util.a.e(rVar);
        }

        public ClippingMediaSource h() {
            this.f12292h = true;
            return new ClippingMediaSource(this);
        }

        public b i(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12292h);
            this.f12289e = z10;
            return this;
        }

        public b j(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12292h);
            this.f12288d = z10;
            return this;
        }

        public b k(long j10) {
            androidx.media3.common.util.a.g(!this.f12292h);
            this.f12287c = j10;
            return this;
        }

        public b l(boolean z10) {
            androidx.media3.common.util.a.g(!this.f12292h);
            this.f12290f = z10;
            return this;
        }

        public b m(long j10) {
            androidx.media3.common.util.a.a(j10 >= 0);
            androidx.media3.common.util.a.g(!this.f12292h);
            this.f12286b = j10;
            return this;
        }
    }

    private static final class c extends m {

        private final long f12293f;

        private final long f12294g;

        private final long f12295h;

        private final boolean f12296i;

        public c(androidx.media3.common.e0 e0Var, long j10, long j11, boolean z10) throws IllegalClippingException {
            super(e0Var);
            if (j11 != Long.MIN_VALUE && j11 < j10) {
                throw new IllegalClippingException(2, j10, j11);
            }
            boolean z11 = false;
            if (e0Var.i() != 1) {
                throw new IllegalClippingException(0);
            }
            androidx.media3.common.e0.c cVarN = e0Var.n(0, new androidx.media3.common.e0.c());
            long jMax = Math.max(0L, j10);
            if (!z10 && !cVarN.f9649k && jMax != 0 && !cVarN.f9646h) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j11 == Long.MIN_VALUE ? cVarN.f9651m : Math.max(0L, j11);
            long j12 = cVarN.f9651m;
            if (j12 != C.TIME_UNSET) {
                jMax2 = jMax2 > j12 ? j12 : jMax2;
                if (jMax > jMax2) {
                    jMax = jMax2;
                }
            }
            this.f12293f = jMax;
            this.f12294g = jMax2;
            this.f12295h = jMax2 == C.TIME_UNSET ? -9223372036854775807L : jMax2 - jMax;
            if (cVarN.f9647i && (jMax2 == C.TIME_UNSET || (j12 != C.TIME_UNSET && jMax2 == j12))) {
                z11 = true;
            }
            this.f12296i = z11;
        }

        @Override
        public androidx.media3.common.e0.b g(int i10, androidx.media3.common.e0.b bVar, boolean z10) {
            this.f12544e.g(0, bVar, z10);
            long jO = bVar.o() - this.f12293f;
            long j10 = this.f12295h;
            return bVar.t(bVar.f9622a, bVar.f9623b, 0, j10 == C.TIME_UNSET ? -9223372036854775807L : j10 - jO, jO);
        }

        @Override
        public androidx.media3.common.e0.c o(int i10, androidx.media3.common.e0.c cVar, long j10) {
            this.f12544e.o(0, cVar, 0L);
            long j11 = cVar.f9654p;
            long j12 = this.f12293f;
            cVar.f9654p = j11 + j12;
            cVar.f9651m = this.f12295h;
            cVar.f9647i = this.f12296i;
            long j13 = cVar.f9650l;
            if (j13 != C.TIME_UNSET) {
                long jMax = Math.max(j13, j12);
                cVar.f9650l = jMax;
                long j14 = this.f12294g;
                if (j14 != C.TIME_UNSET) {
                    jMax = Math.min(jMax, j14);
                }
                cVar.f9650l = jMax - this.f12293f;
            }
            long jY1 = a1.y1(this.f12293f);
            long j15 = cVar.f9643e;
            if (j15 != C.TIME_UNSET) {
                cVar.f9643e = j15 + jY1;
            }
            long j16 = cVar.f9644f;
            if (j16 != C.TIME_UNSET) {
                cVar.f9644f = j16 + jY1;
            }
            return cVar;
        }
    }

    private void T(androidx.media3.common.e0 e0Var) {
        long j10;
        long j11;
        e0Var.n(0, this.f12280t);
        long jE = this.f12280t.e();
        if (this.f12281u == null || this.f12279s.isEmpty() || this.f12276p) {
            long j12 = this.f12273m;
            long j13 = this.f12274n;
            if (this.f12277q) {
                long jC = this.f12280t.c();
                j12 += jC;
                j13 += jC;
            }
            this.f12283w = jE + j12;
            this.f12284x = this.f12274n != Long.MIN_VALUE ? jE + j13 : Long.MIN_VALUE;
            int size = this.f12279s.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.media3.exoplayer.source.b) this.f12279s.get(i10)).n(this.f12283w, this.f12284x);
            }
            j10 = j12;
            j11 = j13;
        } else {
            long j14 = this.f12283w - jE;
            j11 = this.f12274n != Long.MIN_VALUE ? this.f12284x - jE : Long.MIN_VALUE;
            j10 = j14;
        }
        try {
            c cVar = new c(e0Var, j10, j11, this.f12278r);
            this.f12281u = cVar;
            A(cVar);
        } catch (IllegalClippingException e10) {
            this.f12282v = e10;
            for (int i11 = 0; i11 < this.f12279s.size(); i11++) {
                ((androidx.media3.exoplayer.source.b) this.f12279s.get(i11)).l(this.f12282v);
            }
        }
    }

    @Override
    protected void B() {
        super.B();
        this.f12282v = null;
        this.f12281u = null;
    }

    @Override
    protected void P(androidx.media3.common.e0 e0Var) {
        if (this.f12282v != null) {
            return;
        }
        T(e0Var);
    }

    @Override
    public q g(r.b bVar, androidx.media3.exoplayer.upstream.b bVar2, long j10) {
        androidx.media3.exoplayer.source.b bVar3 = new androidx.media3.exoplayer.source.b(this.f12543k.g(bVar, bVar2, j10), this.f12275o, this.f12283w, this.f12284x);
        this.f12279s.add(bVar3);
        return bVar3;
    }

    @Override
    public void k(q qVar) {
        androidx.media3.common.util.a.g(this.f12279s.remove(qVar));
        this.f12543k.k(((androidx.media3.exoplayer.source.b) qVar).f12370a);
        if (!this.f12279s.isEmpty() || this.f12276p) {
            return;
        }
        T(((c) androidx.media3.common.util.a.e(this.f12281u)).f12544e);
    }

    @Override
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.f12282v;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override
    public boolean q(androidx.media3.common.t tVar) {
        return a().f9903f.equals(tVar.f9903f) && this.f12543k.q(tVar);
    }

    private ClippingMediaSource(b bVar) {
        super(bVar.f12285a);
        this.f12273m = bVar.f12286b;
        this.f12274n = bVar.f12287c;
        this.f12275o = bVar.f12288d;
        this.f12276p = bVar.f12289e;
        this.f12277q = bVar.f12290f;
        this.f12278r = bVar.f12291g;
        this.f12279s = new ArrayList();
        this.f12280t = new androidx.media3.common.e0.c();
    }
}
