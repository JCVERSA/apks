package com.google.common.collect;

import androidx.media3.muxer.MuxerUtil;
import defpackage.k71;
import defpackage.kc7;
import defpackage.mo4;
import defpackage.xd8;
import java.util.Arrays;

public class k {
    public transient Object[] a;
    public transient int[] b;
    public transient int c;
    public transient int d;
    public transient int[] e;
    public transient long[] f;
    public transient float g;
    public transient int h;

    public class a extends Multisets.b {
        public final Object b;
        public int c;

        public a(int i) {
            this.b = k.this.a[i];
            this.c = i;
        }

        public void a() {
            int i = this.c;
            if (i == -1 || i >= k.this.C() || !kc7.a(this.b, k.this.a[this.c])) {
                this.c = k.this.m(this.b);
            }
        }

        @Override
        public int getCount() {
            a();
            int i = this.c;
            if (i == -1) {
                return 0;
            }
            return k.this.b[i];
        }

        @Override
        public Object getElement() {
            return this.b;
        }
    }

    public k() {
        n(3, 1.0f);
    }

    public static long D(long j, int i) {
        return (j & (-4294967296L)) | (MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i));
    }

    public static k b() {
        return new k();
    }

    public static k c(int i) {
        return new k(i);
    }

    public static int h(long j) {
        return (int) (j >>> 32);
    }

    public static int j(long j) {
        return (int) j;
    }

    public static long[] q(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    public static int[] r(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    public final void A(int i) {
        if (this.e.length >= 1073741824) {
            this.h = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.g)) + 1;
        int[] iArrR = r(i);
        long[] jArr = this.f;
        int length = iArrR.length - 1;
        for (int i3 = 0; i3 < this.c; i3++) {
            int iH = h(jArr[i3]);
            int i4 = iH & length;
            int i5 = iArrR[i4];
            iArrR[i4] = i3;
            jArr[i3] = (((long) iH) << 32) | (((long) i5) & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        }
        this.h = i2;
        this.e = iArrR;
    }

    public void B(int i, int i2) {
        xd8.m(i, this.c);
        this.b[i] = i2;
    }

    public int C() {
        return this.c;
    }

    public void a() {
        this.d++;
        Arrays.fill(this.a, 0, this.c, (Object) null);
        Arrays.fill(this.b, 0, this.c, 0);
        Arrays.fill(this.e, -1);
        Arrays.fill(this.f, -1L);
        this.c = 0;
    }

    public void d(int i) {
        if (i > this.f.length) {
            y(i);
        }
        if (i >= this.h) {
            A(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    public int e() {
        return this.c == 0 ? -1 : 0;
    }

    public int f(Object obj) {
        int iM = m(obj);
        if (iM == -1) {
            return 0;
        }
        return this.b[iM];
    }

    public j.a g(int i) {
        xd8.m(i, this.c);
        return new a(i);
    }

    public Object i(int i) {
        xd8.m(i, this.c);
        return this.a[i];
    }

    public int k(int i) {
        xd8.m(i, this.c);
        return this.b[i];
    }

    public final int l() {
        return this.e.length - 1;
    }

    public int m(Object obj) {
        int iD = mo4.d(obj);
        int iJ = this.e[l() & iD];
        while (iJ != -1) {
            long j = this.f[iJ];
            if (h(j) == iD && kc7.a(obj, this.a[iJ])) {
                return iJ;
            }
            iJ = j(j);
        }
        return -1;
    }

    public void n(int i, float f) {
        xd8.e(i >= 0, "Initial capacity must be non-negative");
        xd8.e(f > 0.0f, "Illegal load factor");
        int iA = mo4.a(i, f);
        this.e = r(iA);
        this.g = f;
        this.a = new Object[i];
        this.b = new int[i];
        this.f = q(i);
        this.h = Math.max(1, (int) (iA * f));
    }

    public void o(int i, Object obj, int i2, int i3) {
        this.f[i] = (((long) i3) << 32) | MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        this.a[i] = obj;
        this.b[i] = i2;
    }

    public void p(int i) {
        int iC = C() - 1;
        if (i >= iC) {
            this.a[i] = null;
            this.b[i] = 0;
            this.f[i] = -1;
            return;
        }
        Object[] objArr = this.a;
        objArr[i] = objArr[iC];
        int[] iArr = this.b;
        iArr[i] = iArr[iC];
        objArr[iC] = null;
        iArr[iC] = 0;
        long[] jArr = this.f;
        long j = jArr[iC];
        jArr[i] = j;
        jArr[iC] = -1;
        int iH = h(j) & l();
        int[] iArr2 = this.e;
        int i2 = iArr2[iH];
        if (i2 == iC) {
            iArr2[iH] = i;
            return;
        }
        while (true) {
            long j2 = this.f[i2];
            int iJ = j(j2);
            if (iJ == iC) {
                this.f[i2] = D(j2, i);
                return;
            }
            i2 = iJ;
        }
    }

    public int s(int i) {
        int i2 = i + 1;
        if (i2 < this.c) {
            return i2;
        }
        return -1;
    }

    public int t(int i, int i2) {
        return i - 1;
    }

    public int u(Object obj, int i) {
        k71.d(i, "count");
        long[] jArr = this.f;
        Object[] objArr = this.a;
        int[] iArr = this.b;
        int iD = mo4.d(obj);
        int iL = l() & iD;
        int i2 = this.c;
        int[] iArr2 = this.e;
        int i3 = iArr2[iL];
        if (i3 == -1) {
            iArr2[iL] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (h(j) == iD && kc7.a(obj, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return i4;
                }
                int iJ = j(j);
                if (iJ == -1) {
                    jArr[i3] = D(j, i2);
                    break;
                }
                i3 = iJ;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i5 = i2 + 1;
        z(i5);
        o(i2, obj, i, iD);
        this.c = i5;
        if (i2 >= this.h) {
            A(this.e.length * 2);
        }
        this.d++;
        return 0;
    }

    public int v(Object obj) {
        return w(obj, mo4.d(obj));
    }

    public final int w(Object obj, int i) {
        int iL = l() & i;
        int i2 = this.e[iL];
        if (i2 == -1) {
            return 0;
        }
        int i3 = -1;
        while (true) {
            if (h(this.f[i2]) == i && kc7.a(obj, this.a[i2])) {
                int i4 = this.b[i2];
                if (i3 == -1) {
                    this.e[iL] = j(this.f[i2]);
                } else {
                    long[] jArr = this.f;
                    jArr[i3] = D(jArr[i3], j(jArr[i2]));
                }
                p(i2);
                this.c--;
                this.d++;
                return i4;
            }
            int iJ = j(this.f[i2]);
            if (iJ == -1) {
                return 0;
            }
            i3 = i2;
            i2 = iJ;
        }
    }

    public int x(int i) {
        return w(this.a[i], h(this.f[i]));
    }

    public void y(int i) {
        this.a = Arrays.copyOf(this.a, i);
        this.b = Arrays.copyOf(this.b, i);
        long[] jArr = this.f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.f = jArrCopyOf;
    }

    public final void z(int i) {
        int length = this.f.length;
        if (i > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                y(iMax);
            }
        }
    }

    public k(k kVar) {
        n(kVar.C(), 1.0f);
        int iE = kVar.e();
        while (iE != -1) {
            u(kVar.i(iE), kVar.k(iE));
            iE = kVar.s(iE);
        }
    }

    public k(int i) {
        this(i, 1.0f);
    }

    public k(int i, float f) {
        n(i, f);
    }
}
