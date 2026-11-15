package defpackage;

public final class l9e implements kae {
    public final n9e a;
    public final long b;

    public l9e(n9e n9eVar, long j) {
        this.a = n9eVar;
        this.b = j;
    }

    @Override
    public final z9e a(long j) {
        n9e n9eVar = this.a;
        m9e m9eVar = n9eVar.k;
        n7g.b(m9eVar);
        long[] jArr = m9eVar.a;
        long[] jArr2 = m9eVar.b;
        int iY = kfh.y(jArr, n9eVar.b(j), true, false);
        lae laeVarB = b(iY == -1 ? 0L : jArr[iY], iY != -1 ? jArr2[iY] : 0L);
        if (laeVarB.a == j || iY == jArr.length - 1) {
            return new z9e(laeVarB, laeVarB);
        }
        int i = iY + 1;
        return new z9e(laeVarB, b(jArr[i], jArr2[i]));
    }

    public final lae b(long j, long j2) {
        return new lae((j * 1000000) / ((long) this.a.e), this.b + j2);
    }

    @Override
    public final long zza() {
        return this.a.a();
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
