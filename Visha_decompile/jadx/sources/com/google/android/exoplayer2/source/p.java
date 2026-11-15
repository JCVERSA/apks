package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.source.p;
import defpackage.ag1;
import defpackage.blb;
import defpackage.cb;
import defpackage.fva;
import defpackage.ju9;
import defpackage.ms1;
import defpackage.o44;
import defpackage.op5;
import defpackage.qp6;
import defpackage.qw7;
import defpackage.zi;

public class p implements fva {
    public com.google.android.exoplayer2.k A;
    public com.google.android.exoplayer2.k B;
    public int C;
    public boolean D;
    public boolean E;
    public long F;
    public boolean G;
    public final o a;
    public final com.google.android.exoplayer2.drm.c d;
    public final com.google.android.exoplayer2.drm.b.a e;
    public d f;
    public com.google.android.exoplayer2.k g;
    public DrmSession h;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean w;
    public boolean z;
    public final b b = new b();
    public int i = 1000;
    public int[] j = new int[1000];
    public long[] k = new long[1000];
    public long[] n = new long[1000];
    public int[] m = new int[1000];
    public int[] l = new int[1000];
    public fva.a[] o = new fva.a[1000];
    public final ju9 c = new ju9(new ag1() {
        @Override
        public final void accept(Object obj) {
            p.E((p.c) obj);
        }
    });
    public long t = Long.MIN_VALUE;
    public long u = Long.MIN_VALUE;
    public long v = Long.MIN_VALUE;
    public boolean y = true;
    public boolean x = true;

    public static final class b {
        public int a;
        public long b;
        public fva.a c;
    }

    public static final class c {
        public final com.google.android.exoplayer2.k a;
        public final com.google.android.exoplayer2.drm.c.b b;

        public c(com.google.android.exoplayer2.k kVar, com.google.android.exoplayer2.drm.c.b bVar) {
            this.a = kVar;
            this.b = bVar;
        }
    }

    public interface d {
        void b(com.google.android.exoplayer2.k kVar);
    }

    public p(cb cbVar, com.google.android.exoplayer2.drm.c cVar, com.google.android.exoplayer2.drm.b.a aVar) {
        this.d = cVar;
        this.e = aVar;
        this.a = new o(cbVar);
    }

    public static void E(c cVar) {
        cVar.b.release();
    }

    public static p k(cb cbVar, com.google.android.exoplayer2.drm.c cVar, com.google.android.exoplayer2.drm.b.a aVar) {
        return new p(cbVar, (com.google.android.exoplayer2.drm.c) zi.e(cVar), (com.google.android.exoplayer2.drm.b.a) zi.e(aVar));
    }

    public final int A() {
        return this.q + this.p;
    }

    public final boolean B() {
        return this.s != this.p;
    }

    public final synchronized boolean C() {
        return this.w;
    }

    public synchronized boolean D(boolean z) {
        com.google.android.exoplayer2.k kVar;
        boolean z2 = true;
        if (B()) {
            if (((c) this.c.e(w())).a != this.g) {
                return true;
            }
            return F(x(this.s));
        }
        if (!z && !this.w && ((kVar = this.B) == null || kVar == this.g)) {
            z2 = false;
        }
        return z2;
    }

    public final boolean F(int i) {
        DrmSession drmSession = this.h;
        return drmSession == null || drmSession.getState() == 4 || ((this.m[i] & 1073741824) == 0 && this.h.playClearSamplesWithoutKeys());
    }

    public void G() throws DrmSession.DrmSessionException {
        DrmSession drmSession = this.h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) zi.e(this.h.getError()));
        }
    }

    public final void H(com.google.android.exoplayer2.k kVar, o44 o44Var) {
        com.google.android.exoplayer2.k kVar2 = this.g;
        boolean z = kVar2 == null;
        DrmInitData drmInitData = z ? null : kVar2.p;
        this.g = kVar;
        DrmInitData drmInitData2 = kVar.p;
        com.google.android.exoplayer2.drm.c cVar = this.d;
        o44Var.b = cVar != null ? kVar.c(cVar.d(kVar)) : kVar;
        o44Var.a = this.h;
        if (this.d == null) {
            return;
        }
        if (z || !blb.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.h;
            DrmSession drmSessionB = this.d.b(this.e, kVar);
            this.h = drmSessionB;
            o44Var.a = drmSessionB;
            if (drmSession != null) {
                drmSession.a(this.e);
            }
        }
    }

    public final synchronized int I(o44 o44Var, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, b bVar) {
        try {
            decoderInputBuffer.e = false;
            if (!B()) {
                if (!z2 && !this.w) {
                    com.google.android.exoplayer2.k kVar = this.B;
                    if (kVar == null || (!z && kVar == this.g)) {
                        return -3;
                    }
                    H((com.google.android.exoplayer2.k) zi.e(kVar), o44Var);
                    return -5;
                }
                decoderInputBuffer.k(4);
                return -4;
            }
            com.google.android.exoplayer2.k kVar2 = ((c) this.c.e(w())).a;
            if (!z && kVar2 == this.g) {
                int iX = x(this.s);
                if (!F(iX)) {
                    decoderInputBuffer.e = true;
                    return -3;
                }
                decoderInputBuffer.k(this.m[iX]);
                long j = this.n[iX];
                decoderInputBuffer.f = j;
                if (j < this.t) {
                    decoderInputBuffer.a(Integer.MIN_VALUE);
                }
                bVar.a = this.l[iX];
                bVar.b = this.k[iX];
                bVar.c = this.o[iX];
                return -4;
            }
            H(kVar2, o44Var);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void J() {
        p();
        M();
    }

    public int K(o44 o44Var, DecoderInputBuffer decoderInputBuffer, int i, boolean z) {
        int I = I(o44Var, decoderInputBuffer, (i & 2) != 0, z, this.b);
        if (I == -4 && !decoderInputBuffer.h()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z2) {
                    this.a.e(decoderInputBuffer, this.b);
                } else {
                    this.a.l(decoderInputBuffer, this.b);
                }
            }
            if (!z2) {
                this.s++;
            }
        }
        return I;
    }

    public void L() {
        O(true);
        M();
    }

    public final void M() {
        DrmSession drmSession = this.h;
        if (drmSession != null) {
            drmSession.a(this.e);
            this.h = null;
            this.g = null;
        }
    }

    public final void N() {
        O(false);
    }

    public void O(boolean z) {
        this.a.m();
        this.p = 0;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.x = true;
        this.t = Long.MIN_VALUE;
        this.u = Long.MIN_VALUE;
        this.v = Long.MIN_VALUE;
        this.w = false;
        this.c.b();
        if (z) {
            this.A = null;
            this.B = null;
            this.y = true;
        }
    }

    public final synchronized void P() {
        this.s = 0;
        this.a.n();
    }

    public final synchronized boolean Q(long j, boolean z) {
        P();
        int iX = x(this.s);
        if (B() && j >= this.n[iX] && (j <= this.v || z)) {
            int iR = r(iX, this.p - this.s, j, true);
            if (iR == -1) {
                return false;
            }
            this.t = j;
            this.s += iR;
            return true;
        }
        return false;
    }

    public final void R(long j) {
        this.t = j;
    }

    public final synchronized boolean S(com.google.android.exoplayer2.k kVar) {
        try {
            this.y = false;
            if (blb.c(kVar, this.B)) {
                return false;
            }
            if (this.c.g() || !((c) this.c.f()).a.equals(kVar)) {
                this.B = kVar;
            } else {
                this.B = ((c) this.c.f()).a;
            }
            com.google.android.exoplayer2.k kVar2 = this.B;
            this.D = qp6.a(kVar2.m, kVar2.j);
            this.E = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void T(d dVar) {
        this.f = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void U(int i) {
        boolean z;
        if (i >= 0) {
            try {
                if (this.s + i <= this.p) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        } else {
            z = false;
        }
        zi.a(z);
        this.s += i;
    }

    @Override
    public final void a(qw7 qw7Var, int i, int i2) {
        this.a.p(qw7Var, i);
    }

    @Override
    public final void b(com.google.android.exoplayer2.k kVar) {
        com.google.android.exoplayer2.k kVarS = s(kVar);
        this.z = false;
        this.A = kVar;
        boolean zS = S(kVarS);
        d dVar = this.f;
        if (dVar == null || !zS) {
            return;
        }
        dVar.b(kVarS);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override
    public void e(long j, int i, int i2, int i3, fva.a aVar) {
        int i4;
        if (this.z) {
            b((com.google.android.exoplayer2.k) zi.i(this.A));
        }
        int i5 = i & 1;
        boolean z = i5 != 0;
        if (this.x) {
            if (!z) {
                return;
            } else {
                this.x = false;
            }
        }
        long j2 = this.F + j;
        if (!this.D) {
            i4 = i;
        } else {
            if (j2 < this.t) {
                return;
            }
            if (i5 == 0) {
                if (!this.E) {
                    op5.i("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.E = true;
                }
                i4 = i | 1;
            } else {
                i4 = i;
            }
        }
        if (this.G) {
            if (!z || !h(j2)) {
                return;
            } else {
                this.G = false;
            }
        }
        i(j2, i4, (this.a.d() - ((long) i2)) - ((long) i3), i2, aVar);
    }

    @Override
    public final int f(ms1 ms1Var, int i, boolean z, int i2) {
        return this.a.o(ms1Var, i, z);
    }

    public final synchronized boolean h(long j) {
        if (this.p == 0) {
            return j > this.u;
        }
        if (u() >= j) {
            return false;
        }
        q(this.q + j(j));
        return true;
    }

    public final synchronized void i(long j, int i, long j2, int i2, fva.a aVar) {
        try {
            int i3 = this.p;
            if (i3 > 0) {
                int iX = x(i3 - 1);
                zi.a(this.k[iX] + ((long) this.l[iX]) <= j2);
            }
            this.w = (536870912 & i) != 0;
            this.v = Math.max(this.v, j);
            int iX2 = x(this.p);
            this.n[iX2] = j;
            this.k[iX2] = j2;
            this.l[iX2] = i2;
            this.m[iX2] = i;
            this.o[iX2] = aVar;
            this.j[iX2] = this.C;
            if (this.c.g() || !((c) this.c.f()).a.equals(this.B)) {
                com.google.android.exoplayer2.drm.c cVar = this.d;
                this.c.a(A(), new c((com.google.android.exoplayer2.k) zi.e(this.B), cVar != null ? cVar.c(this.e, this.B) : com.google.android.exoplayer2.drm.c.b.a));
            }
            int i4 = this.p + 1;
            this.p = i4;
            int i5 = this.i;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                int[] iArr = new int[i6];
                long[] jArr = new long[i6];
                long[] jArr2 = new long[i6];
                int[] iArr2 = new int[i6];
                int[] iArr3 = new int[i6];
                fva.a[] aVarArr = new fva.a[i6];
                int i7 = this.r;
                int i8 = i5 - i7;
                System.arraycopy(this.k, i7, jArr, 0, i8);
                System.arraycopy(this.n, this.r, jArr2, 0, i8);
                System.arraycopy(this.m, this.r, iArr2, 0, i8);
                System.arraycopy(this.l, this.r, iArr3, 0, i8);
                System.arraycopy(this.o, this.r, aVarArr, 0, i8);
                System.arraycopy(this.j, this.r, iArr, 0, i8);
                int i9 = this.r;
                System.arraycopy(this.k, 0, jArr, i8, i9);
                System.arraycopy(this.n, 0, jArr2, i8, i9);
                System.arraycopy(this.m, 0, iArr2, i8, i9);
                System.arraycopy(this.l, 0, iArr3, i8, i9);
                System.arraycopy(this.o, 0, aVarArr, i8, i9);
                System.arraycopy(this.j, 0, iArr, i8, i9);
                this.k = jArr;
                this.n = jArr2;
                this.m = iArr2;
                this.l = iArr3;
                this.o = aVarArr;
                this.j = iArr;
                this.r = 0;
                this.i = i6;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final int j(long j) {
        int i = this.p;
        int iX = x(i - 1);
        while (i > this.s && this.n[iX] >= j) {
            i--;
            iX--;
            if (iX == -1) {
                iX = this.i - 1;
            }
        }
        return i;
    }

    public final synchronized long l(long j, boolean z, boolean z2) {
        int i;
        try {
            int i2 = this.p;
            if (i2 != 0) {
                long[] jArr = this.n;
                int i3 = this.r;
                if (j >= jArr[i3]) {
                    if (z2 && (i = this.s) != i2) {
                        i2 = i + 1;
                    }
                    int iR = r(i3, i2, j, z);
                    if (iR == -1) {
                        return -1L;
                    }
                    return n(iR);
                }
            }
            return -1L;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long m() {
        int i = this.p;
        if (i == 0) {
            return -1L;
        }
        return n(i);
    }

    public final long n(int i) {
        this.u = Math.max(this.u, v(i));
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
        this.c.d(i2);
        if (this.p != 0) {
            return this.k[this.r];
        }
        int i6 = this.r;
        if (i6 == 0) {
            i6 = this.i;
        }
        int i7 = i6 - 1;
        return this.k[i7] + ((long) this.l[i7]);
    }

    public final void o(long j, boolean z, boolean z2) {
        this.a.b(l(j, z, z2));
    }

    public final void p() {
        this.a.b(m());
    }

    public final long q(int i) {
        int iA = A() - i;
        boolean z = false;
        zi.a(iA >= 0 && iA <= this.p - this.s);
        int i2 = this.p - iA;
        this.p = i2;
        this.v = Math.max(this.u, v(i2));
        if (iA == 0 && this.w) {
            z = true;
        }
        this.w = z;
        this.c.c(i);
        int i3 = this.p;
        if (i3 == 0) {
            return 0L;
        }
        int iX = x(i3 - 1);
        return this.k[iX] + ((long) this.l[iX]);
    }

    public final int r(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.n[i];
            if (j2 > j) {
                return i3;
            }
            if (!z || (this.m[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.i) {
                i = 0;
            }
        }
        return i3;
    }

    public com.google.android.exoplayer2.k s(com.google.android.exoplayer2.k kVar) {
        return (this.F == 0 || kVar.q == Long.MAX_VALUE) ? kVar : kVar.b().i0(kVar.q + this.F).E();
    }

    public final synchronized long t() {
        return this.v;
    }

    public final synchronized long u() {
        return Math.max(this.u, v(this.s));
    }

    public final long v(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iX = x(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.n[iX]);
            if ((this.m[iX] & 1) != 0) {
                break;
            }
            iX--;
            if (iX == -1) {
                iX = this.i - 1;
            }
        }
        return jMax;
    }

    public final int w() {
        return this.q + this.s;
    }

    public final int x(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        return i2 < i3 ? i2 : i2 - i3;
    }

    public final synchronized int y(long j, boolean z) {
        int iX = x(this.s);
        if (B() && j >= this.n[iX]) {
            if (j > this.v && z) {
                return this.p - this.s;
            }
            int iR = r(iX, this.p - this.s, j, true);
            if (iR == -1) {
                return 0;
            }
            return iR;
        }
        return 0;
    }

    public final synchronized com.google.android.exoplayer2.k z() {
        return this.y ? null : this.B;
    }
}
