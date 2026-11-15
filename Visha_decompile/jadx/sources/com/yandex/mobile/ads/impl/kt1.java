package com.yandex.mobile.ads.impl;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.io.IOException;

public final class kt1 implements a62 {
    private boolean A;
    private boolean B;
    private final jt1 a;

    @Nullable
    private final i40 d;

    @Nullable
    private final h40.a e;

    @Nullable
    private c f;

    @Nullable
    private jc0 g;

    @Nullable
    private g40 h;
    private int p;
    private int q;
    private int r;
    private int s;
    private boolean w;

    @Nullable
    private jc0 z;
    private final a b = new a();
    private int i = 1000;
    private int[] j = new int[1000];
    private long[] k = new long[1000];
    private long[] n = new long[1000];
    private int[] m = new int[1000];
    private int[] l = new int[1000];
    private a62.a[] o = new a62.a[1000];
    private final p12<b> c = new p12<>(new yr() {
        @Override
        public final void accept(Object obj) {
            kt1.a((kt1.b) obj);
        }
    });
    private long t = Long.MIN_VALUE;
    private long u = Long.MIN_VALUE;
    private long v = Long.MIN_VALUE;
    private boolean y = true;
    private boolean x = true;

    public static final class a {
        public int a;
        public long b;

        @Nullable
        public a62.a c;
    }

    public static final class b {
        public final jc0 a;
        public final i40.b b;

        private b(jc0 jc0Var, i40.b bVar) {
            this.a = jc0Var;
            this.b = bVar;
        }
    }

    public interface c {
    }

    public kt1(cd cdVar, @Nullable i40 i40Var, @Nullable h40.a aVar) {
        this.d = i40Var;
        this.e = aVar;
        this.a = new jt1(cdVar);
    }

    private synchronized void a(long j, int i, long j2, int i2, @Nullable a62.a aVar) {
        try {
            int i3 = this.p;
            if (i3 > 0) {
                int iC = c(i3 - 1);
                if (this.k[iC] + ((long) this.l[iC]) > j2) {
                    throw new IllegalArgumentException();
                }
            }
            this.w = (536870912 & i) != 0;
            this.v = Math.max(this.v, j);
            int iC2 = c(this.p);
            this.n[iC2] = j;
            this.k[iC2] = j2;
            this.l[iC2] = i2;
            this.m[iC2] = i;
            this.o[iC2] = aVar;
            this.j[iC2] = 0;
            if (this.c.c() || !this.c.b().a.equals(this.z)) {
                i40 i40Var = this.d;
                i40.b bVarA = i40Var != null ? i40Var.a(this.e, this.z) : i40.b.a;
                p12<b> p12Var = this.c;
                int i4 = this.q + this.p;
                jc0 jc0Var = this.z;
                jc0Var.getClass();
                p12Var.a(i4, new b(jc0Var, bVarA));
            }
            int i5 = this.p + 1;
            this.p = i5;
            int i6 = this.i;
            if (i5 == i6) {
                int i7 = i6 + 1000;
                int[] iArr = new int[i7];
                long[] jArr = new long[i7];
                long[] jArr2 = new long[i7];
                int[] iArr2 = new int[i7];
                int[] iArr3 = new int[i7];
                a62.a[] aVarArr = new a62.a[i7];
                int i8 = this.r;
                int i9 = i6 - i8;
                System.arraycopy(this.k, i8, jArr, 0, i9);
                System.arraycopy(this.n, this.r, jArr2, 0, i9);
                System.arraycopy(this.m, this.r, iArr2, 0, i9);
                System.arraycopy(this.l, this.r, iArr3, 0, i9);
                System.arraycopy(this.o, this.r, aVarArr, 0, i9);
                System.arraycopy(this.j, this.r, iArr, 0, i9);
                int i10 = this.r;
                System.arraycopy(this.k, 0, jArr, i9, i10);
                System.arraycopy(this.n, 0, jArr2, i9, i10);
                System.arraycopy(this.m, 0, iArr2, i9, i10);
                System.arraycopy(this.l, 0, iArr3, i9, i10);
                System.arraycopy(this.o, 0, aVarArr, i9, i10);
                System.arraycopy(this.j, 0, iArr, i9, i10);
                this.k = jArr;
                this.n = jArr2;
                this.m = iArr2;
                this.l = iArr3;
                this.o = aVarArr;
                this.j = iArr;
                this.r = 0;
                this.i = i7;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void j() {
        this.s = 0;
        this.a.c();
    }

    public final int c() {
        return this.q + this.s;
    }

    @Nullable
    public final synchronized jc0 d() {
        return this.y ? null : this.z;
    }

    public final int e() {
        return this.q + this.p;
    }

    public final synchronized boolean f() {
        return this.w;
    }

    @CallSuper
    public final void g() throws IOException {
        g40 g40Var = this.h;
        if (g40Var == null || g40Var.getState() != 1) {
            return;
        }
        g40.a error = this.h.getError();
        error.getClass();
        throw error;
    }

    @CallSuper
    public final void h() {
        a();
        g40 g40Var = this.h;
        if (g40Var != null) {
            g40Var.a(this.e);
            this.h = null;
            this.g = null;
        }
    }

    @CallSuper
    public final void i() {
        b(true);
        g40 g40Var = this.h;
        if (g40Var != null) {
            g40Var.a(this.e);
            this.h = null;
            this.g = null;
        }
    }

    private int c(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final synchronized long b() {
        return this.v;
    }

    public final synchronized void d(int i) {
        if (i >= 0) {
            int i2 = this.s + i;
            if (i2 <= this.p) {
                this.s = i2;
            }
        }
        throw new IllegalArgumentException();
    }

    private long b(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iC = c(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.n[iC]);
            if ((this.m[iC] & 1) != 0) {
                break;
            }
            iC--;
            if (iC == -1) {
                iC = this.i - 1;
            }
        }
        return jMax;
    }

    @CallSuper
    public final void b(boolean z) {
        this.a.b();
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.x = true;
        this.t = Long.MIN_VALUE;
        this.u = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = false;
        this.c.a();
        if (z) {
            this.z = null;
            this.y = true;
        }
    }

    @Override
    public final void b(int i, ag1 ag1Var) {
        this.a.a(i, ag1Var);
    }

    public final synchronized boolean b(long j, boolean z) {
        j();
        int iC = c(this.s);
        int i = this.s;
        int i2 = this.p;
        if (i != i2 && j >= this.n[iC] && (j <= this.v || z)) {
            int iA = a(iC, i2 - i, j, true);
            if (iA == -1) {
                return false;
            }
            this.t = j;
            this.s += iA;
            return true;
        }
        return false;
    }

    @GuardedBy("this")
    private long a(int i) {
        this.u = Math.max(this.u, b(i));
        this.p -= i;
        int i2 = this.q + i;
        this.q = i2;
        int i3 = this.r + i;
        this.r = i3;
        int i4 = this.i;
        if (i3 >= i4) {
            this.r = i3 - i4;
        }
        int i5 = this.s - i;
        this.s = i5;
        if (i5 < 0) {
            this.s = 0;
        }
        this.c.a(i2);
        if (this.p == 0) {
            int i6 = this.r;
            if (i6 == 0) {
                i6 = this.i;
            }
            int i7 = i6 - 1;
            return this.k[i7] + ((long) this.l[i7]);
        }
        return this.k[this.r];
    }

    public final void a(long j, boolean z, boolean z2) {
        long jA;
        int i;
        jt1 jt1Var = this.a;
        synchronized (this) {
            try {
                int i2 = this.p;
                jA = -1;
                if (i2 != 0) {
                    long[] jArr = this.n;
                    int i3 = this.r;
                    if (j >= jArr[i3]) {
                        if (z2 && (i = this.s) != i2) {
                            i2 = i + 1;
                        }
                        int iA = a(i3, i2, j, z);
                        if (iA != -1) {
                            jA = a(iA);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        jt1Var.a(jA);
    }

    public final void a() {
        long jA;
        jt1 jt1Var = this.a;
        synchronized (this) {
            int i = this.p;
            jA = i == 0 ? -1L : a(i);
        }
        jt1Var.a(jA);
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.n[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.m[i] & 1) != 0) {
                i3 = i4;
                if (j2 == j) {
                    break;
                }
            }
            i++;
            if (i == this.i) {
                i = 0;
            }
        }
        return i3;
    }

    @Override
    public final void a(jc0 jc0Var) {
        boolean z;
        synchronized (this) {
            z = false;
            try {
                this.y = false;
                if (!f92.a(jc0Var, this.z)) {
                    if (!this.c.c() && this.c.b().a.equals(jc0Var)) {
                        this.z = this.c.b().a;
                    } else {
                        this.z = jc0Var;
                    }
                    jc0 jc0Var2 = this.z;
                    this.A = w01.a(jc0Var2.m, jc0Var2.j);
                    this.B = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c cVar = this.f;
        if (cVar == null || !z) {
            return;
        }
        ((em1) cVar).h();
    }

    public final synchronized int a(long j, boolean z) {
        int iC = c(this.s);
        int i = this.s;
        int i2 = this.p;
        if (i != i2 && j >= this.n[iC]) {
            if (j > this.v && z) {
                return i2 - i;
            }
            int iA = a(iC, i2 - i, j, true);
            if (iA == -1) {
                return 0;
            }
            return iA;
        }
        return 0;
    }

    @CallSuper
    public final synchronized boolean a(boolean z) {
        jc0 jc0Var;
        int i = this.s;
        boolean z2 = false;
        if (i != this.p) {
            if (this.c.b(this.q + i).a != this.g) {
                return true;
            }
            int iC = c(this.s);
            g40 g40Var = this.h;
            if (g40Var == null || g40Var.getState() == 4 || ((this.m[iC] & 1073741824) == 0 && this.h.playClearSamplesWithoutKeys())) {
                z2 = true;
            }
            return z2;
        }
        if (z || this.w || ((jc0Var = this.z) != null && jc0Var != this.g)) {
            z2 = true;
        }
        return z2;
    }

    public static void a(b bVar) {
        bVar.b.release();
    }

    private void a(jc0 jc0Var, kc0 kc0Var) {
        jc0 jc0Var2 = this.g;
        boolean z = jc0Var2 == null;
        f40 f40Var = z ? null : jc0Var2.p;
        this.g = jc0Var;
        f40 f40Var2 = jc0Var.p;
        i40 i40Var = this.d;
        kc0Var.b = i40Var != null ? jc0Var.a(i40Var.a(jc0Var)) : jc0Var;
        kc0Var.a = this.h;
        if (this.d == null) {
            return;
        }
        if (z || !f92.a(f40Var, f40Var2)) {
            g40 g40Var = this.h;
            g40 g40VarB = this.d.b(this.e, jc0Var);
            this.h = g40VarB;
            kc0Var.a = g40VarB;
            if (g40Var != null) {
                g40Var.a(this.e);
            }
        }
    }

    @CallSuper
    public final int a(kc0 kc0Var, ry ryVar, int i, boolean z) {
        int i2;
        boolean z2 = (i & 2) != 0;
        a aVar = this.b;
        synchronized (this) {
            try {
                ryVar.e = false;
                int i3 = this.s;
                i2 = -5;
                if (i3 != this.p) {
                    jc0 jc0Var = this.c.b(this.q + i3).a;
                    if (!z2 && jc0Var == this.g) {
                        int iC = c(this.s);
                        g40 g40Var = this.h;
                        if (g40Var != null && g40Var.getState() != 4 && ((this.m[iC] & 1073741824) != 0 || !this.h.playClearSamplesWithoutKeys())) {
                            ryVar.e = true;
                            i2 = -3;
                        }
                        ryVar.d(this.m[iC]);
                        long j = this.n[iC];
                        ryVar.f = j;
                        if (j < this.t) {
                            ryVar.b(Integer.MIN_VALUE);
                        }
                        aVar.a = this.l[iC];
                        aVar.b = this.k[iC];
                        aVar.c = this.o[iC];
                        i2 = -4;
                    } else {
                        a(jc0Var, kc0Var);
                    }
                } else if (!z && !this.w) {
                    jc0 jc0Var2 = this.z;
                    if (jc0Var2 == null || (!z2 && jc0Var2 == this.g)) {
                        i2 = -3;
                    } else {
                        a(jc0Var2, kc0Var);
                    }
                } else {
                    ryVar.d(4);
                    i2 = -4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 == -4 && !ryVar.f()) {
            boolean z3 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z3) {
                    this.a.a(ryVar, this.b);
                } else {
                    this.a.b(ryVar, this.b);
                }
            }
            if (!z3) {
                this.s++;
            }
        }
        return i2;
    }

    @Override
    public final int a(qv qvVar, int i, boolean z) throws IOException {
        return this.a.a(qvVar, i, z);
    }

    @Override
    public final void a(long j, int i, int i2, int i3, @Nullable a62.a aVar) {
        int i4 = i & 1;
        boolean z = i4 != 0;
        if (this.x) {
            if (!z) {
                return;
            } else {
                this.x = false;
            }
        }
        if (this.A) {
            if (j < this.t) {
                return;
            }
            if (i4 == 0) {
                if (!this.B) {
                    et0.d("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.z);
                    this.B = true;
                }
                i |= 1;
            }
        }
        a(j, i, (this.a.a() - ((long) i2)) - ((long) i3), i2, aVar);
    }

    public final void a(long j) {
        this.t = j;
    }

    public final void a(@Nullable c cVar) {
        this.f = cVar;
    }
}
