package com.google.common.collect;

import java.util.Arrays;

class o3 {

    transient Object[] f30007a;

    transient int[] f30008b;

    transient int f30009c;

    transient int f30010d;

    private transient int[] f30011e;

    transient long[] f30012f;

    private transient float f30013g;

    private transient int f30014h;

    class a extends Multisets.b {

        final Object f30015a;

        int f30016b;

        a(int i10) {
            this.f30015a = o3.this.f30007a[i10];
            this.f30016b = i10;
        }

        void a() {
            int i10 = this.f30016b;
            if (i10 == -1 || i10 >= o3.this.C() || !com.google.common.base.j.a(this.f30015a, o3.this.f30007a[this.f30016b])) {
                this.f30016b = o3.this.m(this.f30015a);
            }
        }

        @Override
        public int getCount() {
            a();
            int i10 = this.f30016b;
            if (i10 == -1) {
                return 0;
            }
            return o3.this.f30008b[i10];
        }

        @Override
        public Object getElement() {
            return this.f30015a;
        }
    }

    o3() {
        n(3, 1.0f);
    }

    private void A(int i10) {
        if (this.f30011e.length >= 1073741824) {
            this.f30014h = Integer.MAX_VALUE;
            return;
        }
        int i11 = ((int) (i10 * this.f30013g)) + 1;
        int[] iArrR = r(i10);
        long[] jArr = this.f30012f;
        int length = iArrR.length - 1;
        for (int i12 = 0; i12 < this.f30009c; i12++) {
            int iH = h(jArr[i12]);
            int i13 = iH & length;
            int i14 = iArrR[i13];
            iArrR[i13] = i12;
            jArr[i12] = (((long) iH) << 32) | (((long) i14) & 4294967295L);
        }
        this.f30014h = i11;
        this.f30011e = iArrR;
    }

    private static long D(long j10, int i10) {
        return (j10 & (-4294967296L)) | (4294967295L & ((long) i10));
    }

    static o3 b() {
        return new o3();
    }

    static o3 c(int i10) {
        return new o3(i10);
    }

    private static int h(long j10) {
        return (int) (j10 >>> 32);
    }

    private static int j(long j10) {
        return (int) j10;
    }

    private int l() {
        return this.f30011e.length - 1;
    }

    private static long[] q(int i10) {
        long[] jArr = new long[i10];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] r(int i10) {
        int[] iArr = new int[i10];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private int w(Object obj, int i10) {
        int iL = l() & i10;
        int i11 = this.f30011e[iL];
        if (i11 == -1) {
            return 0;
        }
        int i12 = -1;
        while (true) {
            if (h(this.f30012f[i11]) == i10 && com.google.common.base.j.a(obj, this.f30007a[i11])) {
                int i13 = this.f30008b[i11];
                if (i12 == -1) {
                    this.f30011e[iL] = j(this.f30012f[i11]);
                } else {
                    long[] jArr = this.f30012f;
                    jArr[i12] = D(jArr[i12], j(jArr[i11]));
                }
                p(i11);
                this.f30009c--;
                this.f30010d++;
                return i13;
            }
            int iJ = j(this.f30012f[i11]);
            if (iJ == -1) {
                return 0;
            }
            i12 = i11;
            i11 = iJ;
        }
    }

    private void z(int i10) {
        int length = this.f30012f.length;
        if (i10 > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                y(iMax);
            }
        }
    }

    void B(int i10, int i11) {
        com.google.common.base.m.m(i10, this.f30009c);
        this.f30008b[i10] = i11;
    }

    int C() {
        return this.f30009c;
    }

    public void a() {
        this.f30010d++;
        Arrays.fill(this.f30007a, 0, this.f30009c, (Object) null);
        Arrays.fill(this.f30008b, 0, this.f30009c, 0);
        Arrays.fill(this.f30011e, -1);
        Arrays.fill(this.f30012f, -1L);
        this.f30009c = 0;
    }

    void d(int i10) {
        if (i10 > this.f30012f.length) {
            y(i10);
        }
        if (i10 >= this.f30014h) {
            A(Math.max(2, Integer.highestOneBit(i10 - 1) << 1));
        }
    }

    int e() {
        return this.f30009c == 0 ? -1 : 0;
    }

    public int f(Object obj) {
        int iM = m(obj);
        if (iM == -1) {
            return 0;
        }
        return this.f30008b[iM];
    }

    l3.a g(int i10) {
        com.google.common.base.m.m(i10, this.f30009c);
        return new a(i10);
    }

    Object i(int i10) {
        com.google.common.base.m.m(i10, this.f30009c);
        return this.f30007a[i10];
    }

    int k(int i10) {
        com.google.common.base.m.m(i10, this.f30009c);
        return this.f30008b[i10];
    }

    int m(Object obj) {
        int iD = v2.d(obj);
        int iJ = this.f30011e[l() & iD];
        while (iJ != -1) {
            long j10 = this.f30012f[iJ];
            if (h(j10) == iD && com.google.common.base.j.a(obj, this.f30007a[iJ])) {
                return iJ;
            }
            iJ = j(j10);
        }
        return -1;
    }

    void n(int i10, float f10) {
        com.google.common.base.m.e(i10 >= 0, "Initial capacity must be non-negative");
        com.google.common.base.m.e(f10 > 0.0f, "Illegal load factor");
        int iA = v2.a(i10, f10);
        this.f30011e = r(iA);
        this.f30013g = f10;
        this.f30007a = new Object[i10];
        this.f30008b = new int[i10];
        this.f30012f = q(i10);
        this.f30014h = Math.max(1, (int) (iA * f10));
    }

    void o(int i10, Object obj, int i11, int i12) {
        this.f30012f[i10] = (((long) i12) << 32) | 4294967295L;
        this.f30007a[i10] = obj;
        this.f30008b[i10] = i11;
    }

    void p(int i10) {
        int iC = C() - 1;
        if (i10 >= iC) {
            this.f30007a[i10] = null;
            this.f30008b[i10] = 0;
            this.f30012f[i10] = -1;
            return;
        }
        Object[] objArr = this.f30007a;
        objArr[i10] = objArr[iC];
        int[] iArr = this.f30008b;
        iArr[i10] = iArr[iC];
        objArr[iC] = null;
        iArr[iC] = 0;
        long[] jArr = this.f30012f;
        long j10 = jArr[iC];
        jArr[i10] = j10;
        jArr[iC] = -1;
        int iH = h(j10) & l();
        int[] iArr2 = this.f30011e;
        int i11 = iArr2[iH];
        if (i11 == iC) {
            iArr2[iH] = i10;
            return;
        }
        while (true) {
            long j11 = this.f30012f[i11];
            int iJ = j(j11);
            if (iJ == iC) {
                this.f30012f[i11] = D(j11, i10);
                return;
            }
            i11 = iJ;
        }
    }

    int s(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f30009c) {
            return i11;
        }
        return -1;
    }

    int t(int i10, int i11) {
        return i10 - 1;
    }

    public int u(Object obj, int i10) {
        e2.d(i10, "count");
        long[] jArr = this.f30012f;
        Object[] objArr = this.f30007a;
        int[] iArr = this.f30008b;
        int iD = v2.d(obj);
        int iL = l() & iD;
        int i11 = this.f30009c;
        int[] iArr2 = this.f30011e;
        int i12 = iArr2[iL];
        if (i12 == -1) {
            iArr2[iL] = i11;
        } else {
            while (true) {
                long j10 = jArr[i12];
                if (h(j10) == iD && com.google.common.base.j.a(obj, objArr[i12])) {
                    int i13 = iArr[i12];
                    iArr[i12] = i10;
                    return i13;
                }
                int iJ = j(j10);
                if (iJ == -1) {
                    jArr[i12] = D(j10, i11);
                    break;
                }
                i12 = iJ;
            }
        }
        if (i11 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i14 = i11 + 1;
        z(i14);
        o(i11, obj, i10, iD);
        this.f30009c = i14;
        if (i11 >= this.f30014h) {
            A(this.f30011e.length * 2);
        }
        this.f30010d++;
        return 0;
    }

    public int v(Object obj) {
        return w(obj, v2.d(obj));
    }

    int x(int i10) {
        return w(this.f30007a[i10], h(this.f30012f[i10]));
    }

    void y(int i10) {
        this.f30007a = Arrays.copyOf(this.f30007a, i10);
        this.f30008b = Arrays.copyOf(this.f30008b, i10);
        long[] jArr = this.f30012f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i10);
        if (i10 > length) {
            Arrays.fill(jArrCopyOf, length, i10, -1L);
        }
        this.f30012f = jArrCopyOf;
    }

    o3(o3 o3Var) {
        n(o3Var.C(), 1.0f);
        int iE = o3Var.e();
        while (iE != -1) {
            u(o3Var.i(iE), o3Var.k(iE));
            iE = o3Var.s(iE);
        }
    }

    o3(int i10) {
        this(i10, 1.0f);
    }

    o3(int i10, float f10) {
        n(i10, f10);
    }
}
