package androidx.constraintlayout.core.motion.utils;

public class e extends b {

    private double[] f6468a;

    private double[][] f6469b;

    private double f6470c;

    private boolean f6471d = true;

    double[] f6472e;

    public e(double[] dArr, double[][] dArr2) {
        this.f6470c = Double.NaN;
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.f6472e = new double[length2];
        this.f6468a = dArr;
        this.f6469b = dArr2;
        if (length2 <= 2) {
            return;
        }
        int i10 = 0;
        double d10 = 0.0d;
        while (true) {
            double d11 = d10;
            if (i10 >= dArr.length) {
                this.f6470c = 0.0d;
                return;
            }
            double d12 = dArr2[i10][0];
            if (i10 > 0) {
                Math.hypot(d12 - d10, d12 - d11);
            }
            i10++;
            d10 = d12;
        }
    }

    @Override
    public double c(double d10, int i10) {
        double d11;
        double d12;
        double dF;
        double[] dArr = this.f6468a;
        int length = dArr.length;
        int i11 = 0;
        if (this.f6471d) {
            double d13 = dArr[0];
            if (d10 <= d13) {
                d11 = this.f6469b[0][i10];
                d12 = d10 - d13;
                dF = f(d13, i10);
            } else {
                int i12 = length - 1;
                double d14 = dArr[i12];
                if (d10 >= d14) {
                    d11 = this.f6469b[i12][i10];
                    d12 = d10 - d14;
                    dF = f(d14, i10);
                }
            }
            return d11 + (d12 * dF);
        }
        if (d10 <= dArr[0]) {
            return this.f6469b[0][i10];
        }
        int i13 = length - 1;
        if (d10 >= dArr[i13]) {
            return this.f6469b[i13][i10];
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f6468a;
            double d15 = dArr2[i11];
            if (d10 == d15) {
                return this.f6469b[i11][i10];
            }
            int i14 = i11 + 1;
            double d16 = dArr2[i14];
            if (d10 < d16) {
                double d17 = (d10 - d15) / (d16 - d15);
                double[][] dArr3 = this.f6469b;
                return (dArr3[i11][i10] * (1.0d - d17)) + (dArr3[i14][i10] * d17);
            }
            i11 = i14;
        }
        return 0.0d;
    }

    @Override
    public void d(double d10, double[] dArr) {
        double[] dArr2 = this.f6468a;
        int length = dArr2.length;
        int i10 = 0;
        int length2 = this.f6469b[0].length;
        if (this.f6471d) {
            double d11 = dArr2[0];
            if (d10 <= d11) {
                g(d11, this.f6472e);
                for (int i11 = 0; i11 < length2; i11++) {
                    dArr[i11] = this.f6469b[0][i11] + ((d10 - this.f6468a[0]) * this.f6472e[i11]);
                }
                return;
            }
            int i12 = length - 1;
            double d12 = dArr2[i12];
            if (d10 >= d12) {
                g(d12, this.f6472e);
                while (i10 < length2) {
                    dArr[i10] = this.f6469b[i12][i10] + ((d10 - this.f6468a[i12]) * this.f6472e[i10]);
                    i10++;
                }
                return;
            }
        } else {
            if (d10 <= dArr2[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = this.f6469b[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d10 >= dArr2[i14]) {
                while (i10 < length2) {
                    dArr[i10] = this.f6469b[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d10 == this.f6468a[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    dArr[i16] = this.f6469b[i15][i16];
                }
            }
            double[] dArr3 = this.f6468a;
            int i17 = i15 + 1;
            double d13 = dArr3[i17];
            if (d10 < d13) {
                double d14 = dArr3[i15];
                double d15 = (d10 - d14) / (d13 - d14);
                while (i10 < length2) {
                    double[][] dArr4 = this.f6469b;
                    dArr[i10] = (dArr4[i15][i10] * (1.0d - d15)) + (dArr4[i17][i10] * d15);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override
    public void e(double d10, float[] fArr) {
        double[] dArr = this.f6468a;
        int length = dArr.length;
        int i10 = 0;
        int length2 = this.f6469b[0].length;
        if (this.f6471d) {
            double d11 = dArr[0];
            if (d10 <= d11) {
                g(d11, this.f6472e);
                for (int i11 = 0; i11 < length2; i11++) {
                    fArr[i11] = (float) (this.f6469b[0][i11] + ((d10 - this.f6468a[0]) * this.f6472e[i11]));
                }
                return;
            }
            int i12 = length - 1;
            double d12 = dArr[i12];
            if (d10 >= d12) {
                g(d12, this.f6472e);
                while (i10 < length2) {
                    fArr[i10] = (float) (this.f6469b[i12][i10] + ((d10 - this.f6468a[i12]) * this.f6472e[i10]));
                    i10++;
                }
                return;
            }
        } else {
            if (d10 <= dArr[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) this.f6469b[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d10 >= dArr[i14]) {
                while (i10 < length2) {
                    fArr[i10] = (float) this.f6469b[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d10 == this.f6468a[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    fArr[i16] = (float) this.f6469b[i15][i16];
                }
            }
            double[] dArr2 = this.f6468a;
            int i17 = i15 + 1;
            double d13 = dArr2[i17];
            if (d10 < d13) {
                double d14 = dArr2[i15];
                double d15 = (d10 - d14) / (d13 - d14);
                while (i10 < length2) {
                    double[][] dArr3 = this.f6469b;
                    fArr[i10] = (float) ((dArr3[i15][i10] * (1.0d - d15)) + (dArr3[i17][i10] * d15));
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
      0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public double f(double d10, int i10) {
        double[] dArr = this.f6468a;
        int length = dArr.length;
        int i11 = 0;
        double d11 = dArr[0];
        if (d10 < d11) {
            d10 = d11;
        } else {
            d11 = dArr[length - 1];
            if (d10 >= d11) {
                d10 = d11;
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f6468a;
            int i12 = i11 + 1;
            double d12 = dArr2[i12];
            if (d10 <= d12) {
                double d13 = d12 - dArr2[i11];
                double[][] dArr3 = this.f6469b;
                return (dArr3[i12][i10] - dArr3[i11][i10]) / d13;
            }
            i11 = i12;
        }
        return 0.0d;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
      0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public void g(double d10, double[] dArr) {
        double[] dArr2 = this.f6468a;
        int length = dArr2.length;
        int length2 = this.f6469b[0].length;
        double d11 = dArr2[0];
        if (d10 <= d11) {
            d10 = d11;
        } else {
            d11 = dArr2[length - 1];
            if (d10 >= d11) {
                d10 = d11;
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.f6468a;
            int i11 = i10 + 1;
            double d12 = dArr3[i11];
            if (d10 <= d12) {
                double d13 = d12 - dArr3[i10];
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.f6469b;
                    dArr[i12] = (dArr4[i11][i12] - dArr4[i10][i12]) / d13;
                }
                return;
            }
            i10 = i11;
        }
    }

    @Override
    public double[] h() {
        return this.f6468a;
    }
}
