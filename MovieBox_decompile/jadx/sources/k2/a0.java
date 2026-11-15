package k2;

import androidx.media3.common.util.a1;

public final class a0 implements m0 {

    private final b0 f63493a;

    private final long f63494b;

    public a0(b0 b0Var, long j10) {
        this.f63493a = b0Var;
        this.f63494b = j10;
    }

    private n0 b(long j10, long j11) {
        return new n0((j10 * 1000000) / ((long) this.f63493a.f63512e), this.f63494b + j11);
    }

    @Override
    public long getDurationUs() {
        return this.f63493a.f();
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        androidx.media3.common.util.a.i(this.f63493a.f63518k);
        b0 b0Var = this.f63493a;
        b0.a aVar = b0Var.f63518k;
        long[] jArr = aVar.f63520a;
        long[] jArr2 = aVar.f63521b;
        int iH = a1.h(jArr, b0Var.i(j10), true, false);
        n0 n0VarB = b(iH == -1 ? 0L : jArr[iH], iH != -1 ? jArr2[iH] : 0L);
        if (n0VarB.f63657a == j10 || iH == jArr.length - 1) {
            return new m0.a(n0VarB);
        }
        int i10 = iH + 1;
        return new m0.a(n0VarB, b(jArr[i10], jArr2[i10]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
