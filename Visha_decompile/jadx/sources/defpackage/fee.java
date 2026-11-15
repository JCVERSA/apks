package defpackage;

public final class fee implements eee {
    public final long[] a;
    public final long[] b;
    public final long c;
    public final long d;
    public final int e;

    public fee(long[] jArr, long[] jArr2, long j, long j2, long j3, int i) {
        this.a = jArr;
        this.b = jArr2;
        this.c = j;
        this.d = j3;
        this.e = i;
    }

    public static fee b(long j, long j2, u9e u9eVar, u4h u4hVar) {
        long jMax;
        int iG;
        u4hVar.m(6);
        int iA = u4hVar.A();
        long j3 = u9eVar.c;
        long j4 = iA;
        int iA2 = u4hVar.A();
        if (iA2 <= 0) {
            return null;
        }
        long jO = kfh.O((((long) iA2) * ((long) u9eVar.g)) - 1, u9eVar.d);
        int iK = u4hVar.K();
        int iK2 = u4hVar.K();
        int iK3 = u4hVar.K();
        u4hVar.m(2);
        long j5 = j2 + ((long) u9eVar.c);
        long[] jArr = new long[iK];
        long[] jArr2 = new long[iK];
        for (int i = 0; i < iK; i++) {
            jArr[i] = (((long) i) * jO) / ((long) iK);
            jArr2[i] = j5;
            if (iK3 == 1) {
                iG = u4hVar.G();
            } else if (iK3 == 2) {
                iG = u4hVar.K();
            } else if (iK3 == 3) {
                iG = u4hVar.I();
            } else {
                if (iK3 != 4) {
                    return null;
                }
                iG = u4hVar.J();
            }
            j5 += ((long) iG) * ((long) iK2);
        }
        long j6 = j2 + j3;
        long j7 = j4 + j6;
        if (j != -1 && j != j7) {
            zrg.f("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j7);
        }
        if (j7 != j5) {
            zrg.f("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + j7 + ", " + j5 + "\nSeeking will be inaccurate.");
            jMax = Math.max(j7, j5);
        } else {
            jMax = j7;
        }
        return new fee(jArr, jArr2, jO, j6, jMax, u9eVar.f);
    }

    @Override
    public final z9e a(long j) {
        long[] jArr = this.a;
        int iY = kfh.y(jArr, j, true, true);
        long j2 = jArr[iY];
        long[] jArr2 = this.b;
        lae laeVar = new lae(j2, jArr2[iY]);
        if (laeVar.a >= j || iY == jArr.length - 1) {
            return new z9e(laeVar, laeVar);
        }
        int i = iY + 1;
        return new z9e(laeVar, new lae(jArr[i], jArr2[i]));
    }

    @Override
    public final long c(long j) {
        return this.a[kfh.y(this.b, j, true, true)];
    }

    @Override
    public final long zza() {
        return this.c;
    }

    @Override
    public final int zzc() {
        return this.e;
    }

    @Override
    public final long zzd() {
        return this.d;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
