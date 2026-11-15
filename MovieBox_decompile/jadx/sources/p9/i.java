package p9;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import i9.c0;

final class i implements g {

    private final long f69110a;

    private final int f69111b;

    private final long f69112c;

    private final long f69113d;

    private final long f69114e;

    private final long[] f69115f;

    private i(long j10, int i10, long j11) {
        this(j10, i10, j11, -1L, null);
    }

    public static i b(long j10, long j11, b0.a aVar, d0 d0Var) {
        int iH;
        int i10 = aVar.f23935g;
        int i11 = aVar.f23932d;
        int iN = d0Var.n();
        if ((iN & 1) != 1 || (iH = d0Var.H()) == 0) {
            return null;
        }
        long jN0 = p0.N0(iH, ((long) i10) * 1000000, i11);
        if ((iN & 6) != 6) {
            return new i(j11, aVar.f23931c, jN0);
        }
        long jF = d0Var.F();
        long[] jArr = new long[100];
        for (int i12 = 0; i12 < 100; i12++) {
            jArr[i12] = d0Var.D();
        }
        if (j10 != -1) {
            long j12 = j11 + jF;
            if (j10 != j12) {
                s.i("XingSeeker", "XING data size mismatch: " + j10 + ", " + j12);
            }
        }
        return new i(j11, aVar.f23931c, jN0, jF, jArr);
    }

    private long c(int i10) {
        return (this.f69112c * ((long) i10)) / 100;
    }

    @Override
    public long a() {
        return this.f69114e;
    }

    @Override
    public long getDurationUs() {
        return this.f69112c;
    }

    @Override
    public i9.b0.a getSeekPoints(long j10) {
        if (!isSeekable()) {
            return new i9.b0.a(new c0(0L, this.f69110a + ((long) this.f69111b)));
        }
        long jR = p0.r(j10, 0L, this.f69112c);
        double d10 = (jR * 100.0d) / this.f69112c;
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            if (d10 >= 100.0d) {
                d11 = 256.0d;
            } else {
                int i10 = (int) d10;
                long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.f69115f);
                double d12 = jArr[i10];
                d11 = d12 + ((d10 - ((double) i10)) * ((i10 == 99 ? 256.0d : jArr[i10 + 1]) - d12));
            }
        }
        return new i9.b0.a(new c0(jR, this.f69110a + p0.r(Math.round((d11 / 256.0d) * this.f69113d), this.f69111b, this.f69113d - 1)));
    }

    @Override
    public long getTimeUs(long j10) {
        long j11 = j10 - this.f69110a;
        if (!isSeekable() || j11 <= this.f69111b) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.a.i(this.f69115f);
        double d10 = (j11 * 256.0d) / this.f69113d;
        int i10 = p0.i(jArr, (long) d10, true, true);
        long jC = c(i10);
        long j12 = jArr[i10];
        int i11 = i10 + 1;
        long jC2 = c(i11);
        long j13 = i10 == 99 ? 256L : jArr[i11];
        return jC + Math.round((j12 == j13 ? 0.0d : (d10 - j12) / (j13 - j12)) * (jC2 - jC));
    }

    @Override
    public boolean isSeekable() {
        return this.f69115f != null;
    }

    private i(long j10, int i10, long j11, long j12, long[] jArr) {
        this.f69110a = j10;
        this.f69111b = i10;
        this.f69112c = j11;
        this.f69115f = jArr;
        this.f69113d = j12;
        this.f69114e = j12 != -1 ? j10 + j12 : -1L;
    }
}
