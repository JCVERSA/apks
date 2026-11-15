package defpackage;

public final class vx3 implements ja9 {
    public final wx3 a;
    public final long b;

    public vx3(wx3 wx3Var, long j) {
        this.a = wx3Var;
        this.b = j;
    }

    public final la9 a(long j, long j2) {
        return new la9((j * 1000000) / ((long) this.a.e), this.b + j2);
    }

    @Override
    public long getDurationUs() {
        return this.a.f();
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        zi.i(this.a.k);
        wx3 wx3Var = this.a;
        wx3.a aVar = wx3Var.k;
        long[] jArr = aVar.a;
        long[] jArr2 = aVar.b;
        int i = blb.i(jArr, wx3Var.i(j), true, false);
        la9 la9VarA = a(i == -1 ? 0L : jArr[i], i != -1 ? jArr2[i] : 0L);
        if (la9VarA.a == j || i == jArr.length - 1) {
            return new ja9.a(la9VarA);
        }
        int i2 = i + 1;
        return new ja9.a(la9VarA, a(jArr[i2], jArr2[i2]));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
