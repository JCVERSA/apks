package i9;

import com.google.android.exoplayer2.util.p0;
import java.util.Arrays;

public final class d implements b0 {

    public final int f61892a;

    public final int[] f61893b;

    public final long[] f61894c;

    public final long[] f61895d;

    public final long[] f61896e;

    private final long f61897f;

    public d(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f61893b = iArr;
        this.f61894c = jArr;
        this.f61895d = jArr2;
        this.f61896e = jArr3;
        int length = iArr.length;
        this.f61892a = length;
        if (length > 0) {
            this.f61897f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f61897f = 0L;
        }
    }

    public int b(long j10) {
        return p0.i(this.f61896e, j10, true, true);
    }

    @Override
    public long getDurationUs() {
        return this.f61897f;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        int iB = b(j10);
        c0 c0Var = new c0(this.f61896e[iB], this.f61894c[iB]);
        if (c0Var.f61890a >= j10 || iB == this.f61892a - 1) {
            return new b0.a(c0Var);
        }
        int i10 = iB + 1;
        return new b0.a(c0Var, new c0(this.f61896e[i10], this.f61894c[i10]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f61892a + ", sizes=" + Arrays.toString(this.f61893b) + ", offsets=" + Arrays.toString(this.f61894c) + ", timeUs=" + Arrays.toString(this.f61896e) + ", durationsUs=" + Arrays.toString(this.f61895d) + ")";
    }
}
