package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

public class a extends b {

    private final double[] f6434a;

    C0051a[] f6435b;

    private boolean f6436c = true;

    private static class C0051a {

        private static double[] f6437s = new double[91];

        double[] f6438a;

        double f6439b;

        double f6440c;

        double f6441d;

        double f6442e;

        double f6443f;

        double f6444g;

        double f6445h;

        double f6446i;

        double f6447j;

        double f6448k;

        double f6449l;

        double f6450m;

        double f6451n;

        double f6452o;

        double f6453p;

        boolean f6454q;

        boolean f6455r;

        C0051a(int i10, double d10, double d11, double d12, double d13, double d14, double d15) {
            this.f6455r = false;
            this.f6454q = i10 == 1;
            this.f6440c = d10;
            this.f6441d = d11;
            this.f6446i = 1.0d / (d11 - d10);
            if (3 == i10) {
                this.f6455r = true;
            }
            double d16 = d14 - d12;
            double d17 = d15 - d13;
            if (!this.f6455r && Math.abs(d16) >= 0.001d && Math.abs(d17) >= 0.001d) {
                this.f6438a = new double[101];
                boolean z10 = this.f6454q;
                this.f6447j = d16 * ((double) (z10 ? -1 : 1));
                this.f6448k = d17 * ((double) (z10 ? 1 : -1));
                this.f6449l = z10 ? d14 : d12;
                this.f6450m = z10 ? d13 : d15;
                a(d12, d13, d14, d15);
                this.f6451n = this.f6439b * this.f6446i;
                return;
            }
            this.f6455r = true;
            this.f6442e = d12;
            this.f6443f = d14;
            this.f6444g = d13;
            this.f6445h = d15;
            double dHypot = Math.hypot(d17, d16);
            this.f6439b = dHypot;
            this.f6451n = dHypot * this.f6446i;
            double d18 = this.f6441d;
            double d19 = this.f6440c;
            this.f6449l = d16 / (d18 - d19);
            this.f6450m = d17 / (d18 - d19);
        }

        private void a(double d10, double d11, double d12, double d13) {
            double dHypot;
            double d14 = d12 - d10;
            double d15 = d11 - d13;
            int i10 = 0;
            double d16 = 0.0d;
            double d17 = 0.0d;
            double d18 = 0.0d;
            while (true) {
                double[] dArr = f6437s;
                if (i10 >= dArr.length) {
                    break;
                }
                double d19 = d16;
                double radians = Math.toRadians((((double) i10) * 90.0d) / ((double) (dArr.length - 1)));
                double dSin = Math.sin(radians) * d14;
                double dCos = Math.cos(radians) * d15;
                if (i10 > 0) {
                    dHypot = Math.hypot(dSin - d17, dCos - d18) + d19;
                    f6437s[i10] = dHypot;
                } else {
                    dHypot = d19;
                }
                i10++;
                d18 = dCos;
                d16 = dHypot;
                d17 = dSin;
            }
            double d20 = d16;
            this.f6439b = d20;
            int i11 = 0;
            while (true) {
                double[] dArr2 = f6437s;
                if (i11 >= dArr2.length) {
                    break;
                }
                dArr2[i11] = dArr2[i11] / d20;
                i11++;
            }
            int i12 = 0;
            while (true) {
                double[] dArr3 = this.f6438a;
                if (i12 >= dArr3.length) {
                    return;
                }
                double length = ((double) i12) / ((double) (dArr3.length - 1));
                int iBinarySearch = Arrays.binarySearch(f6437s, length);
                if (iBinarySearch >= 0) {
                    this.f6438a[i12] = ((double) iBinarySearch) / ((double) (f6437s.length - 1));
                } else if (iBinarySearch == -1) {
                    this.f6438a[i12] = 0.0d;
                } else {
                    int i13 = -iBinarySearch;
                    int i14 = i13 - 2;
                    double[] dArr4 = f6437s;
                    double d21 = dArr4[i14];
                    this.f6438a[i12] = (((double) i14) + ((length - d21) / (dArr4[i13 - 1] - d21))) / ((double) (dArr4.length - 1));
                }
                i12++;
            }
        }

        double b() {
            double d10 = this.f6447j * this.f6453p;
            double dHypot = this.f6451n / Math.hypot(d10, (-this.f6448k) * this.f6452o);
            if (this.f6454q) {
                d10 = -d10;
            }
            return d10 * dHypot;
        }

        double c() {
            double d10 = this.f6447j * this.f6453p;
            double d11 = (-this.f6448k) * this.f6452o;
            double dHypot = this.f6451n / Math.hypot(d10, d11);
            return this.f6454q ? (-d11) * dHypot : d11 * dHypot;
        }

        public double d(double d10) {
            return this.f6449l;
        }

        public double e(double d10) {
            return this.f6450m;
        }

        public double f(double d10) {
            double d11 = (d10 - this.f6440c) * this.f6446i;
            double d12 = this.f6442e;
            return d12 + (d11 * (this.f6443f - d12));
        }

        public double g(double d10) {
            double d11 = (d10 - this.f6440c) * this.f6446i;
            double d12 = this.f6444g;
            return d12 + (d11 * (this.f6445h - d12));
        }

        double h() {
            return this.f6449l + (this.f6447j * this.f6452o);
        }

        double i() {
            return this.f6450m + (this.f6448k * this.f6453p);
        }

        double j(double d10) {
            if (d10 <= 0.0d) {
                return 0.0d;
            }
            if (d10 >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f6438a;
            double length = d10 * ((double) (dArr.length - 1));
            int i10 = (int) length;
            double d11 = length - ((double) i10);
            double d12 = dArr[i10];
            return d12 + (d11 * (dArr[i10 + 1] - d12));
        }

        void k(double d10) {
            double dJ = j((this.f6454q ? this.f6441d - d10 : d10 - this.f6440c) * this.f6446i) * 1.5707963267948966d;
            this.f6452o = Math.sin(dJ);
            this.f6453p = Math.cos(dJ);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    public a(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f6434a = dArr;
        this.f6435b = new C0051a[dArr.length - 1];
        int i10 = 1;
        int i11 = 1;
        int i12 = 0;
        while (true) {
            C0051a[] c0051aArr = this.f6435b;
            if (i12 >= c0051aArr.length) {
                return;
            }
            int i13 = iArr[i12];
            if (i13 == 0) {
                i11 = 3;
            } else if (i13 == 1) {
                i10 = 1;
                i11 = i10;
            } else {
                if (i13 != 2) {
                    if (i13 == 3) {
                        if (i10 != 1) {
                            i10 = 1;
                        }
                        i11 = i10;
                    }
                }
                i10 = 2;
                i11 = i10;
            }
            double d10 = dArr[i12];
            int i14 = i12 + 1;
            double d11 = dArr[i14];
            double[] dArr3 = dArr2[i12];
            double d12 = dArr3[0];
            double d13 = dArr3[1];
            double[] dArr4 = dArr2[i14];
            c0051aArr[i12] = new C0051a(i11, d10, d11, d12, d13, dArr4[0], dArr4[1]);
            i12 = i14;
        }
    }

    @Override
    public double c(double d10, int i10) {
        double dG;
        double dE;
        double dI;
        double dC;
        double dG2;
        double dE2;
        int i11 = 0;
        if (this.f6436c) {
            C0051a[] c0051aArr = this.f6435b;
            C0051a c0051a = c0051aArr[0];
            double d11 = c0051a.f6440c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0051a.f6455r) {
                    if (i10 == 0) {
                        dG2 = c0051a.f(d11);
                        dE2 = this.f6435b[0].d(d11);
                    } else {
                        dG2 = c0051a.g(d11);
                        dE2 = this.f6435b[0].e(d11);
                    }
                    return dG2 + (d12 * dE2);
                }
                c0051a.k(d11);
                if (i10 == 0) {
                    dI = this.f6435b[0].h();
                    dC = this.f6435b[0].b();
                } else {
                    dI = this.f6435b[0].i();
                    dC = this.f6435b[0].c();
                }
                return dI + (d12 * dC);
            }
            if (d10 > c0051aArr[c0051aArr.length - 1].f6441d) {
                double d13 = c0051aArr[c0051aArr.length - 1].f6441d;
                double d14 = d10 - d13;
                int length = c0051aArr.length - 1;
                if (i10 == 0) {
                    dG = c0051aArr[length].f(d13);
                    dE = this.f6435b[length].d(d13);
                } else {
                    dG = c0051aArr[length].g(d13);
                    dE = this.f6435b[length].e(d13);
                }
                return dG + (d14 * dE);
            }
        } else {
            C0051a[] c0051aArr2 = this.f6435b;
            double d15 = c0051aArr2[0].f6440c;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > c0051aArr2[c0051aArr2.length - 1].f6441d) {
                d10 = c0051aArr2[c0051aArr2.length - 1].f6441d;
            }
        }
        while (true) {
            C0051a[] c0051aArr3 = this.f6435b;
            if (i11 >= c0051aArr3.length) {
                return Double.NaN;
            }
            C0051a c0051a2 = c0051aArr3[i11];
            if (d10 <= c0051a2.f6441d) {
                if (c0051a2.f6455r) {
                    return i10 == 0 ? c0051a2.f(d10) : c0051a2.g(d10);
                }
                c0051a2.k(d10);
                return i10 == 0 ? this.f6435b[i11].h() : this.f6435b[i11].i();
            }
            i11++;
        }
    }

    @Override
    public void d(double d10, double[] dArr) {
        if (this.f6436c) {
            C0051a[] c0051aArr = this.f6435b;
            C0051a c0051a = c0051aArr[0];
            double d11 = c0051a.f6440c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0051a.f6455r) {
                    dArr[0] = c0051a.f(d11) + (this.f6435b[0].d(d11) * d12);
                    dArr[1] = this.f6435b[0].g(d11) + (d12 * this.f6435b[0].e(d11));
                    return;
                } else {
                    c0051a.k(d11);
                    dArr[0] = this.f6435b[0].h() + (this.f6435b[0].b() * d12);
                    dArr[1] = this.f6435b[0].i() + (d12 * this.f6435b[0].c());
                    return;
                }
            }
            if (d10 > c0051aArr[c0051aArr.length - 1].f6441d) {
                double d13 = c0051aArr[c0051aArr.length - 1].f6441d;
                double d14 = d10 - d13;
                int length = c0051aArr.length - 1;
                C0051a c0051a2 = c0051aArr[length];
                if (c0051a2.f6455r) {
                    dArr[0] = c0051a2.f(d13) + (this.f6435b[length].d(d13) * d14);
                    dArr[1] = this.f6435b[length].g(d13) + (d14 * this.f6435b[length].e(d13));
                    return;
                } else {
                    c0051a2.k(d10);
                    dArr[0] = this.f6435b[length].h() + (this.f6435b[length].b() * d14);
                    dArr[1] = this.f6435b[length].i() + (d14 * this.f6435b[length].c());
                    return;
                }
            }
        } else {
            C0051a[] c0051aArr2 = this.f6435b;
            double d15 = c0051aArr2[0].f6440c;
            if (d10 < d15) {
                d10 = d15;
            }
            if (d10 > c0051aArr2[c0051aArr2.length - 1].f6441d) {
                d10 = c0051aArr2[c0051aArr2.length - 1].f6441d;
            }
        }
        int i10 = 0;
        while (true) {
            C0051a[] c0051aArr3 = this.f6435b;
            if (i10 >= c0051aArr3.length) {
                return;
            }
            C0051a c0051a3 = c0051aArr3[i10];
            if (d10 <= c0051a3.f6441d) {
                if (c0051a3.f6455r) {
                    dArr[0] = c0051a3.f(d10);
                    dArr[1] = this.f6435b[i10].g(d10);
                    return;
                } else {
                    c0051a3.k(d10);
                    dArr[0] = this.f6435b[i10].h();
                    dArr[1] = this.f6435b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override
    public void e(double d10, float[] fArr) {
        if (this.f6436c) {
            C0051a[] c0051aArr = this.f6435b;
            C0051a c0051a = c0051aArr[0];
            double d11 = c0051a.f6440c;
            if (d10 < d11) {
                double d12 = d10 - d11;
                if (c0051a.f6455r) {
                    fArr[0] = (float) (c0051a.f(d11) + (this.f6435b[0].d(d11) * d12));
                    fArr[1] = (float) (this.f6435b[0].g(d11) + (d12 * this.f6435b[0].e(d11)));
                    return;
                } else {
                    c0051a.k(d11);
                    fArr[0] = (float) (this.f6435b[0].h() + (this.f6435b[0].b() * d12));
                    fArr[1] = (float) (this.f6435b[0].i() + (d12 * this.f6435b[0].c()));
                    return;
                }
            }
            if (d10 > c0051aArr[c0051aArr.length - 1].f6441d) {
                double d13 = c0051aArr[c0051aArr.length - 1].f6441d;
                double d14 = d10 - d13;
                int length = c0051aArr.length - 1;
                C0051a c0051a2 = c0051aArr[length];
                if (c0051a2.f6455r) {
                    fArr[0] = (float) (c0051a2.f(d13) + (this.f6435b[length].d(d13) * d14));
                    fArr[1] = (float) (this.f6435b[length].g(d13) + (d14 * this.f6435b[length].e(d13)));
                    return;
                } else {
                    c0051a2.k(d10);
                    fArr[0] = (float) this.f6435b[length].h();
                    fArr[1] = (float) this.f6435b[length].i();
                    return;
                }
            }
        } else {
            C0051a[] c0051aArr2 = this.f6435b;
            double d15 = c0051aArr2[0].f6440c;
            if (d10 < d15) {
                d10 = d15;
            } else if (d10 > c0051aArr2[c0051aArr2.length - 1].f6441d) {
                d10 = c0051aArr2[c0051aArr2.length - 1].f6441d;
            }
        }
        int i10 = 0;
        while (true) {
            C0051a[] c0051aArr3 = this.f6435b;
            if (i10 >= c0051aArr3.length) {
                return;
            }
            C0051a c0051a3 = c0051aArr3[i10];
            if (d10 <= c0051a3.f6441d) {
                if (c0051a3.f6455r) {
                    fArr[0] = (float) c0051a3.f(d10);
                    fArr[1] = (float) this.f6435b[i10].g(d10);
                    return;
                } else {
                    c0051a3.k(d10);
                    fArr[0] = (float) this.f6435b[i10].h();
                    fArr[1] = (float) this.f6435b[i10].i();
                    return;
                }
            }
            i10++;
        }
    }

    @Override
    public double f(double d10, int i10) {
        C0051a[] c0051aArr = this.f6435b;
        int i11 = 0;
        double d11 = c0051aArr[0].f6440c;
        if (d10 < d11) {
            d10 = d11;
        }
        if (d10 > c0051aArr[c0051aArr.length - 1].f6441d) {
            d10 = c0051aArr[c0051aArr.length - 1].f6441d;
        }
        while (true) {
            C0051a[] c0051aArr2 = this.f6435b;
            if (i11 >= c0051aArr2.length) {
                return Double.NaN;
            }
            C0051a c0051a = c0051aArr2[i11];
            if (d10 <= c0051a.f6441d) {
                if (c0051a.f6455r) {
                    return i10 == 0 ? c0051a.d(d10) : c0051a.e(d10);
                }
                c0051a.k(d10);
                return i10 == 0 ? this.f6435b[i11].b() : this.f6435b[i11].c();
            }
            i11++;
        }
    }

    @Override
    public void g(double d10, double[] dArr) {
        C0051a[] c0051aArr = this.f6435b;
        double d11 = c0051aArr[0].f6440c;
        if (d10 < d11) {
            d10 = d11;
        } else if (d10 > c0051aArr[c0051aArr.length - 1].f6441d) {
            d10 = c0051aArr[c0051aArr.length - 1].f6441d;
        }
        int i10 = 0;
        while (true) {
            C0051a[] c0051aArr2 = this.f6435b;
            if (i10 >= c0051aArr2.length) {
                return;
            }
            C0051a c0051a = c0051aArr2[i10];
            if (d10 <= c0051a.f6441d) {
                if (c0051a.f6455r) {
                    dArr[0] = c0051a.d(d10);
                    dArr[1] = this.f6435b[i10].e(d10);
                    return;
                } else {
                    c0051a.k(d10);
                    dArr[0] = this.f6435b[i10].b();
                    dArr[1] = this.f6435b[i10].c();
                    return;
                }
            }
            i10++;
        }
    }

    @Override
    public double[] h() {
        return this.f6434a;
    }
}
