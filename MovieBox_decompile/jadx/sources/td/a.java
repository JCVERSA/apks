package td;

import com.google.zxing.NotFoundException;
import sd.p;

public abstract class a extends p {

    private final int[] f72691b;

    private final int[] f72694e;

    private final int[] f72695f;

    private final int[] f72690a = new int[4];

    private final float[] f72692c = new float[4];

    private final float[] f72693d = new float[4];

    protected a() {
        int[] iArr = new int[8];
        this.f72691b = iArr;
        this.f72694e = new int[iArr.length / 2];
        this.f72695f = new int[iArr.length / 2];
    }

    protected static void h(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 < f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] - 1;
    }

    protected static void o(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 > f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] + 1;
    }

    protected static boolean p(int[] iArr) {
        int i10 = iArr[0] + iArr[1];
        float f10 = i10 / ((iArr[2] + i10) + iArr[3]);
        if (f10 < 0.7916667f || f10 > 0.89285713f) {
            return false;
        }
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MIN_VALUE;
        for (int i13 : iArr) {
            if (i13 > i12) {
                i12 = i13;
            }
            if (i13 < i11) {
                i11 = i13;
            }
        }
        return i12 < i11 * 10;
    }

    protected static int q(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            if (p.e(iArr, iArr2[i10], 0.45f) < 0.2f) {
                return i10;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected final int[] i() {
        return this.f72691b;
    }

    protected final int[] j() {
        return this.f72690a;
    }

    protected final int[] k() {
        return this.f72695f;
    }

    protected final float[] l() {
        return this.f72693d;
    }

    protected final int[] m() {
        return this.f72694e;
    }

    protected final float[] n() {
        return this.f72692c;
    }
}
