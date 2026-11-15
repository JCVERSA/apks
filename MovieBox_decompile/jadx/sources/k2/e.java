package k2;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public abstract class e {

    protected final a f63548a;

    protected final f f63549b;

    protected c f63550c;

    private final int f63551d;

    public static class a implements m0 {

        private final d f63552a;

        private final long f63553b;

        private final long f63554c;

        private final long f63555d;

        private final long f63556e;

        private final long f63557f;

        private final long f63558g;

        public a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f63552a = dVar;
            this.f63553b = j10;
            this.f63554c = j11;
            this.f63555d = j12;
            this.f63556e = j13;
            this.f63557f = j14;
            this.f63558g = j15;
        }

        @Override
        public long getDurationUs() {
            return this.f63553b;
        }

        @Override
        public m0.a getSeekPoints(long j10) {
            return new m0.a(new n0(j10, c.h(this.f63552a.a(j10), this.f63554c, this.f63555d, this.f63556e, this.f63557f, this.f63558g)));
        }

        public long h(long j10) {
            return this.f63552a.a(j10);
        }

        @Override
        public boolean isSeekable() {
            return true;
        }
    }

    protected static class c {

        private final long f63559a;

        private final long f63560b;

        private final long f63561c;

        private long f63562d;

        private long f63563e;

        private long f63564f;

        private long f63565g;

        private long f63566h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f63559a = j10;
            this.f63560b = j11;
            this.f63562d = j12;
            this.f63563e = j13;
            this.f63564f = j14;
            this.f63565g = j15;
            this.f63561c = j16;
            this.f63566h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 >= j14 || j11 + 1 >= j12) {
                return j13;
            }
            long j16 = (long) ((j10 - j11) * ((j14 - j13) / (j12 - j11)));
            return a1.q(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
        }

        public long i() {
            return this.f63565g;
        }

        public long j() {
            return this.f63564f;
        }

        public long k() {
            return this.f63566h;
        }

        public long l() {
            return this.f63559a;
        }

        public long m() {
            return this.f63560b;
        }

        private void n() {
            this.f63566h = h(this.f63560b, this.f63562d, this.f63563e, this.f63564f, this.f63565g, this.f63561c);
        }

        public void o(long j10, long j11) {
            this.f63563e = j10;
            this.f63565g = j11;
            n();
        }

        public void p(long j10, long j11) {
            this.f63562d = j10;
            this.f63564f = j11;
            n();
        }
    }

    public interface d {
        long a(long j10);
    }

    public static final class C0783e {

        public static final C0783e f63567d = new C0783e(-3, C.TIME_UNSET, -1);

        private final int f63568a;

        private final long f63569b;

        private final long f63570c;

        private C0783e(int i10, long j10, long j11) {
            this.f63568a = i10;
            this.f63569b = j10;
            this.f63570c = j11;
        }

        public static C0783e d(long j10, long j11) {
            return new C0783e(-1, j10, j11);
        }

        public static C0783e e(long j10) {
            return new C0783e(0, C.TIME_UNSET, j10);
        }

        public static C0783e f(long j10, long j11) {
            return new C0783e(-2, j10, j11);
        }
    }

    public interface f {
        void a();

        C0783e b(s sVar, long j10);
    }

    protected e(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f63549b = fVar;
        this.f63551d = i10;
        this.f63548a = new a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f63548a.h(j10), this.f63548a.f63554c, this.f63548a.f63555d, this.f63548a.f63556e, this.f63548a.f63557f, this.f63548a.f63558g);
    }

    public final m0 b() {
        return this.f63548a;
    }

    public int c(s sVar, l0 l0Var) {
        while (true) {
            c cVar = (c) androidx.media3.common.util.a.i(this.f63550c);
            long j10 = cVar.j();
            long jI = cVar.i();
            long jK = cVar.k();
            if (jI - j10 <= this.f63551d) {
                e(false, j10);
                return g(sVar, j10, l0Var);
            }
            if (!i(sVar, jK)) {
                return g(sVar, jK, l0Var);
            }
            sVar.resetPeekPosition();
            C0783e c0783eB = this.f63549b.b(sVar, cVar.m());
            int i10 = c0783eB.f63568a;
            if (i10 == -3) {
                e(false, jK);
                return g(sVar, jK, l0Var);
            }
            if (i10 == -2) {
                cVar.p(c0783eB.f63569b, c0783eB.f63570c);
            } else {
                if (i10 != -1) {
                    if (i10 != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    i(sVar, c0783eB.f63570c);
                    e(true, c0783eB.f63570c);
                    return g(sVar, c0783eB.f63570c, l0Var);
                }
                cVar.o(c0783eB.f63569b, c0783eB.f63570c);
            }
        }
    }

    public final boolean d() {
        return this.f63550c != null;
    }

    protected final void e(boolean z10, long j10) {
        this.f63550c = null;
        this.f63549b.a();
        f(z10, j10);
    }

    protected final int g(s sVar, long j10, l0 l0Var) {
        if (j10 == sVar.getPosition()) {
            return 0;
        }
        l0Var.f63627a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f63550c;
        if (cVar == null || cVar.l() != j10) {
            this.f63550c = a(j10);
        }
    }

    protected final boolean i(s sVar, long j10) {
        long position = j10 - sVar.getPosition();
        if (position < 0 || position > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        sVar.skipFully((int) position);
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
