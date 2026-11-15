package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

public abstract class i {

    protected b f6488a;

    protected int[] f6489b = new int[10];

    protected float[] f6490c = new float[10];

    private int f6491d;

    private String f6492e;

    private static class a {
        static void a(int[] iArr, float[] fArr, int i10, int i11) {
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

        private static int b(int[] iArr, float[] fArr, int i10, int i11) {
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

        private static void c(int[] iArr, float[] fArr, int i10, int i11) {
            int i12 = iArr[i10];
            iArr[i10] = iArr[i11];
            iArr[i11] = i12;
            float f10 = fArr[i10];
            fArr[i10] = fArr[i11];
            fArr[i11] = f10;
        }
    }

    public float a(float f10) {
        return (float) this.f6488a.c(f10, 0);
    }

    public float b(float f10) {
        return (float) this.f6488a.f(f10, 0);
    }

    public void c(int i10, float f10) {
        int[] iArr = this.f6489b;
        if (iArr.length < this.f6491d + 1) {
            this.f6489b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f6490c;
            this.f6490c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f6489b;
        int i11 = this.f6491d;
        iArr2[i11] = i10;
        this.f6490c[i11] = f10;
        this.f6491d = i11 + 1;
    }

    public void d(String str) {
        this.f6492e = str;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    public void e(int i10) {
        int i11 = this.f6491d;
        if (i11 == 0) {
            return;
        }
        a.a(this.f6489b, this.f6490c, 0, i11 - 1);
        int i12 = 1;
        for (int i13 = 1; i13 < this.f6491d; i13++) {
            int[] iArr = this.f6489b;
            if (iArr[i13 - 1] != iArr[i13]) {
                i12++;
            }
        }
        double[] dArr = new double[i12];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, 1);
        int i14 = 0;
        for (int i15 = 0; i15 < this.f6491d; i15++) {
            if (i15 > 0) {
                int[] iArr2 = this.f6489b;
                if (iArr2[i15] != iArr2[i15 - 1]) {
                    dArr[i14] = ((double) this.f6489b[i15]) * 0.01d;
                    dArr2[i14][0] = this.f6490c[i15];
                    i14++;
                }
            } else {
                dArr[i14] = ((double) this.f6489b[i15]) * 0.01d;
                dArr2[i14][0] = this.f6490c[i15];
                i14++;
            }
        }
        this.f6488a = b.a(i10, dArr, dArr2);
    }

    public String toString() {
        String str = this.f6492e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i10 = 0; i10 < this.f6491d; i10++) {
            str = str + "[" + this.f6489b[i10] + " , " + decimalFormat.format(this.f6490c[i10]) + "] ";
        }
        return str;
    }
}
