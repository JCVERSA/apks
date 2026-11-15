package d3;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import k2.i0;
import k2.m0;
import k2.n0;

final class j implements g {

    private final long f58890a;

    private final int f58891b;

    private final long f58892c;

    private final int f58893d;

    private final long f58894e;

    private final long f58895f;

    private final long[] f58896g;

    private j(long j10, int i10, long j11, int i11) {
        this(j10, i10, j11, i11, -1L, null);
    }

    public static j b(i iVar, long j10) {
        long[] jArr;
        long jA = iVar.a();
        if (jA == C.TIME_UNSET) {
            return null;
        }
        long j11 = iVar.f58886c;
        if (j11 == -1 || (jArr = iVar.f58889f) == null) {
            i0.a aVar = iVar.f58884a;
            return new j(j10, aVar.f63615c, jA, aVar.f63618f);
        }
        i0.a aVar2 = iVar.f58884a;
        return new j(j10, aVar2.f63615c, jA, aVar2.f63618f, j11, jArr);
    }

    private long c(int i10) {
        return (this.f58892c * ((long) i10)) / 100;
    }

    @Override
    public long a() {
        return this.f58895f;
    }

    @Override
    public int g() {
        return this.f58893d;
    }

    @Override
    public long getDurationUs() {
        return this.f58892c;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        if (!isSeekable()) {
            return new m0.a(new n0(0L, this.f58890a + ((long) this.f58891b)));
        }
        long jQ = a1.q(j10, 0L, this.f58892c);
        double d10 = (jQ * 100.0d) / this.f58892c;
        double d11 = 0.0d;
        if (d10 > 0.0d) {
            if (d10 >= 100.0d) {
                d11 = 256.0d;
            } else {
                int i10 = (int) d10;
                long[] jArr = (long[]) androidx.media3.common.util.a.i(this.f58896g);
                double d12 = jArr[i10];
                d11 = d12 + ((d10 - ((double) i10)) * ((i10 == 99 ? 256.0d : jArr[i10 + 1]) - d12));
            }
        }
        return new m0.a(new n0(jQ, this.f58890a + a1.q(Math.round((d11 / 256.0d) * this.f58894e), this.f58891b, this.f58894e - 1)));
    }

    @Override
    public long getTimeUs(long j10) {
        long j11 = j10 - this.f58890a;
        if (!isSeekable() || j11 <= this.f58891b) {
            return 0L;
        }
        long[] jArr = (long[]) androidx.media3.common.util.a.i(this.f58896g);
        double d10 = (j11 * 256.0d) / this.f58894e;
        int iH = a1.h(jArr, (long) d10, true, true);
        long jC = c(iH);
        long j12 = jArr[iH];
        int i10 = iH + 1;
        long jC2 = c(i10);
        long j13 = iH == 99 ? 256L : jArr[i10];
        return jC + Math.round((j12 == j13 ? 0.0d : (d10 - j12) / (j13 - j12)) * (jC2 - jC));
    }

    @Override
    public boolean isSeekable() {
        return this.f58896g != null;
    }

    private j(long j10, int i10, long j11, int i11, long j12, long[] jArr) {
        this.f58890a = j10;
        this.f58891b = i10;
        this.f58892c = j11;
        this.f58893d = i11;
        this.f58894e = j12;
        this.f58896g = jArr;
        this.f58895f = j12 != -1 ? j10 + j12 : -1L;
    }
}
