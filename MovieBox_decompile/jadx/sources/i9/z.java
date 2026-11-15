package i9;

import com.google.android.exoplayer2.util.p0;

public final class z implements b0 {

    private final long[] f61993a;

    private final long[] f61994b;

    private final long f61995c;

    private final boolean f61996d;

    public z(long[] jArr, long[] jArr2, long j10) {
        com.google.android.exoplayer2.util.a.a(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z10 = length > 0;
        this.f61996d = z10;
        if (!z10 || jArr2[0] <= 0) {
            this.f61993a = jArr;
            this.f61994b = jArr2;
        } else {
            int i10 = length + 1;
            long[] jArr3 = new long[i10];
            this.f61993a = jArr3;
            long[] jArr4 = new long[i10];
            this.f61994b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length);
            System.arraycopy(jArr2, 0, jArr4, 1, length);
        }
        this.f61995c = j10;
    }

    @Override
    public long getDurationUs() {
        return this.f61995c;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        if (!this.f61996d) {
            return new b0.a(c0.f61889c);
        }
        int i10 = p0.i(this.f61994b, j10, true, true);
        c0 c0Var = new c0(this.f61994b[i10], this.f61993a[i10]);
        if (c0Var.f61890a == j10 || i10 == this.f61994b.length - 1) {
            return new b0.a(c0Var);
        }
        int i11 = i10 + 1;
        return new b0.a(c0Var, new c0(this.f61994b[i11], this.f61993a[i11]));
    }

    @Override
    public boolean isSeekable() {
        return this.f61996d;
    }
}
