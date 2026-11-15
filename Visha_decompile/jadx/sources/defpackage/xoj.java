package defpackage;

import com.google.android.gms.internal.ads.zzrr;
import com.google.android.gms.internal.ads.zzs;
import java.util.Objects;

public final class xoj implements rae {
    public boolean A;
    public pjj B;
    public final roj a;
    public final ojj d;
    public final jjj e;
    public voj f;
    public erj g;
    public int o;
    public int p;
    public int q;
    public int r;
    public boolean v;
    public erj y;
    public final toj b = new toj();
    public int h = 1000;
    public long[] i = new long[1000];
    public long[] j = new long[1000];
    public long[] m = new long[1000];
    public int[] l = new int[1000];
    public int[] k = new int[1000];
    public qae[] n = new qae[1000];
    public final dpj c = new dpj(new qfg() {
        @Override
        public final void zza(Object obj) {
            njj njjVar = ((uoj) obj).b;
        }
    });
    public long s = Long.MIN_VALUE;
    public long t = Long.MIN_VALUE;
    public long u = Long.MIN_VALUE;
    public boolean x = true;
    public boolean w = true;
    public boolean z = true;

    public xoj(nrj nrjVar, ojj ojjVar, jjj jjjVar) {
        this.d = ojjVar;
        this.e = jjjVar;
        this.a = new roj(nrjVar);
    }

    public final synchronized long A() {
        return this.u;
    }

    public final synchronized erj B() {
        if (this.x) {
            return null;
        }
        return this.y;
    }

    public final void C(long j, boolean z, boolean z2) {
        this.a.c(l(j, false, z2));
    }

    public final void D() {
        this.a.c(m());
    }

    public final void E() throws zzrr {
        pjj pjjVar = this.B;
        if (pjjVar != null) {
            throw pjjVar.a();
        }
    }

    public final void F() {
        D();
        q();
    }

    public final void G() {
        H(true);
        q();
    }

    public final void H(boolean z) {
        this.a.f();
        this.o = 0;
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.w = true;
        this.s = Long.MIN_VALUE;
        this.t = Long.MIN_VALUE;
        this.u = Long.MIN_VALUE;
        this.v = false;
        this.c.d();
        if (z) {
            this.y = null;
            this.x = true;
            this.z = true;
        }
    }

    public final void I(long j) {
        this.s = j;
    }

    public final void J(voj vojVar) {
        this.f = vojVar;
    }

    public final synchronized void K(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.r + i <= this.o) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        n7g.d(z);
        this.r += i;
    }

    public final synchronized boolean L() {
        return this.v;
    }

    public final synchronized boolean M(boolean z) {
        boolean z2 = true;
        if (s()) {
            if (((uoj) this.c.a(this.p + this.r)).a != this.g) {
                return true;
            }
            return t(j(this.r));
        }
        if (!z && !this.v) {
            erj erjVar = this.y;
            if (erjVar == null) {
                z2 = false;
            } else if (erjVar == this.g) {
                return false;
            }
        }
        return z2;
    }

    public final synchronized boolean N(int i) {
        r();
        int i2 = this.p;
        if (i >= i2 && i <= this.o + i2) {
            this.s = Long.MIN_VALUE;
            this.r = i - i2;
            return true;
        }
        return false;
    }

    @Override
    public final int a(k8j k8jVar, int i, boolean z) {
        return pae.a(this, k8jVar, i, z);
    }

    @Override
    public final void b(u4h u4hVar, int i, int i2) {
        this.a.h(u4hVar, i);
    }

    @Override
    public final void c(long j) {
    }

    @Override
    public final void d(u4h u4hVar, int i) {
        pae.b(this, u4hVar, i);
    }

    @Override
    public final int e(k8j k8jVar, int i, boolean z, int i2) {
        return this.a.a(k8jVar, i, z);
    }

    @Override
    public final void f(erj erjVar) {
        boolean zU = u(erjVar);
        voj vojVar = this.f;
        if (vojVar == null || !zU) {
            return;
        }
        vojVar.l(erjVar);
    }

    @Override
    public final void g(long j, int i, int i2, int i3, qae qaeVar) {
        if (this.w) {
            if ((i & 1) == 0) {
                return;
            } else {
                this.w = false;
            }
        }
        if (this.z) {
            if (j < this.s) {
                return;
            }
            if ((i & 1) == 0) {
                if (!this.A) {
                    zrg.f("SampleQueue", "Overriding unexpected non-sync sample for format: ".concat(String.valueOf(this.y)));
                    this.A = true;
                }
                i |= 1;
            }
        }
        int i4 = i;
        o(j, i4, (this.a.b() - ((long) i2)) - ((long) i3), i2, qaeVar);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0028 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0019, B:11:0x0023, B:13:0x0028, B:15:0x002e, B:17:0x0036, B:20:0x003d, B:30:0x0057, B:27:0x0049), top: B:37:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x002e A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0019, B:11:0x0023, B:13:0x0028, B:15:0x002e, B:17:0x0036, B:20:0x003d, B:30:0x0057, B:27:0x0049), top: B:37:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x0036 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0019, B:11:0x0023, B:13:0x0028, B:15:0x002e, B:17:0x0036, B:20:0x003d, B:30:0x0057, B:27:0x0049), top: B:37:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x003c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0046 A[EDGE_INSN: B:25:0x0046->B:28:0x0054 BREAK  A[LOOP:0: B:14:0x002c->B:20:0x003d]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0047 A[EDGE_INSN: B:26:0x0047->B:28:0x0054 BREAK  A[LOOP:0: B:14:0x002c->B:20:0x003d]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0049 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0019, B:11:0x0023, B:13:0x0028, B:15:0x002e, B:17:0x0036, B:20:0x003d, B:30:0x0057, B:27:0x0049), top: B:37:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x0057 A[Catch: all -> 0x0040, TRY_LEAVE, TryCatch #0 {all -> 0x0040, blocks: (B:3:0x0001, B:5:0x0011, B:7:0x0019, B:11:0x0023, B:13:0x0028, B:15:0x002e, B:17:0x0036, B:20:0x003d, B:30:0x0057, B:27:0x0049), top: B:37:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x003d A[SYNTHETIC] */
    public final synchronized boolean h(long j, boolean z) {
        int i;
        int i2;
        try {
            r();
            int i3 = this.r;
            int iJ = j(i3);
            if (s() && j >= this.m[iJ]) {
                if (j <= this.u) {
                    if (this.z) {
                        i = this.o - i3;
                        i2 = 0;
                        while (true) {
                            if (i2 < i) {
                                if (z) {
                                    i = -1;
                                    break;
                                }
                                break;
                            }
                            if (this.m[iJ] < j) {
                                i = i2;
                                break;
                            }
                            iJ++;
                            if (iJ == this.h) {
                                iJ = 0;
                            }
                            i2++;
                        }
                    } else {
                        i = i(iJ, this.o - i3, j, true);
                    }
                    if (i == -1) {
                        this.s = j;
                        this.r += i;
                        return true;
                    }
                } else if (z) {
                    z = true;
                    if (this.z) {
                        i = this.o - i3;
                        i2 = 0;
                        while (true) {
                            if (i2 < i) {
                                if (z) {
                                    i = -1;
                                    break;
                                }
                                break;
                                break;
                            }
                            if (this.m[iJ] < j) {
                                i = i2;
                                break;
                            }
                            iJ++;
                            if (iJ == this.h) {
                                iJ = 0;
                            }
                            i2++;
                        }
                    } else {
                        i = i(iJ, this.o - i3, j, true);
                    }
                    if (i == -1) {
                        this.s = j;
                        this.r += i;
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int i(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.m[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.l[i] & 1) != 0) {
                i3 = i4;
                if (j2 == j) {
                    break;
                }
            }
            i++;
            if (i == this.h) {
                i = 0;
            }
        }
        return i3;
    }

    public final int j(int i) {
        int i2 = this.q + i;
        int i3 = this.h;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final synchronized int k(p7j p7jVar, xzi xziVar, boolean z, boolean z2, toj tojVar) {
        try {
            xziVar.e = false;
            if (!s()) {
                if (!z2 && !this.v) {
                    erj erjVar = this.y;
                    if (erjVar == null || (!z && erjVar == this.g)) {
                        return -3;
                    }
                    p(erjVar, p7jVar);
                    return -5;
                }
                xziVar.c(4);
                xziVar.f = Long.MIN_VALUE;
                return -4;
            }
            erj erjVar2 = ((uoj) this.c.a(this.p + this.r)).a;
            if (!z && erjVar2 == this.g) {
                int iJ = j(this.r);
                if (!t(iJ)) {
                    xziVar.e = true;
                    return -3;
                }
                xziVar.c(this.l[iJ]);
                if (this.r == this.o - 1 && (z2 || this.v)) {
                    xziVar.a(536870912);
                }
                xziVar.f = this.m[iJ];
                tojVar.a = this.k[iJ];
                tojVar.b = this.j[iJ];
                tojVar.c = this.n[iJ];
                return -4;
            }
            p(erjVar2, p7jVar);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long l(long j, boolean z, boolean z2) {
        int i;
        try {
            int i2 = this.o;
            if (i2 != 0) {
                long[] jArr = this.m;
                int i3 = this.q;
                if (j >= jArr[i3]) {
                    if (z2 && (i = this.r) != i2) {
                        i2 = i + 1;
                    }
                    int i4 = i(i3, i2, j, false);
                    if (i4 != -1) {
                        return n(i4);
                    }
                }
            }
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long m() {
        int i = this.o;
        if (i == 0) {
            return -1L;
        }
        return n(i);
    }

    public final long n(int i) {
        long j = this.t;
        long jMax = Long.MIN_VALUE;
        if (i != 0) {
            int iJ = j(i - 1);
            for (int i2 = 0; i2 < i; i2++) {
                jMax = Math.max(jMax, this.m[iJ]);
                if ((this.l[iJ] & 1) != 0) {
                    break;
                }
                iJ--;
                if (iJ == -1) {
                    iJ = this.h - 1;
                }
            }
        }
        this.t = Math.max(j, jMax);
        this.o -= i;
        int i3 = this.p + i;
        this.p = i3;
        int i4 = this.q + i;
        this.q = i4;
        int i5 = this.h;
        if (i4 >= i5) {
            this.q = i4 - i5;
        }
        int i6 = this.r - i;
        this.r = i6;
        if (i6 < 0) {
            this.r = 0;
        }
        this.c.e(i3);
        if (this.o != 0) {
            return this.j[this.q];
        }
        int i7 = this.q;
        if (i7 == 0) {
            i7 = this.h;
        }
        int i8 = i7 - 1;
        return this.j[i8] + ((long) this.k[i8]);
    }

    public final synchronized void o(long j, int i, long j2, int i2, qae qaeVar) {
        try {
            int i3 = this.o;
            if (i3 > 0) {
                int iJ = j(i3 - 1);
                n7g.d(this.j[iJ] + ((long) this.k[iJ]) <= j2);
            }
            this.v = (536870912 & i) != 0;
            this.u = Math.max(this.u, j);
            int iJ2 = j(this.o);
            this.m[iJ2] = j;
            this.j[iJ2] = j2;
            this.k[iJ2] = i2;
            this.l[iJ2] = i;
            this.n[iJ2] = qaeVar;
            this.i[iJ2] = 0;
            dpj dpjVar = this.c;
            if (dpjVar.f() || !((uoj) dpjVar.b()).a.equals(this.y)) {
                erj erjVar = this.y;
                if (erjVar == null) {
                    throw null;
                }
                dpjVar.c(this.p + this.o, new uoj(erjVar, this.d.b(this.e, erjVar), null));
            }
            int i4 = this.o + 1;
            this.o = i4;
            int i5 = this.h;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                long[] jArr = new long[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr = new int[i6];
                int[] iArr2 = new int[i6];
                qae[] qaeVarArr = new qae[i6];
                int i7 = this.q;
                int i8 = i5 - i7;
                System.arraycopy(this.j, i7, jArr2, 0, i8);
                System.arraycopy(this.m, this.q, jArr3, 0, i8);
                System.arraycopy(this.l, this.q, iArr, 0, i8);
                System.arraycopy(this.k, this.q, iArr2, 0, i8);
                System.arraycopy(this.n, this.q, qaeVarArr, 0, i8);
                System.arraycopy(this.i, this.q, jArr, 0, i8);
                int i9 = this.q;
                System.arraycopy(this.j, 0, jArr2, i8, i9);
                System.arraycopy(this.m, 0, jArr3, i8, i9);
                System.arraycopy(this.l, 0, iArr, i8, i9);
                System.arraycopy(this.k, 0, iArr2, i8, i9);
                System.arraycopy(this.n, 0, qaeVarArr, i8, i9);
                System.arraycopy(this.i, 0, jArr, i8, i9);
                this.j = jArr2;
                this.m = jArr3;
                this.l = iArr;
                this.k = iArr2;
                this.n = qaeVarArr;
                this.i = jArr;
                this.q = 0;
                this.h = i6;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void p(erj erjVar, p7j p7jVar) {
        erj erjVar2 = this.g;
        zzs zzsVar = erjVar2 == null ? null : erjVar2.s;
        this.g = erjVar;
        zzs zzsVar2 = erjVar.s;
        ojj ojjVar = this.d;
        p7jVar.a = erjVar.c(ojjVar.a(erjVar));
        p7jVar.b = this.B;
        if (erjVar2 == null || !Objects.equals(zzsVar, zzsVar2)) {
            pjj pjjVarC = ojjVar.c(this.e, erjVar);
            this.B = pjjVarC;
            p7jVar.b = pjjVarC;
        }
    }

    public final void q() {
        if (this.B != null) {
            this.B = null;
            this.g = null;
        }
    }

    public final synchronized void r() {
        this.r = 0;
        this.a.g();
    }

    public final boolean s() {
        return this.r != this.o;
    }

    public final boolean t(int i) {
        if (this.B != null) {
            return (this.l[i] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    public final synchronized boolean u(erj erjVar) {
        try {
            this.x = false;
            if (Objects.equals(erjVar, this.y)) {
                return false;
            }
            dpj dpjVar = this.c;
            if (dpjVar.f() || !((uoj) dpjVar.b()).a.equals(erjVar)) {
                this.y = erjVar;
            } else {
                this.y = ((uoj) dpjVar.b()).a;
            }
            boolean z = this.z;
            erj erjVar2 = this.y;
            this.z = z & bue.f(erjVar2.o, erjVar2.k);
            this.A = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int v() {
        return this.p;
    }

    public final int w() {
        return this.p + this.r;
    }

    public final synchronized int x(long j, boolean z) {
        int i = this.r;
        int iJ = j(i);
        if (s() && j >= this.m[iJ]) {
            if (j > this.u && z) {
                return this.o - i;
            }
            int i2 = i(iJ, this.o - i, j, true);
            if (i2 == -1) {
                return 0;
            }
            return i2;
        }
        return 0;
    }

    public final int y() {
        return this.p + this.o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        if (r9 != 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int z(p7j p7jVar, xzi xziVar, int i, boolean z) {
        boolean z2 = (i & 2) != 0;
        toj tojVar = this.b;
        int iK = k(p7jVar, xziVar, z2, z, tojVar);
        if (iK != -4) {
            return iK;
        }
        if (!xziVar.f()) {
            int i2 = i & 1;
            if ((i & 4) == 0) {
                if (i2 == 0) {
                    this.a.e(xziVar, tojVar);
                    this.r++;
                    return -4;
                }
                this.a.d(xziVar, tojVar);
            }
        }
        return -4;
    }
}
