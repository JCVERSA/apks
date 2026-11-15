package defpackage;

public final class t9e implements kae {
    public final xsg a;
    public final xsg b;
    public long c;

    public t9e(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        n7g.d(length == length2);
        if (length2 <= 0 || jArr2[0] <= 0) {
            this.a = new xsg(length2);
            this.b = new xsg(length2);
        } else {
            int i = length2 + 1;
            xsg xsgVar = new xsg(i);
            this.a = xsgVar;
            xsg xsgVar2 = new xsg(i);
            this.b = xsgVar2;
            xsgVar.c(0L);
            xsgVar2.c(0L);
        }
        this.a.d(jArr);
        this.b.d(jArr2);
        this.c = j;
    }

    @Override
    public final z9e a(long j) {
        xsg xsgVar = this.b;
        if (xsgVar.a() == 0) {
            lae laeVar = lae.c;
            return new z9e(laeVar, laeVar);
        }
        int iW = kfh.w(xsgVar, j, true, true);
        long jB = xsgVar.b(iW);
        xsg xsgVar2 = this.a;
        lae laeVar2 = new lae(jB, xsgVar2.b(iW));
        if (laeVar2.a == j || iW == xsgVar.a() - 1) {
            return new z9e(laeVar2, laeVar2);
        }
        int i = iW + 1;
        return new z9e(laeVar2, new lae(xsgVar.b(i), xsgVar2.b(i)));
    }

    @Override
    public final long zza() {
        return this.c;
    }

    @Override
    public final boolean zzh() {
        return this.b.a() > 0;
    }
}
