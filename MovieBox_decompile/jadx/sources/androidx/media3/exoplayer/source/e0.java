package androidx.media3.exoplayer.source;

import androidx.media3.common.DrmInitData;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.s2;
import java.util.Objects;
import k2.r0;
import k2.s0;
import org.mvel2.ast.ASTNode;

public class e0 implements s0 {
    private androidx.media3.common.r A;
    private androidx.media3.common.r B;
    private long C;
    private boolean E;
    private long F;
    private boolean G;

    private final c0 f12428a;

    private final androidx.media3.exoplayer.drm.t f12431d;

    private final androidx.media3.exoplayer.drm.r.a f12432e;

    private d f12433f;

    private androidx.media3.common.r f12434g;

    private DrmSession f12435h;

    private int f12443p;

    private int f12444q;

    private int f12445r;

    private int f12446s;

    private boolean f12450w;

    private boolean f12453z;

    private final b f12429b = new b();

    private int f12436i = 1000;

    private long[] f12437j = new long[1000];

    private long[] f12438k = new long[1000];

    private long[] f12441n = new long[1000];

    private int[] f12440m = new int[1000];

    private int[] f12439l = new int[1000];

    private s0.a[] f12442o = new s0.a[1000];

    private final j0 f12430c = new j0(new androidx.media3.common.util.m() {
        @Override
        public final void accept(Object obj) {
            e0.O((e0.c) obj);
        }
    });

    private long f12447t = Long.MIN_VALUE;

    private long f12448u = Long.MIN_VALUE;

    private long f12449v = Long.MIN_VALUE;

    private boolean f12452y = true;

    private boolean f12451x = true;
    private boolean D = true;

    static final class b {

        public int f12454a;

        public long f12455b;

        public s0.a f12456c;

        b() {
        }
    }

    static final class c {

        public final androidx.media3.common.r f12457a;

        public final androidx.media3.exoplayer.drm.t.b f12458b;

        private c(androidx.media3.common.r rVar, androidx.media3.exoplayer.drm.t.b bVar) {
            this.f12457a = rVar;
            this.f12458b = bVar;
        }
    }

    public interface d {
        void c(androidx.media3.common.r rVar);
    }

    protected e0(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar) {
        this.f12431d = tVar;
        this.f12432e = aVar;
        this.f12428a = new c0(bVar);
    }

    private long E(int i10) {
        long jMax = Long.MIN_VALUE;
        if (i10 == 0) {
            return Long.MIN_VALUE;
        }
        int iG = G(i10 - 1);
        for (int i11 = 0; i11 < i10; i11++) {
            jMax = Math.max(jMax, this.f12441n[iG]);
            if ((this.f12440m[iG] & 1) != 0) {
                break;
            }
            iG--;
            if (iG == -1) {
                iG = this.f12436i - 1;
            }
        }
        return jMax;
    }

    private int G(int i10) {
        int i11 = this.f12445r + i10;
        int i12 = this.f12436i;
        return i11 < i12 ? i11 : i11 - i12;
    }

    private boolean K() {
        return this.f12446s != this.f12443p;
    }

    public static void O(c cVar) {
        cVar.f12458b.release();
    }

    private boolean P(int i10) {
        DrmSession drmSession = this.f12435h;
        return drmSession == null || drmSession.getState() == 4 || ((this.f12440m[i10] & 1073741824) == 0 && this.f12435h.b());
    }

    private void R(androidx.media3.common.r rVar, s2 s2Var) {
        androidx.media3.common.r rVar2 = this.f12434g;
        boolean z10 = rVar2 == null;
        DrmInitData drmInitData = rVar2 == null ? null : rVar2.f9853s;
        this.f12434g = rVar;
        DrmInitData drmInitData2 = rVar.f9853s;
        androidx.media3.exoplayer.drm.t tVar = this.f12431d;
        s2Var.f12258b = tVar != null ? rVar.c(tVar.b(rVar)) : rVar;
        s2Var.f12257a = this.f12435h;
        if (this.f12431d == null) {
            return;
        }
        if (z10 || !Objects.equals(drmInitData, drmInitData2)) {
            DrmSession drmSession = this.f12435h;
            DrmSession drmSessionA = this.f12431d.a(this.f12432e, rVar);
            this.f12435h = drmSessionA;
            s2Var.f12257a = drmSessionA;
            if (drmSession != null) {
                drmSession.f(this.f12432e);
            }
        }
    }

    private synchronized int S(s2 s2Var, DecoderInputBuffer decoderInputBuffer, boolean z10, boolean z11, b bVar) {
        try {
            decoderInputBuffer.f10607d = false;
            if (!K()) {
                if (!z11 && !this.f12450w) {
                    androidx.media3.common.r rVar = this.B;
                    if (rVar == null || (!z10 && rVar == this.f12434g)) {
                        return -3;
                    }
                    R((androidx.media3.common.r) androidx.media3.common.util.a.e(rVar), s2Var);
                    return -5;
                }
                decoderInputBuffer.setFlags(4);
                decoderInputBuffer.f10608e = Long.MIN_VALUE;
                return -4;
            }
            androidx.media3.common.r rVar2 = ((c) this.f12430c.f(F())).f12457a;
            if (!z10 && rVar2 == this.f12434g) {
                int iG = G(this.f12446s);
                if (!P(iG)) {
                    decoderInputBuffer.f10607d = true;
                    return -3;
                }
                decoderInputBuffer.setFlags(this.f12440m[iG]);
                if (this.f12446s == this.f12443p - 1 && (z11 || this.f12450w)) {
                    decoderInputBuffer.addFlag(ASTNode.DISCARD);
                }
                decoderInputBuffer.f10608e = this.f12441n[iG];
                bVar.f12454a = this.f12439l[iG];
                bVar.f12455b = this.f12438k[iG];
                bVar.f12456c = this.f12442o[iG];
                return -4;
            }
            R(rVar2, s2Var);
            return -5;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void X() {
        DrmSession drmSession = this.f12435h;
        if (drmSession != null) {
            drmSession.f(this.f12432e);
            this.f12435h = null;
            this.f12434g = null;
        }
    }

    private synchronized void a0() {
        this.f12446s = 0;
        this.f12428a.o();
    }

    private synchronized boolean f0(androidx.media3.common.r rVar) {
        try {
            this.f12452y = false;
            if (Objects.equals(rVar, this.B)) {
                return false;
            }
            if (this.f12430c.h() || !((c) this.f12430c.g()).f12457a.equals(rVar)) {
                this.B = rVar;
            } else {
                this.B = ((c) this.f12430c.g()).f12457a;
            }
            boolean z10 = this.D;
            androidx.media3.common.r rVar2 = this.B;
            this.D = z10 & androidx.media3.common.y.a(rVar2.f9849o, rVar2.f9845k);
            this.E = false;
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized boolean i(long j10) {
        if (this.f12443p == 0) {
            return j10 > this.f12448u;
        }
        if (D() >= j10) {
            return false;
        }
        v(this.f12444q + k(j10));
        return true;
    }

    private synchronized void j(long j10, int i10, long j11, int i11, s0.a aVar) {
        try {
            int i12 = this.f12443p;
            if (i12 > 0) {
                int iG = G(i12 - 1);
                androidx.media3.common.util.a.a(this.f12438k[iG] + ((long) this.f12439l[iG]) <= j11);
            }
            this.f12450w = (536870912 & i10) != 0;
            this.f12449v = Math.max(this.f12449v, j10);
            int iG2 = G(this.f12443p);
            this.f12441n[iG2] = j10;
            this.f12438k[iG2] = j11;
            this.f12439l[iG2] = i11;
            this.f12440m[iG2] = i10;
            this.f12442o[iG2] = aVar;
            this.f12437j[iG2] = this.C;
            if (this.f12430c.h() || !((c) this.f12430c.g()).f12457a.equals(this.B)) {
                androidx.media3.common.r rVar = (androidx.media3.common.r) androidx.media3.common.util.a.e(this.B);
                androidx.media3.exoplayer.drm.t tVar = this.f12431d;
                this.f12430c.b(J(), new c(rVar, tVar != null ? tVar.c(this.f12432e, rVar) : androidx.media3.exoplayer.drm.t.b.f11301a));
            }
            int i13 = this.f12443p + 1;
            this.f12443p = i13;
            int i14 = this.f12436i;
            if (i13 == i14) {
                int i15 = i14 + 1000;
                long[] jArr = new long[i15];
                long[] jArr2 = new long[i15];
                long[] jArr3 = new long[i15];
                int[] iArr = new int[i15];
                int[] iArr2 = new int[i15];
                s0.a[] aVarArr = new s0.a[i15];
                int i16 = this.f12445r;
                int i17 = i14 - i16;
                System.arraycopy(this.f12438k, i16, jArr2, 0, i17);
                System.arraycopy(this.f12441n, this.f12445r, jArr3, 0, i17);
                System.arraycopy(this.f12440m, this.f12445r, iArr, 0, i17);
                System.arraycopy(this.f12439l, this.f12445r, iArr2, 0, i17);
                System.arraycopy(this.f12442o, this.f12445r, aVarArr, 0, i17);
                System.arraycopy(this.f12437j, this.f12445r, jArr, 0, i17);
                int i18 = this.f12445r;
                System.arraycopy(this.f12438k, 0, jArr2, i17, i18);
                System.arraycopy(this.f12441n, 0, jArr3, i17, i18);
                System.arraycopy(this.f12440m, 0, iArr, i17, i18);
                System.arraycopy(this.f12439l, 0, iArr2, i17, i18);
                System.arraycopy(this.f12442o, 0, aVarArr, i17, i18);
                System.arraycopy(this.f12437j, 0, jArr, i17, i18);
                this.f12438k = jArr2;
                this.f12441n = jArr3;
                this.f12440m = iArr;
                this.f12439l = iArr2;
                this.f12442o = aVarArr;
                this.f12437j = jArr;
                this.f12445r = 0;
                this.f12436i = i15;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private int k(long j10) {
        int i10 = this.f12443p;
        int iG = G(i10 - 1);
        while (i10 > this.f12446s && this.f12441n[iG] >= j10) {
            i10--;
            iG--;
            if (iG == -1) {
                iG = this.f12436i - 1;
            }
        }
        return i10;
    }

    public static e0 l(androidx.media3.exoplayer.upstream.b bVar, androidx.media3.exoplayer.drm.t tVar, androidx.media3.exoplayer.drm.r.a aVar) {
        return new e0(bVar, (androidx.media3.exoplayer.drm.t) androidx.media3.common.util.a.e(tVar), (androidx.media3.exoplayer.drm.r.a) androidx.media3.common.util.a.e(aVar));
    }

    public static e0 m(androidx.media3.exoplayer.upstream.b bVar) {
        return new e0(bVar, null, null);
    }

    private synchronized long n(long j10, boolean z10, boolean z11) {
        int i10;
        try {
            int i11 = this.f12443p;
            if (i11 != 0) {
                long[] jArr = this.f12441n;
                int i12 = this.f12445r;
                if (j10 >= jArr[i12]) {
                    if (z11 && (i10 = this.f12446s) != i11) {
                        i11 = i10 + 1;
                    }
                    int iY = y(i12, i11, j10, z10);
                    if (iY == -1) {
                        return -1L;
                    }
                    return q(iY);
                }
            }
            return -1L;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized long o() {
        int i10 = this.f12443p;
        if (i10 == 0) {
            return -1L;
        }
        return q(i10);
    }

    private long q(int i10) {
        this.f12448u = Math.max(this.f12448u, E(i10));
        this.f12443p -= i10;
        int i11 = this.f12444q + i10;
        this.f12444q = i11;
        int i12 = this.f12445r + i10;
        this.f12445r = i12;
        int i13 = this.f12436i;
        if (i12 >= i13) {
            this.f12445r = i12 - i13;
        }
        int i14 = this.f12446s - i10;
        this.f12446s = i14;
        if (i14 < 0) {
            this.f12446s = 0;
        }
        this.f12430c.e(i11);
        if (this.f12443p != 0) {
            return this.f12438k[this.f12445r];
        }
        int i15 = this.f12445r;
        if (i15 == 0) {
            i15 = this.f12436i;
        }
        int i16 = i15 - 1;
        return this.f12438k[i16] + ((long) this.f12439l[i16]);
    }

    private long v(int i10) {
        int iJ = J() - i10;
        boolean z10 = false;
        androidx.media3.common.util.a.a(iJ >= 0 && iJ <= this.f12443p - this.f12446s);
        int i11 = this.f12443p - iJ;
        this.f12443p = i11;
        this.f12449v = Math.max(this.f12448u, E(i11));
        if (iJ == 0 && this.f12450w) {
            z10 = true;
        }
        this.f12450w = z10;
        this.f12430c.d(i10);
        int i12 = this.f12443p;
        if (i12 == 0) {
            return 0L;
        }
        int iG = G(i12 - 1);
        return this.f12438k[iG] + ((long) this.f12439l[iG]);
    }

    private int x(int i10, int i11, long j10, boolean z10) {
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.f12441n[i10] >= j10) {
                return i12;
            }
            i10++;
            if (i10 == this.f12436i) {
                i10 = 0;
            }
        }
        if (z10) {
            return i11;
        }
        return -1;
    }

    private int y(int i10, int i11, long j10, boolean z10) {
        int i12 = -1;
        for (int i13 = 0; i13 < i11; i13++) {
            long j11 = this.f12441n[i10];
            if (j11 > j10) {
                return i12;
            }
            if (!z10 || (this.f12440m[i10] & 1) != 0) {
                if (j11 == j10) {
                    return i13;
                }
                i12 = i13;
            }
            i10++;
            if (i10 == this.f12436i) {
                i10 = 0;
            }
        }
        return i12;
    }

    public final int A() {
        return this.f12444q;
    }

    public final synchronized long B() {
        return this.f12443p == 0 ? Long.MIN_VALUE : this.f12441n[this.f12445r];
    }

    public final synchronized long C() {
        return this.f12449v;
    }

    public final synchronized long D() {
        return Math.max(this.f12448u, E(this.f12446s));
    }

    public final int F() {
        return this.f12444q + this.f12446s;
    }

    public final synchronized int H(long j10, boolean z10) {
        int iG = G(this.f12446s);
        if (K() && j10 >= this.f12441n[iG]) {
            if (j10 > this.f12449v && z10) {
                return this.f12443p - this.f12446s;
            }
            int iY = y(iG, this.f12443p - this.f12446s, j10, true);
            if (iY == -1) {
                return 0;
            }
            return iY;
        }
        return 0;
    }

    public final synchronized androidx.media3.common.r I() {
        return this.f12452y ? null : this.B;
    }

    public final int J() {
        return this.f12444q + this.f12443p;
    }

    protected final void L() {
        this.f12453z = true;
    }

    public final synchronized boolean M() {
        return this.f12450w;
    }

    public synchronized boolean N(boolean z10) {
        androidx.media3.common.r rVar;
        boolean z11 = true;
        if (K()) {
            if (((c) this.f12430c.f(F())).f12457a != this.f12434g) {
                return true;
            }
            return P(G(this.f12446s));
        }
        if (!z10 && !this.f12450w && ((rVar = this.B) == null || rVar == this.f12434g)) {
            z11 = false;
        }
        return z11;
    }

    public void Q() throws DrmSession.DrmSessionException {
        DrmSession drmSession = this.f12435h;
        if (drmSession != null && drmSession.getState() == 1) {
            throw ((DrmSession.DrmSessionException) androidx.media3.common.util.a.e(this.f12435h.getError()));
        }
    }

    public final synchronized long T() {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return K() ? this.f12437j[G(this.f12446s)] : this.C;
    }

    public void U() {
        s();
        X();
    }

    public int V(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10, boolean z10) {
        int iS = S(s2Var, decoderInputBuffer, (i10 & 2) != 0, z10, this.f12429b);
        if (iS == -4 && !decoderInputBuffer.isEndOfStream()) {
            boolean z11 = (i10 & 1) != 0;
            if ((i10 & 4) == 0) {
                if (z11) {
                    this.f12428a.f(decoderInputBuffer, this.f12429b);
                } else {
                    this.f12428a.m(decoderInputBuffer, this.f12429b);
                }
            }
            if (!z11) {
                this.f12446s++;
            }
        }
        return iS;
    }

    public void W() {
        Z(true);
        X();
    }

    public final void Y() {
        Z(false);
    }

    public void Z(boolean z10) {
        this.f12428a.n();
        this.f12443p = 0;
        this.f12444q = 0;
        this.f12445r = 0;
        this.f12446s = 0;
        this.f12451x = true;
        this.f12447t = Long.MIN_VALUE;
        this.f12448u = Long.MIN_VALUE;
        this.f12449v = Long.MIN_VALUE;
        this.f12450w = false;
        this.f12430c.c();
        if (z10) {
            this.A = null;
            this.B = null;
            this.f12452y = true;
            this.D = true;
        }
    }

    @Override
    public final void a(androidx.media3.common.util.j0 j0Var, int i10, int i11) {
        this.f12428a.q(j0Var, i10);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054  */
    @Override
    public void b(long j10, int i10, int i11, int i12, s0.a aVar) {
        int i13;
        if (this.f12453z) {
            d((androidx.media3.common.r) androidx.media3.common.util.a.i(this.A));
        }
        int i14 = i10 & 1;
        boolean z10 = i14 != 0;
        if (this.f12451x) {
            if (!z10) {
                return;
            } else {
                this.f12451x = false;
            }
        }
        long j11 = this.F + j10;
        if (!this.D) {
            i13 = i10;
        } else {
            if (j11 < this.f12447t) {
                return;
            }
            if (i14 == 0) {
                if (!this.E) {
                    androidx.media3.common.util.u.h("SampleQueue", "Overriding unexpected non-sync sample for format: " + this.B);
                    this.E = true;
                }
                i13 = i10 | 1;
            } else {
                i13 = i10;
            }
        }
        if (this.G) {
            if (!z10 || !i(j11)) {
                return;
            } else {
                this.G = false;
            }
        }
        j(j11, i13, (this.f12428a.e() - ((long) i11)) - ((long) i12), i11, aVar);
    }

    public final synchronized boolean b0(int i10) {
        a0();
        int i11 = this.f12444q;
        if (i10 >= i11 && i10 <= this.f12443p + i11) {
            this.f12447t = Long.MIN_VALUE;
            this.f12446s = i10 - i11;
            return true;
        }
        return false;
    }

    @Override
    public void c(androidx.media3.common.util.j0 j0Var, int i10) {
        r0.c(this, j0Var, i10);
    }

    public final synchronized boolean c0(long j10, boolean z10) {
        try {
            a0();
            int iG = G(this.f12446s);
            if (K() && j10 >= this.f12441n[iG] && (j10 <= this.f12449v || z10)) {
                int iX = this.D ? x(iG, this.f12443p - this.f12446s, j10, z10) : y(iG, this.f12443p - this.f12446s, j10, true);
                if (iX == -1) {
                    return false;
                }
                this.f12447t = j10;
                this.f12446s += iX;
                return true;
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public final void d(androidx.media3.common.r rVar) {
        androidx.media3.common.r rVarZ = z(rVar);
        this.f12453z = false;
        this.A = rVar;
        boolean zF0 = f0(rVarZ);
        d dVar = this.f12433f;
        if (dVar == null || !zF0) {
            return;
        }
        dVar.c(rVarZ);
    }

    public final void d0(long j10) {
        if (this.F != j10) {
            this.F = j10;
            L();
        }
    }

    @Override
    public int e(androidx.media3.common.j jVar, int i10, boolean z10) {
        return r0.b(this, jVar, i10, z10);
    }

    public final void e0(long j10) {
        this.f12447t = j10;
    }

    @Override
    public void f(long j10) {
        r0.a(this, j10);
    }

    @Override
    public final int g(androidx.media3.common.j jVar, int i10, boolean z10, int i11) {
        return this.f12428a.p(jVar, i10, z10);
    }

    public final void g0(d dVar) {
        this.f12433f = dVar;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    public final synchronized void h0(int i10) {
        boolean z10;
        if (i10 >= 0) {
            try {
                if (this.f12446s + i10 <= this.f12443p) {
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
        androidx.media3.common.util.a.a(z10);
        this.f12446s += i10;
    }

    public final void i0(long j10) {
        this.C = j10;
    }

    public final void j0() {
        this.G = true;
    }

    public synchronized long p() {
        int i10 = this.f12446s;
        if (i10 == 0) {
            return -1L;
        }
        return q(i10);
    }

    public final void r(long j10, boolean z10, boolean z11) {
        this.f12428a.b(n(j10, z10, z11));
    }

    public final void s() {
        this.f12428a.b(o());
    }

    public final void t() {
        this.f12428a.b(p());
    }

    public final void u(long j10) {
        if (this.f12443p == 0) {
            return;
        }
        androidx.media3.common.util.a.a(j10 > D());
        w(this.f12444q + k(j10));
    }

    public final void w(int i10) {
        this.f12428a.c(v(i10));
    }

    protected androidx.media3.common.r z(androidx.media3.common.r rVar) {
        return (this.F == 0 || rVar.f9854t == Long.MAX_VALUE) ? rVar : rVar.b().y0(rVar.f9854t + this.F).N();
    }
}
