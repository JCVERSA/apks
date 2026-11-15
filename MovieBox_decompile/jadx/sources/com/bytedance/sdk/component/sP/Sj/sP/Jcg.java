package com.bytedance.sdk.component.sP.Sj.sP;

import java.util.Arrays;

final class Jcg extends EjP {
    final transient int[] Dq;
    final transient byte[][] Jcg;

    Jcg(Sj sj2, int i10) {
        super(null);
        uA.Sj(sj2.sP, 0L, i10);
        HiB hiB = sj2.Sj;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = hiB.TKC;
            int i15 = hiB.sP;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            hiB = hiB.vS;
        }
        this.Jcg = new byte[i13][];
        this.Dq = new int[i13 * 2];
        HiB hiB2 = sj2.Sj;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.Jcg;
            bArr[i16] = hiB2.Sj;
            int i17 = hiB2.TKC;
            int i18 = hiB2.sP;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.Dq;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            hiB2.EjP = true;
            i16++;
            hiB2 = hiB2.vS;
        }
    }

    private EjP HiB() {
        return new EjP(EjP());
    }

    @Override
    public byte[] EjP() {
        int[] iArr = this.Dq;
        byte[][] bArr = this.Jcg;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.Dq;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.Jcg[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override
    public String Sj() {
        return HiB().Sj();
    }

    @Override
    public int TKC() {
        return this.Dq[this.Jcg.length - 1];
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EjP) {
            EjP ejP = (EjP) obj;
            if (ejP.TKC() == TKC() && Sj(0, ejP, 0, TKC())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        int i10 = this.HiB;
        if (i10 != 0) {
            return i10;
        }
        int length = this.Jcg.length;
        int i11 = 0;
        int i12 = 1;
        int i13 = 0;
        while (i11 < length) {
            byte[] bArr = this.Jcg[i11];
            int[] iArr = this.Dq;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i13) + i14;
            while (i14 < i16) {
                i12 = (i12 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i13 = i15;
        }
        this.HiB = i12;
        return i12;
    }

    @Override
    public String sP() {
        return HiB().sP();
    }

    @Override
    public String toString() {
        return HiB().toString();
    }

    private int sP(int i10) {
        int iBinarySearch = Arrays.binarySearch(this.Dq, 0, this.Jcg.length, i10 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    @Override
    public EjP Sj(int i10, int i11) {
        return HiB().Sj(i10, i11);
    }

    @Override
    public byte Sj(int i10) {
        uA.Sj(this.Dq[this.Jcg.length - 1], i10, 1L);
        int iSP = sP(i10);
        int i11 = iSP == 0 ? 0 : this.Dq[iSP - 1];
        int[] iArr = this.Dq;
        byte[][] bArr = this.Jcg;
        return bArr[iSP][(i10 - i11) + iArr[bArr.length + iSP]];
    }

    @Override
    public boolean Sj(int i10, EjP ejP, int i11, int i12) {
        if (i10 < 0 || i10 > TKC() - i12) {
            return false;
        }
        int iSP = sP(i10);
        while (i12 > 0) {
            int i13 = iSP == 0 ? 0 : this.Dq[iSP - 1];
            int iMin = Math.min(i12, ((this.Dq[iSP] - i13) + i13) - i10);
            int[] iArr = this.Dq;
            byte[][] bArr = this.Jcg;
            if (!ejP.Sj(i11, bArr[iSP], (i10 - i13) + iArr[bArr.length + iSP], iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iSP++;
        }
        return true;
    }

    @Override
    public boolean Sj(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > TKC() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int iSP = sP(i10);
        while (i12 > 0) {
            int i13 = iSP == 0 ? 0 : this.Dq[iSP - 1];
            int iMin = Math.min(i12, ((this.Dq[iSP] - i13) + i13) - i10);
            int[] iArr = this.Dq;
            byte[][] bArr2 = this.Jcg;
            if (!uA.Sj(bArr2[iSP], (i10 - i13) + iArr[bArr2.length + iSP], bArr, i11, iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iSP++;
        }
        return true;
    }
}
