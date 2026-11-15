package androidx.media3.exoplayer;

import android.os.SystemClock;
import com.google.common.primitives.Longs;
import com.mbridge.msdk.playercommon.exoplayer2.C;

public final class l implements t2 {

    private final float f11758a;

    private final float f11759b;

    private final long f11760c;

    private final float f11761d;

    private final long f11762e;

    private final long f11763f;

    private final float f11764g;

    private long f11765h;

    private long f11766i;

    private long f11767j;

    private long f11768k;

    private long f11769l;

    private long f11770m;

    private float f11771n;

    private float f11772o;

    private float f11773p;

    private long f11774q;

    private long f11775r;

    private long f11776s;

    public static final class b {

        private float f11777a = 0.97f;

        private float f11778b = 1.03f;

        private long f11779c = 1000;

        private float f11780d = 1.0E-7f;

        private long f11781e = androidx.media3.common.util.a1.R0(20);

        private long f11782f = androidx.media3.common.util.a1.R0(500);

        private float f11783g = 0.999f;

        public l a() {
            return new l(this.f11777a, this.f11778b, this.f11779c, this.f11780d, this.f11781e, this.f11782f, this.f11783g);
        }
    }

    private void f(long j10) {
        long j11 = this.f11775r + (this.f11776s * 3);
        if (this.f11770m > j11) {
            float fR0 = androidx.media3.common.util.a1.R0(this.f11760c);
            this.f11770m = Longs.h(j11, this.f11767j, this.f11770m - (((long) ((this.f11773p - 1.0f) * fR0)) + ((long) ((this.f11771n - 1.0f) * fR0))));
            return;
        }
        long jQ = androidx.media3.common.util.a1.q(j10 - ((long) (Math.max(0.0f, this.f11773p - 1.0f) / this.f11761d)), this.f11770m, j11);
        this.f11770m = jQ;
        long j12 = this.f11769l;
        if (j12 == C.TIME_UNSET || jQ <= j12) {
            return;
        }
        this.f11770m = j12;
    }

    private void g() {
        long j10;
        long j11 = this.f11765h;
        if (j11 != C.TIME_UNSET) {
            j10 = this.f11766i;
            if (j10 == C.TIME_UNSET) {
                long j12 = this.f11768k;
                if (j12 != C.TIME_UNSET && j11 < j12) {
                    j11 = j12;
                }
                j10 = this.f11769l;
                if (j10 == C.TIME_UNSET || j11 <= j10) {
                    j10 = j11;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f11767j == j10) {
            return;
        }
        this.f11767j = j10;
        this.f11770m = j10;
        this.f11775r = C.TIME_UNSET;
        this.f11776s = C.TIME_UNSET;
        this.f11774q = C.TIME_UNSET;
    }

    private static long h(long j10, long j11, float f10) {
        return (long) ((j10 * f10) + ((1.0f - f10) * j11));
    }

    private void i(long j10, long j11) {
        long j12 = j10 - j11;
        long j13 = this.f11775r;
        if (j13 == C.TIME_UNSET) {
            this.f11775r = j12;
            this.f11776s = 0L;
        } else {
            long jMax = Math.max(j12, h(j13, j12, this.f11764g));
            this.f11775r = jMax;
            this.f11776s = h(this.f11776s, Math.abs(j12 - jMax), this.f11764g);
        }
    }

    @Override
    public float a(long j10, long j11) {
        if (this.f11765h == C.TIME_UNSET) {
            return 1.0f;
        }
        i(j10, j11);
        if (this.f11774q != C.TIME_UNSET && SystemClock.elapsedRealtime() - this.f11774q < this.f11760c) {
            return this.f11773p;
        }
        this.f11774q = SystemClock.elapsedRealtime();
        f(j10);
        long j12 = j10 - this.f11770m;
        if (Math.abs(j12) < this.f11762e) {
            this.f11773p = 1.0f;
        } else {
            this.f11773p = androidx.media3.common.util.a1.o((this.f11761d * j12) + 1.0f, this.f11772o, this.f11771n);
        }
        return this.f11773p;
    }

    @Override
    public long b() {
        return this.f11770m;
    }

    @Override
    public void c() {
        long j10 = this.f11770m;
        if (j10 == C.TIME_UNSET) {
            return;
        }
        long j11 = j10 + this.f11763f;
        this.f11770m = j11;
        long j12 = this.f11769l;
        if (j12 != C.TIME_UNSET && j11 > j12) {
            this.f11770m = j12;
        }
        this.f11774q = C.TIME_UNSET;
    }

    @Override
    public void d(long j10) {
        this.f11766i = j10;
        g();
    }

    @Override
    public void e(androidx.media3.common.t.g gVar) {
        this.f11765h = androidx.media3.common.util.a1.R0(gVar.f9973a);
        this.f11768k = androidx.media3.common.util.a1.R0(gVar.f9974b);
        this.f11769l = androidx.media3.common.util.a1.R0(gVar.f9975c);
        float f10 = gVar.f9976d;
        if (f10 == -3.4028235E38f) {
            f10 = this.f11758a;
        }
        this.f11772o = f10;
        float f11 = gVar.f9977e;
        if (f11 == -3.4028235E38f) {
            f11 = this.f11759b;
        }
        this.f11771n = f11;
        if (f10 == 1.0f && f11 == 1.0f) {
            this.f11765h = C.TIME_UNSET;
        }
        g();
    }

    private l(float f10, float f11, long j10, float f12, long j11, long j12, float f13) {
        this.f11758a = f10;
        this.f11759b = f11;
        this.f11760c = j10;
        this.f11761d = f12;
        this.f11762e = j11;
        this.f11763f = j12;
        this.f11764g = f13;
        this.f11765h = C.TIME_UNSET;
        this.f11766i = C.TIME_UNSET;
        this.f11768k = C.TIME_UNSET;
        this.f11769l = C.TIME_UNSET;
        this.f11772o = f10;
        this.f11771n = f11;
        this.f11773p = 1.0f;
        this.f11774q = C.TIME_UNSET;
        this.f11767j = C.TIME_UNSET;
        this.f11770m = C.TIME_UNSET;
        this.f11775r = C.TIME_UNSET;
        this.f11776s = C.TIME_UNSET;
    }
}
