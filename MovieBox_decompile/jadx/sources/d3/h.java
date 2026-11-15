package d3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import k2.i0;
import k2.m0;
import k2.n0;

final class h implements g {

    private final long[] f58879a;

    private final long[] f58880b;

    private final long f58881c;

    private final long f58882d;

    private final int f58883e;

    private h(long[] jArr, long[] jArr2, long j10, long j11, int i10) {
        this.f58879a = jArr;
        this.f58880b = jArr2;
        this.f58881c = j10;
        this.f58882d = j11;
        this.f58883e = i10;
    }

    public static h b(long j10, long j11, i0.a aVar, j0 j0Var) {
        int iH;
        j0Var.X(6);
        long jQ = j11 + ((long) aVar.f63615c) + ((long) j0Var.q());
        int iQ = j0Var.q();
        if (iQ <= 0) {
            return null;
        }
        long jD1 = a1.d1((((long) iQ) * ((long) aVar.f63619g)) - 1, aVar.f63616d);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        int iP3 = j0Var.P();
        j0Var.X(2);
        long j12 = j11 + ((long) aVar.f63615c);
        long[] jArr = new long[iP];
        long[] jArr2 = new long[iP];
        int i10 = 0;
        while (i10 < iP) {
            long j13 = jD1;
            jArr[i10] = (((long) i10) * jD1) / ((long) iP);
            jArr2[i10] = j12;
            if (iP3 == 1) {
                iH = j0Var.H();
            } else if (iP3 == 2) {
                iH = j0Var.P();
            } else if (iP3 == 3) {
                iH = j0Var.K();
            } else {
                if (iP3 != 4) {
                    return null;
                }
                iH = j0Var.L();
            }
            j12 += ((long) iH) * ((long) iP2);
            i10++;
            jD1 = j13;
        }
        long j14 = jD1;
        if (j10 != -1 && j10 != jQ) {
            u.h("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + jQ);
        }
        if (jQ != j12) {
            u.h("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + jQ + ", " + j12 + "\nSeeking will be inaccurate.");
            jQ = Math.max(jQ, j12);
        }
        return new h(jArr, jArr2, j14, jQ, aVar.f63618f);
    }

    @Override
    public long a() {
        return this.f58882d;
    }

    @Override
    public int g() {
        return this.f58883e;
    }

    @Override
    public long getDurationUs() {
        return this.f58881c;
    }

    @Override
    public m0.a getSeekPoints(long j10) {
        int iH = a1.h(this.f58879a, j10, true, true);
        n0 n0Var = new n0(this.f58879a[iH], this.f58880b[iH]);
        if (n0Var.f63657a >= j10 || iH == this.f58879a.length - 1) {
            return new m0.a(n0Var);
        }
        int i10 = iH + 1;
        return new m0.a(n0Var, new n0(this.f58879a[i10], this.f58880b[i10]));
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f58879a[a1.h(this.f58880b, j10, true, true)];
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
