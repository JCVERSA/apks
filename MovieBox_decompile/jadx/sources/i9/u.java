package i9;

import com.google.android.exoplayer2.util.p0;

public final class u implements b0 {

    private final v f61972a;

    private final long f61973b;

    public u(v vVar, long j10) {
        this.f61972a = vVar;
        this.f61973b = j10;
    }

    private c0 b(long j10, long j11) {
        return new c0((j10 * 1000000) / ((long) this.f61972a.f61978e), this.f61973b + j11);
    }

    @Override
    public long getDurationUs() {
        return this.f61972a.f();
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        com.google.android.exoplayer2.util.a.i(this.f61972a.f61984k);
        v vVar = this.f61972a;
        v.a aVar = vVar.f61984k;
        long[] jArr = aVar.f61986a;
        long[] jArr2 = aVar.f61987b;
        int i10 = p0.i(jArr, vVar.i(j10), true, false);
        c0 c0VarB = b(i10 == -1 ? 0L : jArr[i10], i10 != -1 ? jArr2[i10] : 0L);
        if (c0VarB.f61890a == j10 || i10 == jArr.length - 1) {
            return new b0.a(c0VarB);
        }
        int i11 = i10 + 1;
        return new b0.a(c0VarB, b(jArr[i11], jArr2[i11]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
