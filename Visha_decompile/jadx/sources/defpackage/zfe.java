package defpackage;

import java.math.BigInteger;

public final class zfe implements kae {
    public final bge a;

    public zfe(bge bgeVar, age ageVar) {
        this.a = bgeVar;
    }

    @Override
    public final z9e a(long j) {
        bge bgeVar = this.a;
        long jLongValue = bgeVar.b + BigInteger.valueOf(bgeVar.d.f(j)).multiply(BigInteger.valueOf(bgeVar.c - bgeVar.b)).divide(BigInteger.valueOf(bgeVar.f)).longValue();
        long j2 = bgeVar.b;
        long j3 = bgeVar.c - 1;
        int i = kfh.a;
        lae laeVar = new lae(j, Math.max(j2, Math.min(jLongValue - 30000, j3)));
        return new z9e(laeVar, laeVar);
    }

    @Override
    public final long zza() {
        bge bgeVar = this.a;
        return bgeVar.d.e(bgeVar.f);
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
