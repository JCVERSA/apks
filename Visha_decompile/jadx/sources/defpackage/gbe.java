package defpackage;

import java.util.Arrays;

public final class gbe {
    public final fbe a;
    public final rae b;
    public final int c;
    public final int d;
    public final long e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public long l;
    public long[] m;
    public int[] n;

    public gbe(int i, fbe fbeVar, rae raeVar) {
        this.a = fbeVar;
        int iA = fbeVar.a();
        boolean z = true;
        if (iA != 1) {
            if (iA == 2) {
                iA = 2;
            } else {
                z = false;
            }
        }
        n7g.d(z);
        this.c = h(i, iA == 2 ? 1667497984 : 1651965952);
        this.e = fbeVar.b();
        this.b = raeVar;
        this.d = iA == 2 ? h(i, 1650720768) : -1;
        this.l = -1L;
        this.m = new long[512];
        this.n = new int[512];
        this.f = fbeVar.d;
    }

    public static int h(int i, int i2) {
        return (((i % 10) + 48) << 8) | ((i / 10) + 48) | i2;
    }

    public final z9e a(long j) {
        if (this.k == 0) {
            lae laeVar = new lae(0L, this.l);
            return new z9e(laeVar, laeVar);
        }
        int i = (int) (j / i(1));
        int iX = kfh.x(this.n, i, true, true);
        if (this.n[iX] == i) {
            lae laeVarJ = j(iX);
            return new z9e(laeVarJ, laeVarJ);
        }
        lae laeVarJ2 = j(iX);
        int i2 = iX + 1;
        return i2 < this.m.length ? new z9e(laeVarJ2, j(i2)) : new z9e(laeVarJ2, laeVarJ2);
    }

    public final void b(long j, boolean z) {
        if (this.l == -1) {
            this.l = j;
        }
        if (z) {
            if (this.k == this.n.length) {
                long[] jArr = this.m;
                this.m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                int[] iArr = this.n;
                this.n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
            }
            long[] jArr2 = this.m;
            int i = this.k;
            jArr2[i] = j;
            this.n[i] = this.j;
            this.k = i + 1;
        }
        this.j++;
    }

    public final void c() {
        int i;
        this.m = Arrays.copyOf(this.m, this.k);
        this.n = Arrays.copyOf(this.n, this.k);
        if ((this.c & 1651965952) != 1651965952 || this.a.f == 0 || (i = this.k) <= 0) {
            return;
        }
        this.f = i;
    }

    public final void d(int i) {
        this.g = i;
        this.h = i;
    }

    public final void e(long j) {
        if (this.k == 0) {
            this.i = 0;
        } else {
            this.i = this.n[kfh.y(this.m, j, true, true)];
        }
    }

    public final boolean f(int i) {
        return this.c == i || this.d == i;
    }

    public final boolean g(d9e d9eVar) {
        int i = this.h;
        rae raeVar = this.b;
        int iA = i - raeVar.a(d9eVar, i, false);
        this.h = iA;
        boolean z = iA == 0;
        if (z) {
            if (this.g > 0) {
                raeVar.g(i(this.i), Arrays.binarySearch(this.n, this.i) >= 0 ? 1 : 0, this.g, 0, null);
            }
            this.i++;
        }
        return z;
    }

    public final long i(int i) {
        return (this.e * ((long) i)) / ((long) this.f);
    }

    public final lae j(int i) {
        return new lae(((long) this.n[i]) * i(1), this.m[i]);
    }
}
