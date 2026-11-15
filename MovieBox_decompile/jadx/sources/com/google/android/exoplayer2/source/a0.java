package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.q1;
import com.google.android.exoplayer2.util.p0;

public class a0 implements i9.e0 {
    private p1 A;
    private p1 B;
    private int C;
    private boolean D;
    private boolean E;
    private long F;
    private boolean G;

    private final y f25027a;

    private final com.google.android.exoplayer2.drm.u f25030d;

    private final com.google.android.exoplayer2.drm.s.a f25031e;

    private d f25032f;

    private p1 f25033g;

    private DrmSession f25034h;

    private int f25042p;

    private int f25043q;

    private int f25044r;

    private int f25045s;

    private boolean f25049w;

    private boolean f25052z;

    private final b f25028b = new b();

    private int f25035i = 1000;

    private int[] f25036j = new int[1000];

    private long[] f25037k = new long[1000];

    private long[] f25040n = new long[1000];

    private int[] f25039m = new int[1000];

    private int[] f25038l = new int[1000];

    private i9.e0.a[] f25041o = new i9.e0.a[1000];

    private final f0 f25029c = new f0(new com.google.android.exoplayer2.util.i() {
        @Override
        public final void accept(Object obj) {
            a0.L((a0.c) obj);
        }
    });

    private long f25046t = Long.MIN_VALUE;

    private long f25047u = Long.MIN_VALUE;

    private long f25048v = Long.MIN_VALUE;

    private boolean f25051y = true;

    private boolean f25050x = true;

    static final class b {

        public int f25053a;

        public long f25054b;

        public i9.e0.a f25055c;

        b() {
        }
    }

    static final class c {

        public final p1 f25056a;

        public final com.google.android.exoplayer2.drm.u.b f25057b;

        private c(p1 p1Var, com.google.android.exoplayer2.drm.u.b bVar) {
            this.f25056a = p1Var;
            this.f25057b = bVar;
        }
    }

    public interface d {
        void a(p1 p1Var);
    }

    protected a0(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar) {
        this.f25030d = uVar;
        this.f25031e = aVar;
        this.f25027a = new y(bVar);
    }

    private long B(int i10) {
        long jMax = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int iD = D(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            jMax = Math.max(jMax, this.f25040n[iD]);
            if ((this.f25039m[iD] & 1) != 0) {
                break;
            }
            iD--;
            if (iD == -1) {
                iD = this.f25035i - 1;
            }
        }
        return jMax;
    }

    private int D(int i10) {
        int i11 = this.f25044r + i10;
        int i12 = this.f25035i;
        return i11 < i12 ? i11 : i11 - i12;
    }

    private boolean H() {
        return this.f25045s != this.f25042p;
    }

    public static void L(c cVar) {
        cVar.f25057b.release();
    }

    private boolean M(int i10) {
        DrmSession drmSession = this.f25034h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f25039m[i10] & 1073741824) == 0 && this.f25034h.b());
    }

    private void O(p1 p1Var, q1 q1Var) {
        p1 p1Var2 = this.f25033g;
        boolean z10 = p1Var2 == null;
        DrmInitData drmInitData = z10 ? null : p1Var2.f24904o;
        this.f25033g = p1Var;
        DrmInitData drmInitData2 = p1Var.f24904o;
        com.google.android.exoplayer2.drm.u uVar = this.f25030d;
        q1Var.f24962b = uVar != null ? p1Var.c(uVar.a(p1Var)) : p1Var;
        q1Var.f24961a = this.f25034h;
        if (this.f25030d == null) {
            return;
        }
        if (z10 || !p0.c(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f25034h;
            DrmSession drmSessionC = this.f25030d.c(this.f25031e, p1Var);
            this.f25034h = drmSessionC;
            q1Var.f24961a = drmSessionC;
            if (drmSession != null) {
                drmSession.f(this.f25031e);
            }
        }
    }

    private synchronized int P(q1 q1Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f24203d = false;
            if (!H()) {
                if (!z11 && !this.f25049w) {
                    p1 p1Var = this.B;
                    if (p1Var == null || (!z10 && p1Var == this.f25033g)) {
                        return -3;
                    }
                    O((p1) com.google.android.exoplayer2.util.a.e(p1Var), q1Var);
                    return -5;
                }
                decoderInputBuffer.k(4);
                return -4;
            }
            p1 p1Var2 = ((c) this.f25029c.f(C())).f25056a;
            if (!z10 && p1Var2 == this.f25033g) {
                int iD = D(this.f25045s);
                if (!M(iD)) {
                    decoderInputBuffer.f24203d = true;
                    return -3;
                }
                decoderInputBuffer.k(this.f25039m[iD]);
                long j10 = this.f25040n[iD];
                decoderInputBuffer.f24204e = j10;
                if (j10 < this.f25046t) {
                    decoderInputBuffer.a(Integer.MIN_VALUE);
                }
                bVar.f25053a = this.f25038l[iD];
                bVar.f25054b = this.f25037k[iD];
                bVar.f25055c = this.f25041o[iD];
                return -4;
            }
            O(p1Var2, q1Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void U() {
        DrmSession drmSession = this.f25034h;
        if (drmSession != null) {
            drmSession.f(this.f25031e);
            this.f25034h = null;
            this.f25033g = null;
        }
    }

    private synchronized void X() {
        this.f25045s = 0;
        this.f25027a.o();
    }

    private synchronized boolean c0(p1 p1Var) {
        try {
            this.f25051y = false;
            if (p0.c(p1Var, this.B)) {
                return false;
            }
            if (this.f25029c.h() || !((c) this.f25029c.g()).f25056a.equals(p1Var)) {
                this.B = p1Var;
            } else {
                this.B = ((c) this.f25029c.g()).f25056a;
            }
            p1 p1Var2 = this.B;
            this.D = com.google.android.exoplayer2.util.w.a(p1Var2.f24901l, p1Var2.f24898i);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean h(long j10) {
        if (this.f25042p == 0) {
            return j10 > this.f25047u;
        }
        if (A() >= j10) {
            return false;
        }
        t(this.f25043q + j(j10));
        return true;
    }

    private synchronized void i(long j10, int i10, long j11, int i11, i9.e0.a aVar) {
        try {
            int i12 = this.f25042p;
            if (i12 > 0) {
                int iD = D(i12 - 1);
                com.google.android.exoplayer2.util.a.a(this.f25037k[iD] + ((long) this.f25038l[iD]) <= j11);
            }
            this.f25049w = (536870912 & i10) != 0;
            this.f25048v = Math.max(this.f25048v, j10);
            int iD2 = D(this.f25042p);
            this.f25040n[iD2] = j10;
            this.f25037k[iD2] = j11;
            this.f25038l[iD2] = i11;
            this.f25039m[iD2] = i10;
            this.f25041o[iD2] = aVar;
            this.f25036j[iD2] = this.C;
            if (this.f25029c.h() || !((c) this.f25029c.g()).f25056a.equals(this.B)) {
                com.google.android.exoplayer2.drm.u uVar = this.f25030d;
                this.f25029c.b(G(), new c((p1) com.google.android.exoplayer2.util.a.e(this.B), uVar != null ? uVar.d(this.f25031e, this.B) : com.google.android.exoplayer2.drm.u.b.f24378a));
            }
            int i13 = this.f25042p + 1;
            this.f25042p = i13;
            int i14 = this.f25035i;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                int[] iArr = new int[i15];
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                int[] iArr2 = new int[i15];
                int[] iArr3 = new int[i15];
                i9.e0.a[] aVarArr = new i9.e0.a[i15];
                int i16 = this.f25044r;
                int i17 = i14 - i16;
                System.arraycopy(this.f25037k, i16, jArr, 0, i17);
                System.arraycopy(this.f25040n, this.f25044r, jArr2, 0, i17);
                System.arraycopy(this.f25039m, this.f25044r, iArr2, 0, i17);
                System.arraycopy(this.f25038l, this.f25044r, iArr3, 0, i17);
                System.arraycopy(this.f25041o, this.f25044r, aVarArr, 0, i17);
                System.arraycopy(this.f25036j, this.f25044r, iArr, 0, i17);
                int i18 = this.f25044r;
                System.arraycopy(this.f25037k, 0, jArr, i17, i18);
                System.arraycopy(this.f25040n, 0, jArr2, i17, i18);
                System.arraycopy(this.f25039m, 0, iArr2, i17, i18);
                System.arraycopy(this.f25038l, 0, iArr3, i17, i18);
                System.arraycopy(this.f25041o, 0, aVarArr, i17, i18);
                System.arraycopy(this.f25036j, 0, iArr, i17, i18);
                this.f25037k = jArr;
                this.f25040n = jArr2;
                this.f25039m = iArr2;
                this.f25038l = iArr3;
                this.f25041o = aVarArr;
                this.f25036j = iArr;
                this.f25044r = 0;
                this.f25035i = i15;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int j(long j10) {
        int i10 = this.f25042p;
        int iD = D(i10 - 1);
        while (i10 > this.f25045s && this.f25040n[iD] >= j10) {
            i10--;
            iD--;
            if (iD == -1) {
                iD = this.f25035i - 1;
            }
        }
        return i10;
    }

    public static a0 k(com.google.android.exoplayer2.upstream.b bVar, com.google.android.exoplayer2.drm.u uVar, com.google.android.exoplayer2.drm.s.a aVar) {
        return new a0(bVar, (com.google.android.exoplayer2.drm.u) com.google.android.exoplayer2.util.a.e(uVar), (com.google.android.exoplayer2.drm.s.a) com.google.android.exoplayer2.util.a.e(aVar));
    }

    public static a0 l(com.google.android.exoplayer2.upstream.b bVar) {
        return new a0(bVar, null, null);
    }

    private synchronized long m(long j10, boolean z10, boolean z11) {
        int i10;
        try {
            int i11 = this.f25042p;
            if (i11 != 0) {
                long[] jArr = this.f25040n;
                int i12 = this.f25044r;
                if (j10 >= jArr[i12]) {
                    if (z11 && (i10 = this.f25045s) != i11) {
                        i11 = i10 + 1;
                    }
                    int iV = v(i12, i11, j10, z10);
                    if (iV == -1) {
                        return -1L;
                    }
                    return p(iV);
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized long n() {
        int i10 = this.f25042p;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    private long p(int i10) {
        this.f25047u = Math.max(this.f25047u, B(i10));
        this.f25042p -= i10;
        int i11 = this.f25043q + i10;
        this.f25043q = i11;
        int i12 = this.f25044r + i10;
        this.f25044r = i12;
        int i13 = this.f25035i;
        if (i12 >= i13) {
            this.f25044r = i12 - i13;
        }
        int i14 = this.f25045s - i10;
        this.f25045s = i14;
        if (i14 < 0) {
            this.f25045s = 0;
        }
        this.f25029c.e(i11);
        if (this.f25042p != 0) {
            return this.f25037k[this.f25044r];
        }
        int i15 = this.f25044r;
        if (i15 == 0) {
            i15 = this.f25035i;
        }
        int i16 = i15 - 1;
        return this.f25037k[i16] + ((long) this.f25038l[i16]);
    }

    private long t(int i10) {
        int iG = G() - i10;
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.a(iG >= 0 && iG <= this.f25042p - this.f25045s);
        int i11 = this.f25042p - iG;
        this.f25042p = i11;
        this.f25048v = Math.max(this.f25047u, B(i11));
        if (iG == 0 && this.f25049w) {
            z10 = true;
        }
        this.f25049w = z10;
        this.f25029c.d(i10);
        int i12 = this.f25042p;
        if (i12 == 0) {
            return 0L;
        }
        int iD = D(i12 - 1);
        return this.f25037k[iD] + ((long) this.f25038l[iD]);
    }

    private int v(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f25040n[i10];
            if (j11 > j10) {
                return i12;
            }
            if (!z10 || (this.f25039m[i10] & 1) != 0) {
                if (j11 == j10) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.f25035i) {
                i10 = 0;
            }
        }
        return i12;
    }

    public final synchronized long A() {
        return Math.max(this.f25047u, B(this.f25045s));
    }

    public final int C() {
        return this.f25043q + this.f25045s;
    }

    public final synchronized int E(long j10, boolean z10) {
        int iD = D(this.f25045s);
        if (H() && j10 >= this.f25040n[iD]) {
            if (j10 > this.f25048v && z10) {
                return this.f25042p - this.f25045s;
            }
            int iV = v(iD, this.f25042p - this.f25045s, j10, true);
            if (iV == -1) {
                return 0;
            }
            return iV;
        }
        return 0;
    }

    public final synchronized p1 F() {
        return this.f25051y ? null : this.B;
    }

    public final int G() {
        return this.f25043q + this.f25042p;
    }

    protected final void I() {
        this.f25052z = true;
    }

    public final synchronized boolean J() {
        return this.f25049w;
    }

    public synchronized boolean K(boolean z10) {
        p1 p1Var;
        boolean z11 = true;
        if (H()) {
            if (((c) this.f25029c.f(C())).f25056a != this.f25033g) {
                return true;
            }
            return M(D(this.f25045s));
        }
        if (!z10 && !this.f25049w && ((p1Var = this.B) == null || p1Var == this.f25033g)) {
            z11 = false;
        }
        return z11;
    }

    public void N() throws DrmSession.DrmSessionException {
        DrmSession drmSession = this.f25034h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.e(this.f25034h.getError()));
        }
    }

    public final synchronized int Q() {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return H() ? this.f25036j[D(this.f25045s)] : this.C;
    }

    public void R() {
        r();
        U();
    }

    public int S(q1 q1Var, DecoderInputBuffer decoderInputBuffer, int i10, boolean z10) {
        int iP = P(q1Var, decoderInputBuffer, (i10 & 2) != 0, z10, this.f25028b);
        if (iP == -4 && !decoderInputBuffer.h()) {
            boolean z11 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z11) {
                    this.f25027a.f(decoderInputBuffer, this.f25028b);
                } else {
                    this.f25027a.m(decoderInputBuffer, this.f25028b);
                }
            }
            if (!z11) {
                this.f25045s++;
            }
        }
        return iP;
    }

    public void T() {
        W(true);
        U();
    }

    public final void V() {
        W(false);
    }

    public void W(boolean z10) {
        this.f25027a.n();
        this.f25042p = 0;
        this.f25043q = 0;
        this.f25044r = 0;
        this.f25045s = 0;
        this.f25050x = true;
        this.f25046t = Long.MIN_VALUE;
        this.f25047u = Long.MIN_VALUE;
        this.f25048v = Long.MIN_VALUE;
        this.f25049w = false;
        this.f25029c.c();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f25051y = true;
        }
    }

    public final synchronized boolean Y(int i10) {
        X();
        int i11 = this.f25043q;
        if (i10 >= i11 && i10 <= this.f25042p + i11) {
            this.f25046t = Long.MIN_VALUE;
            this.f25045s = i10 - i11;
            return true;
        }
        return false;
    }

    public final synchronized boolean Z(long j10, boolean z10) {
        X();
        int iD = D(this.f25045s);
        if (H() && j10 >= this.f25040n[iD] && (j10 <= this.f25048v || z10)) {
            int iV = v(iD, this.f25042p - this.f25045s, j10, true);
            if (iV == -1) {
                return false;
            }
            this.f25046t = j10;
            this.f25045s += iV;
            return true;
        }
        return false;
    }

    @Override
    public final int a(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10, int i11) {
        return this.f25027a.p(gVar, i10, z10);
    }

    public final void a0(long j10) {
        if (this.F != j10) {
            this.F = j10;
            I();
        }
    }

    @Override
    public int b(com.google.android.exoplayer2.upstream.g gVar, int i10, boolean z10) {
        return i9.d0.a(this, gVar, i10, z10);
    }

    public final void b0(long j10) {
        this.f25046t = j10;
    }

    @Override
    public void c(com.google.android.exoplayer2.util.d0 d0Var, int i10) {
        i9.d0.b(this, d0Var, i10);
    }

    @Override
    public final void d(p1 p1Var) {
        p1 p1VarW = w(p1Var);
        this.f25052z = false;
        this.A = p1Var;
        boolean zC0 = c0(p1VarW);
        d dVar = this.f25032f;
        if (dVar == null || !zC0) {
            return;
        }
        dVar.a(p1VarW);
    }

    public final void d0(d dVar) {
        this.f25032f = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override
    public void e(long j10, int i10, int i11, int i12, i9.e0.a aVar) {
        int i13;
        if (this.f25052z) {
            d((p1) com.google.android.exoplayer2.util.a.i(this.A));
        }
        int i14 = i10 & 1;
        boolean z10 = i14 != 0;
        if (this.f25050x) {
            if (!z10) {
                return;
            } else {
                this.f25050x = false;
            }
        }
        long j11 = this.F + j10;
        if (!this.D) {
            i13 = i10;
        } else {
            if (j11 < this.f25046t) {
                return;
            }
            if (i14 == 0) {
                if (!this.E) {
                    com.google.android.exoplayer2.util.s.i("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.E = true;
                }
                i13 = i10 | 1;
            } else {
                i13 = i10;
            }
        }
        if (this.G) {
            if (!z10 || !h(j11)) {
                return;
            } else {
                this.G = false;
            }
        }
        i(j11, i13, (this.f25027a.e() - ((long) i11)) - ((long) i12), i11, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void e0(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f25045s + i10 <= this.f25042p) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        } else {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.f25045s += i10;
    }

    @Override
    public final void f(com.google.android.exoplayer2.util.d0 d0Var, int i10, int i11) {
        this.f25027a.q(d0Var, i10);
    }

    public final void f0(int i10) {
        this.C = i10;
    }

    public final void g0() {
        this.G = true;
    }

    public synchronized long o() {
        int i10 = this.f25045s;
        if (i10 == 0) {
            return -1L;
        }
        return p(i10);
    }

    public final void q(long j10, boolean z10, boolean z11) {
        this.f25027a.b(m(j10, z10, z11));
    }

    public final void r() {
        this.f25027a.b(n());
    }

    public final void s() {
        this.f25027a.b(o());
    }

    public final void u(int i10) {
        this.f25027a.c(t(i10));
    }

    protected p1 w(p1 p1Var) {
        return (this.F == 0 || p1Var.f24905p == Long.MAX_VALUE) ? p1Var : p1Var.b().i0(p1Var.f24905p + this.F).E();
    }

    public final int x() {
        return this.f25043q;
    }

    public final synchronized long y() {
        return this.f25042p == 0 ? Long.MIN_VALUE : this.f25040n[this.f25044r];
    }

    public final synchronized long z() {
        return this.f25048v;
    }
}
