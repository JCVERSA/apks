package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

public class g {

    double[] f6480c;

    String f6481d;

    f f6482e;

    int f6483f;

    float[] f6478a = new float[0];

    double[] f6479b = new double[0];

    double f6484g = 6.283185307179586d;

    private boolean f6485h = false;

    public void a(double d10, float f10) {
        int length = this.f6478a.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.f6479b, d10);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.f6479b = Arrays.copyOf(this.f6479b, length);
        this.f6478a = Arrays.copyOf(this.f6478a, length);
        this.f6480c = new double[length];
        double[] dArr = this.f6479b;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.f6479b[iBinarySearch] = d10;
        this.f6478a[iBinarySearch] = f10;
        this.f6485h = false;
    }

    double b(double d10) {
        if (d10 <= 0.0d) {
            d10 = 1.0E-5d;
        } else if (d10 >= 1.0d) {
            d10 = 0.999999d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f6479b, d10);
        if (iBinarySearch > 0 || iBinarySearch == 0) {
            return 0.0d;
        }
        int i10 = -iBinarySearch;
        int i11 = i10 - 1;
        float[] fArr = this.f6478a;
        float f10 = fArr[i11];
        int i12 = i10 - 2;
        float f11 = fArr[i12];
        double[] dArr = this.f6479b;
        double d11 = dArr[i11];
        double d12 = dArr[i12];
        double d13 = ((double) (f10 - f11)) / (d11 - d12);
        return (d10 * d13) + (((double) f11) - (d13 * d12));
    }

    double c(double d10) {
        if (d10 < 0.0d) {
            d10 = 0.0d;
        } else if (d10 > 1.0d) {
            d10 = 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.f6479b, d10);
        if (iBinarySearch > 0) {
            return 1.0d;
        }
        if (iBinarySearch == 0) {
            return 0.0d;
        }
        int i10 = -iBinarySearch;
        int i11 = i10 - 1;
        float[] fArr = this.f6478a;
        float f10 = fArr[i11];
        int i12 = i10 - 2;
        float f11 = fArr[i12];
        double[] dArr = this.f6479b;
        double d11 = dArr[i11];
        double d12 = dArr[i12];
        double d13 = ((double) (f10 - f11)) / (d11 - d12);
        return this.f6480c[i12] + ((((double) f11) - (d13 * d12)) * (d10 - d12)) + ((d13 * ((d10 * d10) - (d12 * d12))) / 2.0d);
    }

    public double d(double d10, double d11, double d12) {
        double dC = d11 + c(d10);
        double dB = b(d10) + d12;
        switch (this.f6483f) {
            case 1:
                return 0.0d;
            case 2:
                return dB * 4.0d * Math.signum((((dC * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return dB * 2.0d;
            case 4:
                return (-dB) * 2.0d;
            case 5:
                double d13 = this.f6484g;
                return (-d13) * dB * Math.sin(d13 * dC);
            case 6:
                return dB * 4.0d * ((((dC * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.f6482e.f(dC % 1.0d, 0);
            default:
                double d14 = this.f6484g;
                return dB * d14 * Math.cos(d14 * dC);
        }
    }

    public double e(double d10, double d11) {
        double dAbs;
        double dC = c(d10) + d11;
        switch (this.f6483f) {
            case 1:
                return Math.signum(0.5d - (dC % 1.0d));
            case 2:
                dAbs = Math.abs((((dC * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((dC * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((dC * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f6484g * (d11 + dC));
            case 6:
                double dAbs2 = 1.0d - Math.abs(((dC * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.f6482e.c(dC % 1.0d, 0);
            default:
                return Math.sin(this.f6484g * dC);
        }
        return 1.0d - dAbs;
    }

    public void f() {
        double d10 = 0.0d;
        int i10 = 0;
        while (true) {
            float[] fArr = this.f6478a;
            if (i10 >= fArr.length) {
                break;
            }
            d10 += (double) fArr[i10];
            i10++;
        }
        double d11 = 0.0d;
        int i11 = 1;
        while (true) {
            float[] fArr2 = this.f6478a;
            if (i11 >= fArr2.length) {
                break;
            }
            int i12 = i11 - 1;
            float f10 = (fArr2[i12] + fArr2[i11]) / 2.0f;
            double[] dArr = this.f6479b;
            d11 += (dArr[i11] - dArr[i12]) * ((double) f10);
            i11++;
        }
        int i13 = 0;
        while (true) {
            float[] fArr3 = this.f6478a;
            if (i13 >= fArr3.length) {
                break;
            }
            fArr3[i13] = (float) (((double) fArr3[i13]) * (d10 / d11));
            i13++;
        }
        this.f6480c[0] = 0.0d;
        int i14 = 1;
        while (true) {
            float[] fArr4 = this.f6478a;
            if (i14 >= fArr4.length) {
                this.f6485h = true;
                return;
            }
            int i15 = i14 - 1;
            float f11 = (fArr4[i15] + fArr4[i14]) / 2.0f;
            double[] dArr2 = this.f6479b;
            double d12 = dArr2[i14] - dArr2[i15];
            double[] dArr3 = this.f6480c;
            dArr3[i14] = dArr3[i15] + (d12 * ((double) f11));
            i14++;
        }
    }

    public void g(int i10, String str) {
        this.f6483f = i10;
        this.f6481d = str;
        if (str != null) {
            this.f6482e = f.i(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f6479b) + " period=" + Arrays.toString(this.f6478a);
    }
}
