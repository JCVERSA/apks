package k2;

import androidx.media3.common.util.a1;
import java.util.Arrays;

public final class h implements m0 {

    public final int f63590a;

    public final int[] f63591b;

    public final long[] f63592c;

    public final long[] f63593d;

    public final long[] f63594e;

    private final long f63595f;

    public h(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f63591b = iArr;
        this.f63592c = jArr;
        this.f63593d = jArr2;
        this.f63594e = jArr3;
        int length = iArr.length;
        this.f63590a = length;
        if (length > 0) {
            this.f63595f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f63595f = 0L;
        }
    }

    public int b(long j10) {
        return a1.h(this.f63594e, j10, true, true);
    }

    @Override
    public long getDurationUs() {
        return this.f63595f;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        int iB = b(j10);
        n0 n0Var = new n0(this.f63594e[iB], this.f63592c[iB]);
        if (n0Var.f63657a >= j10 || iB == this.f63590a - 1) {
            return new m0.a(n0Var);
        }
        int i10 = iB + 1;
        return new m0.a(n0Var, new n0(this.f63594e[i10], this.f63592c[i10]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f63590a + ", sizes=" + Arrays.toString(this.f63591b) + ", offsets=" + Arrays.toString(this.f63592c) + ", timeUs=" + Arrays.toString(this.f63594e) + ", durationsUs=" + Arrays.toString(this.f63593d) + ")";
    }
}
