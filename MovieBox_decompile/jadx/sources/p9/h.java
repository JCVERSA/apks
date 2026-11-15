package p9;

import com.google.android.exoplayer2.audio.b0;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import i9.c0;

final class h implements g {

    private final long[] f69106a;

    private final long[] f69107b;

    private final long f69108c;

    private final long f69109d;

    private h(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f69106a = jArr;
        this.f69107b = jArr2;
        this.f69108c = j10;
        this.f69109d = j11;
    }

    public static h b(long j10, long j11, b0.a aVar, d0 d0Var) {
        int iD;
        d0Var.Q(10);
        int iN = d0Var.n();
        if (iN <= 0) {
            return null;
        }
        int i10 = aVar.f23932d;
        long jN0 = p0.N0(iN, ((long) (i10 >= 32000 ? 1152 : 576)) * 1000000, i10);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        int iJ3 = d0Var.J();
        d0Var.Q(2);
        long j12 = j11 + ((long) aVar.f23931c);
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        int i11 = 0;
        long j13 = j11;
        while (i11 < iJ) {
            int i12 = iJ2;
            long j14 = j12;
            jArr[i11] = (((long) i11) * jN0) / ((long) iJ);
            jArr2[i11] = Math.max(j13, j14);
            if (iJ3 == 1) {
                iD = d0Var.D();
            } else if (iJ3 == 2) {
                iD = d0Var.J();
            } else if (iJ3 == 3) {
                iD = d0Var.G();
            } else {
                if (iJ3 != 4) {
                    return null;
                }
                iD = d0Var.H();
            }
            j13 += ((long) iD) * ((long) i12);
            i11++;
            jArr = jArr;
            iJ2 = i12;
            j12 = j14;
        }
        long[] jArr3 = jArr;
        if (j10 != -1 && j10 != j13) {
            s.i("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j13);
        }
        return new h(jArr3, jArr2, jN0, j13);
    }

    @Override
    public long a() {
        return this.f69109d;
    }

    @Override
    public long getDurationUs() {
        return this.f69108c;
    }

    @Override
    public i9.b0.a getSeekPoints(long j10) {
        int i10 = p0.i(this.f69106a, j10, true, true);
        c0 c0Var = new c0(this.f69106a[i10], this.f69107b[i10]);
        if (c0Var.f61890a >= j10 || i10 == this.f69106a.length - 1) {
            return new i9.b0.a(c0Var);
        }
        int i11 = i10 + 1;
        return new i9.b0.a(c0Var, new c0(this.f69106a[i11], this.f69107b[i11]));
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f69106a[p0.i(this.f69107b, j10, true, true)];
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
