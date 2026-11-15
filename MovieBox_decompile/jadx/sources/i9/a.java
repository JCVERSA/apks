package i9;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public abstract class a {

    protected final C0758a f61861a;

    protected final f f61862b;

    protected c f61863c;

    private final int f61864d;

    public static class C0758a implements b0 {

        private final d f61865a;

        private final long f61866b;

        private final long f61867c;

        private final long f61868d;

        private final long f61869e;

        private final long f61870f;

        private final long f61871g;

        public C0758a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f61865a = dVar;
            this.f61866b = j10;
            this.f61867c = j11;
            this.f61868d = j12;
            this.f61869e = j13;
            this.f61870f = j14;
            this.f61871g = j15;
        }

        public long g(long j10) {
            return this.f61865a.a(j10);
        }

        @Override
        public long getDurationUs() {
            return this.f61866b;
        }

        @Override
        public b0.a getSeekPoints(long j10) {
            return new b0.a(new c0(j10, c.h(this.f61865a.a(j10), this.f61867c, this.f61868d, this.f61869e, this.f61870f, this.f61871g)));
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    protected static class c {

        private final long f61872a;

        private final long f61873b;

        private final long f61874c;

        private long f61875d;

        private long f61876e;

        private long f61877f;

        private long f61878g;

        private long f61879h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f61872a = j10;
            this.f61873b = j11;
            this.f61875d = j12;
            this.f61876e = j13;
            this.f61877f = j14;
            this.f61878g = j15;
            this.f61874c = j16;
            this.f61879h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 >= j14 || j11 + 1 >= j12) {
                return j13;
            }
            long j16 = (long) ((j10 - j11) * ((j14 - j13) / (j12 - j11)));
            return p0.r(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
        }

        public long i() {
            return this.f61878g;
        }

        public long j() {
            return this.f61877f;
        }

        public long k() {
            return this.f61879h;
        }

        public long l() {
            return this.f61872a;
        }

        public long m() {
            return this.f61873b;
        }

        private void n() {
            this.f61879h = h(this.f61873b, this.f61875d, this.f61876e, this.f61877f, this.f61878g, this.f61874c);
        }

        public void o(long j10, long j11) {
            this.f61876e = j10;
            this.f61878g = j11;
            n();
        }

        public void p(long j10, long j11) {
            this.f61875d = j10;
            this.f61877f = j11;
            n();
        }
    }

    public interface d {
        long a(long j10);
    }

    public static final class e {

        public static final e f61880d = new e(-3, C.TIME_UNSET, -1);

        private final int f61881a;

        private final long f61882b;

        private final long f61883c;

        private e(int i10, long j10, long j11) {
            this.f61881a = i10;
            this.f61882b = j10;
            this.f61883c = j11;
        }

        public static e d(long j10, long j11) {
            return new e(-1, j10, j11);
        }

        public static e e(long j10) {
            return new e(0, C.TIME_UNSET, j10);
        }

        public static e f(long j10, long j11) {
            return new e(-2, j10, j11);
        }
    }

    public interface f {
        void a();

        e b(m mVar, long j10);
    }

    protected a(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f61862b = fVar;
        this.f61864d = i10;
        this.f61861a = new C0758a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f61861a.g(j10), this.f61861a.f61867c, this.f61861a.f61868d, this.f61861a.f61869e, this.f61861a.f61870f, this.f61861a.f61871g);
    }

    public final b0 b() {
        return this.f61861a;
    }

    public int c(m mVar, a0 a0Var) {
        while (true) {
            c cVar = (c) com.google.android.exoplayer2.util.a.i(this.f61863c);
            long j10 = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j10 <= this.f61864d) {
                e(false, j10);
                return g(mVar, j10, a0Var);
            }
            if (!i(mVar, jK)) {
                return g(mVar, jK, a0Var);
            }
            mVar.resetPeekPosition();
            e eVarB = this.f61862b.b(mVar, cVar.m());
            int i10 = eVarB.f61881a;
            if (i10 == -3) {
                e(false, jK);
                return g(mVar, jK, a0Var);
            }
            if (i10 == -2) {
                cVar.p(eVarB.f61882b, eVarB.f61883c);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(mVar, eVarB.f61883c);
                    e(true, eVarB.f61883c);
                    return g(mVar, eVarB.f61883c, a0Var);
                }
                cVar.o(eVarB.f61882b, eVarB.f61883c);
            }
        }
    }

    public final boolean d() {
        return this.f61863c != null;
    }

    protected final void e(boolean z10, long j10) {
        this.f61863c = null;
        this.f61862b.a();
        f(z10, j10);
    }

    protected final int g(m mVar, long j10, a0 a0Var) {
        if (j10 == mVar.getPosition()) {
            return 0;
        }
        a0Var.f61884a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f61863c;
        if (cVar == null || cVar.l() != j10) {
            this.f61863c = a(j10);
        }
    }

    protected final boolean i(m mVar, long j10) {
        long position = j10 - mVar.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        mVar.skipFully((int) position);
        return true;
    }

    public static final class b implements d {
        @Override
        public long a(long j10) {
            return j10;
        }
    }

    protected void f(boolean z10, long j10) {
    }
}
