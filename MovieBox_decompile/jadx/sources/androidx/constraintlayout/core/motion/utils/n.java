package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;

public abstract class n {

    protected static float f6520k = 6.2831855f;

    protected b f6521a;

    protected int f6525e;

    protected String f6526f;

    protected long f6529i;

    protected int f6522b = 0;

    protected int[] f6523c = new int[10];

    protected float[][] f6524d = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);

    protected float[] f6527g = new float[3];

    protected boolean f6528h = false;

    protected float f6530j = Float.NaN;

    protected static class a {
        static void a(int[] iArr, float[][] fArr, int i10, int i11) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i11;
            iArr2[1] = i10;
            int i12 = 2;
            while (i12 > 0) {
                int i13 = iArr2[i12 - 1];
                int i14 = i12 - 2;
                int i15 = iArr2[i14];
                if (i13 < i15) {
                    int iB = b(iArr, fArr, i13, i15);
                    iArr2[i14] = iB - 1;
                    iArr2[i12 - 1] = i13;
                    int i16 = i12 + 1;
                    iArr2[i12] = i15;
                    i12 += 2;
                    iArr2[i16] = iB + 1;
                } else {
                    i12 = i14;
                }
            }
        }

        private static int b(int[] iArr, float[][] fArr, int i10, int i11) {
            int i12 = iArr[i11];
            int i13 = i10;
            while (i10 < i11) {
                if (iArr[i10] <= i12) {
                    c(iArr, fArr, i13, i10);
                    i13++;
                }
                i10++;
            }
            c(iArr, fArr, i13, i11);
            return i13;
        }

        private static void c(int[] iArr, float[][] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float[] fArr2 = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = fArr2;
        }
    }

    protected float a(float f10) {
        float fAbs;
        switch (this.f6522b) {
            case 1:
                return Math.signum(f10 * f6520k);
            case 2:
                fAbs = Math.abs(f10);
                break;
            case 3:
                return (((f10 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f10 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f10 * f6520k);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f10 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f10 * f6520k);
        }
        return 1.0f - fAbs;
    }

    public void b(int i10, float f10, float f11, int i11, float f12) {
        int[] iArr = this.f6523c;
        int i12 = this.f6525e;
        iArr[i12] = i10;
        float[] fArr = this.f6524d[i12];
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
        this.f6522b = Math.max(this.f6522b, i11);
        this.f6525e++;
    }

    protected void c(long j10) {
        this.f6529i = j10;
    }

    public void d(String str) {
        this.f6526f = str;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    public void e(int i10) {
        int i11 = this.f6525e;
        if (i11 == 0) {
            System.err.println("Error no points added to " + this.f6526f);
            return;
        }
        a.a(this.f6523c, this.f6524d, 0, i11 - 1);
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int[] iArr = this.f6523c;
            if (i12 >= iArr.length) {
                break;
            }
            if (iArr[i12] != iArr[i12 - 1]) {
                i13++;
            }
            i12++;
        }
        if (i13 == 0) {
            i13 = 1;
        }
        double[] dArr = new double[i13];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i13, 3);
        int i14 = 0;
        for (int i15 = 0; i15 < this.f6525e; i15++) {
            if (i15 > 0) {
                int[] iArr2 = this.f6523c;
                if (iArr2[i15] != iArr2[i15 - 1]) {
                    dArr[i14] = ((double) this.f6523c[i15]) * 0.01d;
                    double[] dArr3 = dArr2[i14];
                    float[] fArr = this.f6524d[i15];
                    dArr3[0] = fArr[0];
                    dArr3[1] = fArr[1];
                    dArr3[2] = fArr[2];
                    i14++;
                }
            } else {
                dArr[i14] = ((double) this.f6523c[i15]) * 0.01d;
                double[] dArr4 = dArr2[i14];
                float[] fArr2 = this.f6524d[i15];
                dArr4[0] = fArr2[0];
                dArr4[1] = fArr2[1];
                dArr4[2] = fArr2[2];
                i14++;
            }
        }
        this.f6521a = b.a(i10, dArr, dArr2);
    }

    public String toString() {
        String str = this.f6526f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f6525e; i10++) {
            str = str + "[" + this.f6523c[i10] + " , " + decimalFormat.format(this.f6524d[i10]) + "] ";
        }
        return str;
    }
}
