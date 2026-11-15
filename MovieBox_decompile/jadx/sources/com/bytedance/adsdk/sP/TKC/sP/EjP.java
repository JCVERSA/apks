package com.bytedance.adsdk.sP.TKC.sP;

import java.util.Arrays;

public class EjP {
    private final float[] Sj;
    private final int[] sP;

    public EjP(float[] fArr, int[] iArr) {
        this.Sj = fArr;
        this.sP = iArr;
    }

    public float[] Sj() {
        return this.Sj;
    }

    public int TKC() {
        return this.sP.length;
    }

    public int[] sP() {
        return this.sP;
    }

    public void Sj(EjP ejP, EjP ejP2, float f10) {
        if (ejP.sP.length == ejP2.sP.length) {
            for (int i10 = 0; i10 < ejP.sP.length; i10++) {
                this.Sj[i10] = com.bytedance.adsdk.sP.vS.HiB.Sj(ejP.Sj[i10], ejP2.Sj[i10], f10);
                this.sP[i10] = com.bytedance.adsdk.sP.vS.sP.Sj(f10, ejP.sP[i10], ejP2.sP[i10]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + ejP.sP.length + " vs " + ejP2.sP.length + ")");
    }

    public EjP Sj(float[] fArr) {
        int[] iArr = new int[fArr.length];
        for (int i10 = 0; i10 < fArr.length; i10++) {
            iArr[i10] = Sj(fArr[i10]);
        }
        return new EjP(fArr, iArr);
    }

    private int Sj(float f10) {
        int iBinarySearch = Arrays.binarySearch(this.Sj, f10);
        if (iBinarySearch >= 0) {
            return this.sP[iBinarySearch];
        }
        int i10 = -(iBinarySearch + 1);
        if (i10 == 0) {
            return this.sP[0];
        }
        int[] iArr = this.sP;
        if (i10 == iArr.length - 1) {
            return iArr[iArr.length - 1];
        }
        float[] fArr = this.Sj;
        int i11 = i10 - 1;
        float f11 = fArr[i11];
        return com.bytedance.adsdk.sP.vS.sP.Sj((f10 - f11) / (fArr[i10] - f11), iArr[i11], iArr[i10]);
    }
}
