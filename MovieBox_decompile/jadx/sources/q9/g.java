package q9;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.android.exoplayer2.util.x;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.a0;
import i9.b0;
import i9.e0;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class g implements i9.l {
    public static final i9.r I = new i9.r() {
        @Override
        public i9.l[] c(Uri uri, Map map) {
            return i9.q.a(this, uri, map);
        }

        @Override
        public final i9.l[] createExtractors() {
            return g.k();
        }
    };
    private static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final p1 K = new p1.b().e0(MimeTypes.APPLICATION_EMSG).E();
    private int A;
    private int B;
    private int C;
    private boolean D;
    private i9.n E;
    private e0[] F;
    private e0[] G;
    private boolean H;

    private final int f69451a;

    private final o f69452b;

    private final List f69453c;

    private final SparseArray f69454d;

    private final d0 f69455e;

    private final d0 f69456f;

    private final d0 f69457g;

    private final byte[] f69458h;

    private final d0 f69459i;

    private final l0 f69460j;

    private final com.google.android.exoplayer2.metadata.emsg.b f69461k;

    private final d0 f69462l;

    private final ArrayDeque f69463m;

    private final ArrayDeque f69464n;

    private final e0 f69465o;

    private int f69466p;

    private int f69467q;

    private long f69468r;

    private int f69469s;

    private d0 f69470t;

    private long f69471u;

    private int f69472v;

    private long f69473w;

    private long f69474x;

    private long f69475y;

    private b f69476z;

    private static final class a {

        public final long f69477a;

        public final boolean f69478b;

        public final int f69479c;

        public a(long j10, boolean z10, int i10) {
            this.f69477a = j10;
            this.f69478b = z10;
            this.f69479c = i10;
        }
    }

    private static final class b {

        public final e0 f69480a;

        public r f69483d;

        public c f69484e;

        public int f69485f;

        public int f69486g;

        public int f69487h;

        public int f69488i;

        private boolean f69491l;

        public final q f69481b = new q();

        public final d0 f69482c = new d0();

        private final d0 f69489j = new d0(1);

        private final d0 f69490k = new d0();

        public b(e0 e0Var, r rVar, c cVar) {
            this.f69480a = e0Var;
            this.f69483d = rVar;
            this.f69484e = cVar;
            j(rVar, cVar);
        }

        public int c() {
            int i10;
            if (this.f69491l) {
                i10 = this.f69481b.f69561k[this.f69485f] ? 1 : 0;
            } else {
                i10 = this.f69483d.f69575g[this.f69485f];
            }
            return g() != null ? i10 | 1073741824 : i10;
        }

        public long d() {
            return !this.f69491l ? this.f69483d.f69571c[this.f69485f] : this.f69481b.f69557g[this.f69487h];
        }

        public long e() {
            return !this.f69491l ? this.f69483d.f69574f[this.f69485f] : this.f69481b.c(this.f69485f);
        }

        public int f() {
            return !this.f69491l ? this.f69483d.f69572d[this.f69485f] : this.f69481b.f69559i[this.f69485f];
        }

        public p g() {
            if (!this.f69491l) {
                return null;
            }
            int i10 = ((c) p0.j(this.f69481b.f69551a)).f69440a;
            p pVarA = this.f69481b.f69564n;
            if (pVarA == null) {
                pVarA = this.f69483d.f69569a.a(i10);
            }
            if (pVarA == null || !pVarA.f69546a) {
                return null;
            }
            return pVarA;
        }

        public boolean h() {
            this.f69485f++;
            if (!this.f69491l) {
                return false;
            }
            int i10 = this.f69486g + 1;
            this.f69486g = i10;
            int[] iArr = this.f69481b.f69558h;
            int i11 = this.f69487h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f69487h = i11 + 1;
            this.f69486g = 0;
            return false;
        }

        public int i(int i10, int i11) {
            d0 d0Var;
            p pVarG = g();
            if (pVarG == null) {
                return 0;
            }
            int length = pVarG.f69549d;
            if (length != 0) {
                d0Var = this.f69481b.f69565o;
            } else {
                byte[] bArr = (byte[]) p0.j(pVarG.f69550e);
                this.f69490k.N(bArr, bArr.length);
                d0 d0Var2 = this.f69490k;
                length = bArr.length;
                d0Var = d0Var2;
            }
            boolean zG = this.f69481b.g(this.f69485f);
            boolean z10 = zG || i11 != 0;
            this.f69489j.d()[0] = (byte) ((z10 ? 128 : 0) | length);
            this.f69489j.P(0);
            this.f69480a.f(this.f69489j, 1, 1);
            this.f69480a.f(d0Var, length, 1);
            if (!z10) {
                return length + 1;
            }
            if (!zG) {
                this.f69482c.L(8);
                byte[] bArrD = this.f69482c.d();
                bArrD[0] = 0;
                bArrD[1] = 1;
                bArrD[2] = (byte) ((i11 >> 8) & 255);
                bArrD[3] = (byte) (i11 & 255);
                bArrD[4] = (byte) ((i10 >> 24) & 255);
                bArrD[5] = (byte) ((i10 >> 16) & 255);
                bArrD[6] = (byte) ((i10 >> 8) & 255);
                bArrD[7] = (byte) (i10 & 255);
                this.f69480a.f(this.f69482c, 8, 1);
                return length + 9;
            }
            d0 d0Var3 = this.f69481b.f69565o;
            int iJ = d0Var3.J();
            d0Var3.Q(-2);
            int i12 = (iJ * 6) + 2;
            if (i11 != 0) {
                this.f69482c.L(i12);
                byte[] bArrD2 = this.f69482c.d();
                d0Var3.j(bArrD2, 0, i12);
                int i13 = (((bArrD2[2] & 255) << 8) | (bArrD2[3] & 255)) + i11;
                bArrD2[2] = (byte) ((i13 >> 8) & 255);
                bArrD2[3] = (byte) (i13 & 255);
                d0Var3 = this.f69482c;
            }
            this.f69480a.f(d0Var3, i12, 1);
            return length + 1 + i12;
        }

        public void j(r rVar, c cVar) {
            this.f69483d = rVar;
            this.f69484e = cVar;
            this.f69480a.d(rVar.f69569a.f69540f);
            k();
        }

        public void k() {
            this.f69481b.f();
            this.f69485f = 0;
            this.f69487h = 0;
            this.f69486g = 0;
            this.f69488i = 0;
            this.f69491l = false;
        }

        public void l(long j10) {
            int i10 = this.f69485f;
            while (true) {
                q qVar = this.f69481b;
                if (i10 >= qVar.f69556f || qVar.c(i10) >= j10) {
                    return;
                }
                if (this.f69481b.f69561k[i10]) {
                    this.f69488i = i10;
                }
                i10++;
            }
        }

        public void m() {
            p pVarG = g();
            if (pVarG == null) {
                return;
            }
            d0 d0Var = this.f69481b.f69565o;
            int i10 = pVarG.f69549d;
            if (i10 != 0) {
                d0Var.Q(i10);
            }
            if (this.f69481b.g(this.f69485f)) {
                d0Var.Q(d0Var.J() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            p pVarA = this.f69483d.f69569a.a(((c) p0.j(this.f69481b.f69551a)).f69440a);
            this.f69480a.d(this.f69483d.f69569a.f69540f.b().M(drmInitData.copyWithSchemeType(pVarA != null ? pVarA.f69547b : null)).E());
        }
    }

    public g() {
        this(0);
    }

    private static long A(d0 d0Var) {
        d0Var.P(8);
        return q9.a.c(d0Var.n()) == 1 ? d0Var.I() : d0Var.F();
    }

    private static b B(d0 d0Var, SparseArray sparseArray, boolean z10) {
        d0Var.P(8);
        int iB = q9.a.b(d0Var.n());
        b bVar = (b) (z10 ? sparseArray.valueAt(0) : sparseArray.get(d0Var.n()));
        if (bVar == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jI = d0Var.I();
            q qVar = bVar.f69481b;
            qVar.f69553c = jI;
            qVar.f69554d = jI;
        }
        c cVar = bVar.f69484e;
        bVar.f69481b.f69551a = new c((iB & 2) != 0 ? d0Var.n() - 1 : cVar.f69440a, (iB & 8) != 0 ? d0Var.n() : cVar.f69441b, (iB & 16) != 0 ? d0Var.n() : cVar.f69442c, (iB & 32) != 0 ? d0Var.n() : cVar.f69443d);
        return bVar;
    }

    private static void C(q9.a.C0859a c0859a, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        b bVarB = B(((q9.a.b) com.google.android.exoplayer2.util.a.e(c0859a.g(1952868452))).f69410b, sparseArray, z10);
        if (bVarB == null) {
            return;
        }
        q qVar = bVarB.f69481b;
        long j10 = qVar.f69567q;
        boolean z11 = qVar.f69568r;
        bVarB.k();
        bVarB.f69491l = true;
        q9.a.b bVarG = c0859a.g(1952867444);
        if (bVarG == null || (i10 & 2) != 0) {
            qVar.f69567q = j10;
            qVar.f69568r = z11;
        } else {
            qVar.f69567q = A(bVarG.f69410b);
            qVar.f69568r = true;
        }
        F(c0859a, bVarB, i10);
        p pVarA = bVarB.f69483d.f69569a.a(((c) com.google.android.exoplayer2.util.a.e(qVar.f69551a)).f69440a);
        q9.a.b bVarG2 = c0859a.g(1935763834);
        if (bVarG2 != null) {
            v((p) com.google.android.exoplayer2.util.a.e(pVarA), bVarG2.f69410b, qVar);
        }
        q9.a.b bVarG3 = c0859a.g(1935763823);
        if (bVarG3 != null) {
            u(bVarG3.f69410b, qVar);
        }
        q9.a.b bVarG4 = c0859a.g(1936027235);
        if (bVarG4 != null) {
            y(bVarG4.f69410b, qVar);
        }
        w(c0859a, pVarA != null ? pVarA.f69547b : null, qVar);
        int size = c0859a.f69408c.size();
        for (int i11 = 0; i11 < size; i11++) {
            q9.a.b bVar = (q9.a.b) c0859a.f69408c.get(i11);
            if (bVar.f69406a == 1970628964) {
                G(bVar.f69410b, qVar, bArr);
            }
        }
    }

    private static Pair D(d0 d0Var) {
        d0Var.P(12);
        return Pair.create(Integer.valueOf(d0Var.n()), new c(d0Var.n() - 1, d0Var.n(), d0Var.n(), d0Var.n()));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:64:0x0111  */
    /* JADX WARN: Code duplicated, block: B:70:0x0126  */
    private static int E(b bVar, int i10, int i11, d0 d0Var, int i12) throws ParserException {
        long j10;
        long j11;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z10;
        int i13;
        long j12;
        long j13;
        int i14;
        int iN;
        int iN2;
        int iN3;
        int iN4;
        long jN0;
        boolean z11;
        b bVar2 = bVar;
        d0Var.P(8);
        int iB = q9.a.b(d0Var.n());
        o oVar = bVar2.f69483d.f69569a;
        q qVar = bVar2.f69481b;
        c cVar = (c) p0.j(qVar.f69551a);
        qVar.f69558h[i10] = d0Var.H();
        long[] jArr2 = qVar.f69557g;
        long j14 = qVar.f69553c;
        jArr2[i10] = j14;
        if ((iB & 1) != 0) {
            jArr2[i10] = j14 + ((long) d0Var.n());
        }
        boolean z12 = (iB & 4) != 0;
        int iN5 = cVar.f69443d;
        if (z12) {
            iN5 = d0Var.n();
        }
        boolean z13 = (iB & 256) != 0;
        boolean z14 = (iB & 512) != 0;
        boolean z15 = (iB & 1024) != 0;
        boolean z16 = (iB & 2048) != 0;
        long[] jArr3 = oVar.f69542h;
        if (jArr3 != null && jArr3.length == 1) {
            j10 = 0;
            if (jArr3[0] == 0) {
                j11 = ((long[]) p0.j(oVar.f69543i))[0];
            }
            iArr = qVar.f69559i;
            jArr = qVar.f69560j;
            zArr = qVar.f69561k;
            int i15 = iN5;
            if (oVar.f69536b == 2 || (i11 & 1) == 0) {
                z10 = false;
            } else {
                z10 = true;
            }
            i13 = i12 + qVar.f69558h[i10];
            boolean z17 = z10;
            j12 = oVar.f69537c;
            j13 = qVar.f69567q;
            i14 = i12;
            while (i14 < i13) {
                if (z13) {
                    iN = d0Var.n();
                } else {
                    iN = cVar.f69441b;
                }
                int iE = e(iN);
                if (z14) {
                    iN2 = d0Var.n();
                } else {
                    iN2 = cVar.f69442c;
                }
                int iE2 = e(iN2);
                if (z15) {
                    iN3 = d0Var.n();
                } else if (i14 == 0 || !z12) {
                    iN3 = cVar.f69443d;
                } else {
                    iN3 = i15;
                }
                if (z16) {
                    iN4 = d0Var.n();
                } else {
                    iN4 = 0;
                }
                jN0 = p0.N0((((long) iN4) + j13) - j11, 1000000L, j12);
                jArr[i14] = jN0;
                if (!qVar.f69568r) {
                    jArr[i14] = jN0 + bVar2.f69483d.f69576h;
                }
                iArr[i14] = iE2;
                if (((iN3 >> 16) & 1) == 0 || (z17 && i14 != 0)) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                zArr[i14] = z11;
                j13 += (long) iE;
                i14++;
                bVar2 = bVar;
                z13 = z13;
                z12 = z12;
                z16 = z16;
                z14 = z14;
                z15 = z15;
            }
            qVar.f69567q = j13;
            return i13;
        }
        j10 = 0;
        j11 = j10;
        iArr = qVar.f69559i;
        jArr = qVar.f69560j;
        zArr = qVar.f69561k;
        int i16 = iN5;
        if (oVar.f69536b == 2) {
            z10 = false;
        } else {
            z10 = false;
        }
        i13 = i12 + qVar.f69558h[i10];
        boolean z18 = z10;
        j12 = oVar.f69537c;
        j13 = qVar.f69567q;
        i14 = i12;
        while (i14 < i13) {
            if (z13) {
                iN = d0Var.n();
            } else {
                iN = cVar.f69441b;
            }
            int iE3 = e(iN);
            if (z14) {
                iN2 = d0Var.n();
            } else {
                iN2 = cVar.f69442c;
            }
            int iE4 = e(iN2);
            if (z15) {
                iN3 = d0Var.n();
            } else if (i14 == 0) {
                iN3 = cVar.f69443d;
            } else {
                iN3 = cVar.f69443d;
            }
            if (z16) {
                iN4 = d0Var.n();
            } else {
                iN4 = 0;
            }
            jN0 = p0.N0((((long) iN4) + j13) - j11, 1000000L, j12);
            jArr[i14] = jN0;
            if (!qVar.f69568r) {
                jArr[i14] = jN0 + bVar2.f69483d.f69576h;
            }
            iArr[i14] = iE4;
            if (((iN3 >> 16) & 1) == 0) {
                z11 = false;
            } else {
                z11 = false;
            }
            zArr[i14] = z11;
            j13 += (long) iE3;
            i14++;
            bVar2 = bVar;
            z13 = z13;
            z12 = z12;
            z16 = z16;
            z14 = z14;
            z15 = z15;
        }
        qVar.f69567q = j13;
        return i13;
    }

    private static void F(q9.a.C0859a c0859a, b bVar, int i10) throws ParserException {
        List list = c0859a.f69408c;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            q9.a.b bVar2 = (q9.a.b) list.get(i13);
            if (bVar2.f69406a == 1953658222) {
                d0 d0Var = bVar2.f69410b;
                d0Var.P(12);
                int iH = d0Var.H();
                if (iH > 0) {
                    i12 += iH;
                    i11++;
                }
            }
        }
        bVar.f69487h = 0;
        bVar.f69486g = 0;
        bVar.f69485f = 0;
        bVar.f69481b.e(i11, i12);
        int i14 = 0;
        int iE = 0;
        for (int i15 = 0; i15 < size; i15++) {
            q9.a.b bVar3 = (q9.a.b) list.get(i15);
            if (bVar3.f69406a == 1953658222) {
                iE = E(bVar, i14, i10, bVar3.f69410b, iE);
                i14++;
            }
        }
    }

    private static void G(d0 d0Var, q qVar, byte[] bArr) throws ParserException {
        d0Var.P(8);
        d0Var.j(bArr, 0, 16);
        if (Arrays.equals(bArr, J)) {
            x(d0Var, 16, qVar);
        }
    }

    private void H(long j10) throws ParserException {
        while (!this.f69463m.isEmpty() && ((q9.a.C0859a) this.f69463m.peek()).f69407b == j10) {
            m((q9.a.C0859a) this.f69463m.pop());
        }
        f();
    }

    private boolean I(i9.m mVar) throws ParserException {
        if (this.f69469s == 0) {
            if (!mVar.readFully(this.f69462l.d(), 0, 8, true)) {
                return false;
            }
            this.f69469s = 8;
            this.f69462l.P(0);
            this.f69468r = this.f69462l.F();
            this.f69467q = this.f69462l.n();
        }
        long j10 = this.f69468r;
        if (j10 == 1) {
            mVar.readFully(this.f69462l.d(), 8, 8);
            this.f69469s += 8;
            this.f69468r = this.f69462l.I();
        } else if (j10 == 0) {
            long length = mVar.getLength();
            if (length == -1 && !this.f69463m.isEmpty()) {
                length = ((q9.a.C0859a) this.f69463m.peek()).f69407b;
            }
            if (length != -1) {
                this.f69468r = (length - mVar.getPosition()) + ((long) this.f69469s);
            }
        }
        if (this.f69468r < this.f69469s) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = mVar.getPosition() - ((long) this.f69469s);
        int i10 = this.f69467q;
        if ((i10 == 1836019558 || i10 == 1835295092) && !this.H) {
            this.E.g(new b0.b(this.f69474x, position));
            this.H = true;
        }
        if (this.f69467q == 1836019558) {
            int size = this.f69454d.size();
            for (int i11 = 0; i11 < size; i11++) {
                q qVar = ((b) this.f69454d.valueAt(i11)).f69481b;
                qVar.f69552b = position;
                qVar.f69554d = position;
                qVar.f69553c = position;
            }
        }
        int i12 = this.f69467q;
        if (i12 == 1835295092) {
            this.f69476z = null;
            this.f69471u = position + this.f69468r;
            this.f69466p = 2;
            return true;
        }
        if (M(i12)) {
            long position2 = (mVar.getPosition() + this.f69468r) - 8;
            this.f69463m.push(new q9.a.C0859a(this.f69467q, position2));
            if (this.f69468r == this.f69469s) {
                H(position2);
            } else {
                f();
            }
        } else if (N(this.f69467q)) {
            if (this.f69469s != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            long j11 = this.f69468r;
            if (j11 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            d0 d0Var = new d0((int) j11);
            System.arraycopy(this.f69462l.d(), 0, d0Var.d(), 0, 8);
            this.f69470t = d0Var;
            this.f69466p = 1;
        } else {
            if (this.f69468r > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.f69470t = null;
            this.f69466p = 1;
        }
        return true;
    }

    private void J(i9.m mVar) throws ParserException {
        int i10 = ((int) this.f69468r) - this.f69469s;
        d0 d0Var = this.f69470t;
        if (d0Var != null) {
            mVar.readFully(d0Var.d(), 8, i10);
            o(new q9.a.b(this.f69467q, d0Var), mVar.getPosition());
        } else {
            mVar.skipFully(i10);
        }
        H(mVar.getPosition());
    }

    private void K(i9.m mVar) throws ParserException {
        int size = this.f69454d.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = ((b) this.f69454d.valueAt(i10)).f69481b;
            if (qVar.f69566p) {
                long j11 = qVar.f69554d;
                if (j11 < j10) {
                    bVar = (b) this.f69454d.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f69466p = 3;
            return;
        }
        int position = (int) (j10 - mVar.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        mVar.skipFully(position);
        bVar.f69481b.b(mVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean L(i9.m mVar) throws ParserException {
        int iB;
        b bVarI = this.f69476z;
        Throwable th2 = null;
        if (bVarI == null) {
            bVarI = i(this.f69454d);
            if (bVarI == null) {
                int position = (int) (this.f69471u - mVar.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                mVar.skipFully(position);
                f();
                return false;
            }
            int iD = (int) (bVarI.d() - mVar.getPosition());
            if (iD < 0) {
                s.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iD = 0;
            }
            mVar.skipFully(iD);
            this.f69476z = bVarI;
        }
        int i10 = 4;
        int i11 = 1;
        if (this.f69466p == 3) {
            int iF = bVarI.f();
            this.A = iF;
            if (bVarI.f69485f < bVarI.f69488i) {
                mVar.skipFully(iF);
                bVarI.m();
                if (!bVarI.h()) {
                    this.f69476z = null;
                }
                this.f69466p = 3;
                return true;
            }
            if (bVarI.f69483d.f69569a.f69541g == 1) {
                this.A = iF - 8;
                mVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVarI.f69483d.f69569a.f69540f.f24901l)) {
                this.B = bVarI.i(this.A, 7);
                com.google.android.exoplayer2.audio.c.a(this.A, this.f69459i);
                bVarI.f69480a.c(this.f69459i, 7);
                this.B += 7;
            } else {
                this.B = bVarI.i(this.A, 0);
            }
            this.A += this.B;
            this.f69466p = 4;
            this.C = 0;
        }
        o oVar = bVarI.f69483d.f69569a;
        e0 e0Var = bVarI.f69480a;
        long jE = bVarI.e();
        l0 l0Var = this.f69460j;
        if (l0Var != null) {
            jE = l0Var.a(jE);
        }
        long j10 = jE;
        if (oVar.f69544j == 0) {
            while (true) {
                int i12 = this.B;
                int i13 = this.A;
                if (i12 >= i13) {
                    break;
                }
                this.B += e0Var.b(mVar, i13 - i12, false);
            }
        } else {
            byte[] bArrD = this.f69456f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i14 = oVar.f69544j;
            int i15 = i14 + 1;
            int i16 = 4 - i14;
            while (this.B < this.A) {
                int i17 = this.C;
                if (i17 == 0) {
                    mVar.readFully(bArrD, i16, i15);
                    this.f69456f.P(0);
                    int iN = this.f69456f.n();
                    if (iN < i11) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", th2);
                    }
                    this.C = iN - 1;
                    this.f69455e.P(0);
                    e0Var.c(this.f69455e, i10);
                    e0Var.c(this.f69456f, i11);
                    this.D = (this.G.length <= 0 || !x.g(oVar.f69540f.f24901l, bArrD[i10])) ? 0 : i11;
                    this.B += 5;
                    this.A += i16;
                } else {
                    if (this.D) {
                        this.f69457g.L(i17);
                        mVar.readFully(this.f69457g.d(), 0, this.C);
                        e0Var.c(this.f69457g, this.C);
                        iB = this.C;
                        int iQ = x.q(this.f69457g.d(), this.f69457g.f());
                        this.f69457g.P(MimeTypes.VIDEO_H265.equals(oVar.f69540f.f24901l) ? 1 : 0);
                        this.f69457g.O(iQ);
                        i9.c.a(j10, this.f69457g, this.G);
                    } else {
                        iB = e0Var.b(mVar, i17, false);
                    }
                    this.B += iB;
                    this.C -= iB;
                    th2 = null;
                    i10 = 4;
                    i11 = 1;
                }
            }
        }
        int iC = bVarI.c();
        p pVarG = bVarI.g();
        e0Var.e(j10, iC, this.A, 0, pVarG != null ? pVarG.f69548c : null);
        r(j10);
        if (!bVarI.h()) {
            this.f69476z = null;
        }
        this.f69466p = 3;
        return true;
    }

    private static boolean M(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    private static boolean N(int i10) {
        return i10 == 1751411826 || i10 == 1835296868 || i10 == 1836476516 || i10 == 1936286840 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1668576371 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1937011571 || i10 == 1952867444 || i10 == 1952868452 || i10 == 1953196132 || i10 == 1953654136 || i10 == 1953658222 || i10 == 1886614376 || i10 == 1935763834 || i10 == 1935763823 || i10 == 1936027235 || i10 == 1970628964 || i10 == 1935828848 || i10 == 1936158820 || i10 == 1701606260 || i10 == 1835362404 || i10 == 1701671783;
    }

    private static int e(int i10) throws ParserException {
        if (i10 >= 0) {
            return i10;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i10, null);
    }

    private void f() {
        this.f69466p = 0;
        this.f69469s = 0;
    }

    private c g(SparseArray sparseArray, int i10) {
        return sparseArray.size() == 1 ? (c) sparseArray.valueAt(0) : (c) com.google.android.exoplayer2.util.a.e((c) sparseArray.get(i10));
    }

    private static DrmInitData h(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            q9.a.b bVar = (q9.a.b) list.get(i10);
            if (bVar.f69406a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrD = bVar.f69410b.d();
                UUID uuidF = l.f(bArrD);
                if (uuidF == null) {
                    s.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, MimeTypes.VIDEO_MP4, bArrD));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static b i(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar2 = (b) sparseArray.valueAt(i10);
            if ((bVar2.f69491l || bVar2.f69485f != bVar2.f69483d.f69570b) && (!bVar2.f69491l || bVar2.f69487h != bVar2.f69481b.f69555e)) {
                long jD = bVar2.d();
                if (jD < j10) {
                    bVar = bVar2;
                    j10 = jD;
                }
            }
        }
        return bVar;
    }

    private void j() {
        int i10;
        e0[] e0VarArr = new e0[2];
        this.F = e0VarArr;
        e0 e0Var = this.f69465o;
        int i11 = 0;
        if (e0Var != null) {
            e0VarArr[0] = e0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.f69451a & 4) != 0) {
            e0VarArr[i10] = this.E.track(100, 5);
            i12 = 101;
            i10++;
        }
        e0[] e0VarArr2 = (e0[]) p0.G0(this.F, i10);
        this.F = e0VarArr2;
        for (e0 e0Var2 : e0VarArr2) {
            e0Var2.d(K);
        }
        this.G = new e0[this.f69453c.size()];
        while (i11 < this.G.length) {
            e0 e0VarTrack = this.E.track(i12, 3);
            e0VarTrack.d((p1) this.f69453c.get(i11));
            this.G[i11] = e0VarTrack;
            i11++;
            i12++;
        }
    }

    public static i9.l[] k() {
        return new i9.l[]{new g()};
    }

    private void m(q9.a.C0859a c0859a) throws ParserException {
        int i10 = c0859a.f69406a;
        if (i10 == 1836019574) {
            q(c0859a);
        } else if (i10 == 1836019558) {
            p(c0859a);
        } else {
            if (this.f69463m.isEmpty()) {
                return;
            }
            ((q9.a.C0859a) this.f69463m.peek()).d(c0859a);
        }
    }

    private void n(d0 d0Var) {
        long jN0;
        String str;
        long jN1;
        String str2;
        long jF;
        long jA;
        if (this.F.length == 0) {
            return;
        }
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        if (iC == 0) {
            String str3 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            String str4 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            long jF2 = d0Var.F();
            jN0 = p0.N0(d0Var.F(), 1000000L, jF2);
            long j10 = this.f69475y;
            long j11 = j10 != C.TIME_UNSET ? j10 + jN0 : -9223372036854775807L;
            str = str3;
            jN1 = p0.N0(d0Var.F(), 1000L, jF2);
            str2 = str4;
            jF = d0Var.F();
            jA = j11;
        } else {
            if (iC != 1) {
                s.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iC);
                return;
            }
            long jF3 = d0Var.F();
            jA = p0.N0(d0Var.I(), 1000000L, jF3);
            long jN2 = p0.N0(d0Var.F(), 1000L, jF3);
            long jF4 = d0Var.F();
            str = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            jN1 = jN2;
            jF = jF4;
            str2 = (String) com.google.android.exoplayer2.util.a.e(d0Var.x());
            jN0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[d0Var.a()];
        d0Var.j(bArr, 0, d0Var.a());
        d0 d0Var2 = new d0(this.f69461k.a(new EventMessage(str, str2, jN1, jF, bArr)));
        int iA = d0Var2.a();
        for (e0 e0Var : this.F) {
            d0Var2.P(0);
            e0Var.c(d0Var2, iA);
        }
        if (jA == C.TIME_UNSET) {
            this.f69464n.addLast(new a(jN0, true, iA));
            this.f69472v += iA;
            return;
        }
        if (!this.f69464n.isEmpty()) {
            this.f69464n.addLast(new a(jA, false, iA));
            this.f69472v += iA;
            return;
        }
        l0 l0Var = this.f69460j;
        if (l0Var != null) {
            jA = l0Var.a(jA);
        }
        for (e0 e0Var2 : this.F) {
            e0Var2.e(jA, 1, iA, 0, null);
        }
    }

    private void o(q9.a.b bVar, long j10) throws ParserException {
        if (!this.f69463m.isEmpty()) {
            ((q9.a.C0859a) this.f69463m.peek()).e(bVar);
            return;
        }
        int i10 = bVar.f69406a;
        if (i10 != 1936286840) {
            if (i10 == 1701671783) {
                n(bVar.f69410b);
            }
        } else {
            Pair pairZ = z(bVar.f69410b, j10);
            this.f69475y = ((Long) pairZ.first).longValue();
            this.E.g((b0) pairZ.second);
            this.H = true;
        }
    }

    private void p(q9.a.C0859a c0859a) throws ParserException {
        t(c0859a, this.f69454d, this.f69452b != null, this.f69451a, this.f69458h);
        DrmInitData drmInitDataH = h(c0859a.f69408c);
        if (drmInitDataH != null) {
            int size = this.f69454d.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((b) this.f69454d.valueAt(i10)).n(drmInitDataH);
            }
        }
        if (this.f69473w != C.TIME_UNSET) {
            int size2 = this.f69454d.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((b) this.f69454d.valueAt(i11)).l(this.f69473w);
            }
            this.f69473w = C.TIME_UNSET;
        }
    }

    private void q(q9.a.C0859a c0859a) {
        int i10 = 0;
        com.google.android.exoplayer2.util.a.h(this.f69452b == null, "Unexpected moov box.");
        DrmInitData drmInitDataH = h(c0859a.f69408c);
        q9.a.C0859a c0859a2 = (q9.a.C0859a) com.google.android.exoplayer2.util.a.e(c0859a.f(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = c0859a2.f69408c.size();
        long jS = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            q9.a.b bVar = (q9.a.b) c0859a2.f69408c.get(i11);
            int i12 = bVar.f69406a;
            if (i12 == 1953654136) {
                Pair pairD = D(bVar.f69410b);
                sparseArray.put(((Integer) pairD.first).intValue(), (c) pairD.second);
            } else if (i12 == 1835362404) {
                jS = s(bVar.f69410b);
            }
        }
        List listA = q9.b.A(c0859a, new i9.x(), jS, drmInitDataH, (this.f69451a & 16) != 0, false, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return this.f69450a.l((o) obj);
            }
        });
        int size2 = listA.size();
        if (this.f69454d.size() != 0) {
            com.google.android.exoplayer2.util.a.g(this.f69454d.size() == size2);
            while (i10 < size2) {
                r rVar = (r) listA.get(i10);
                o oVar = rVar.f69569a;
                ((b) this.f69454d.get(oVar.f69535a)).j(rVar, g(sparseArray, oVar.f69535a));
                i10++;
            }
            return;
        }
        while (i10 < size2) {
            r rVar2 = (r) listA.get(i10);
            o oVar2 = rVar2.f69569a;
            this.f69454d.put(oVar2.f69535a, new b(this.E.track(i10, oVar2.f69536b), rVar2, g(sparseArray, oVar2.f69535a)));
            this.f69474x = Math.max(this.f69474x, oVar2.f69539e);
            i10++;
        }
        this.E.endTracks();
    }

    private void r(long j10) {
        while (!this.f69464n.isEmpty()) {
            a aVar = (a) this.f69464n.removeFirst();
            this.f69472v -= aVar.f69479c;
            long jA = aVar.f69477a;
            if (aVar.f69478b) {
                jA += j10;
            }
            l0 l0Var = this.f69460j;
            if (l0Var != null) {
                jA = l0Var.a(jA);
            }
            for (e0 e0Var : this.F) {
                e0Var.e(jA, 1, aVar.f69479c, this.f69472v, null);
            }
        }
    }

    private static long s(d0 d0Var) {
        d0Var.P(8);
        return q9.a.c(d0Var.n()) == 0 ? d0Var.F() : d0Var.I();
    }

    private static void t(q9.a.C0859a c0859a, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        int size = c0859a.f69409d.size();
        for (int i11 = 0; i11 < size; i11++) {
            q9.a.C0859a c0859a2 = (q9.a.C0859a) c0859a.f69409d.get(i11);
            if (c0859a2.f69406a == 1953653094) {
                C(c0859a2, sparseArray, z10, i10, bArr);
            }
        }
    }

    private static void u(d0 d0Var, q qVar) throws ParserException {
        d0Var.P(8);
        int iN = d0Var.n();
        if ((q9.a.b(iN) & 1) == 1) {
            d0Var.Q(8);
        }
        int iH = d0Var.H();
        if (iH == 1) {
            qVar.f69554d += q9.a.c(iN) == 0 ? d0Var.F() : d0Var.I();
        } else {
            throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + iH, null);
        }
    }

    private static void v(p pVar, d0 d0Var, q qVar) throws ParserException {
        int i10;
        int i11 = pVar.f69549d;
        d0Var.P(8);
        if ((q9.a.b(d0Var.n()) & 1) == 1) {
            d0Var.Q(8);
        }
        int iD = d0Var.D();
        int iH = d0Var.H();
        if (iH > qVar.f69556f) {
            throw ParserException.createForMalformedContainer("Saiz sample count " + iH + " is greater than fragment sample count" + qVar.f69556f, null);
        }
        if (iD == 0) {
            boolean[] zArr = qVar.f69563m;
            i10 = 0;
            for (int i12 = 0; i12 < iH; i12++) {
                int iD2 = d0Var.D();
                i10 += iD2;
                zArr[i12] = iD2 > i11;
            }
        } else {
            i10 = iD * iH;
            Arrays.fill(qVar.f69563m, 0, iH, iD > i11);
        }
        Arrays.fill(qVar.f69563m, iH, qVar.f69556f, false);
        if (i10 > 0) {
            qVar.d(i10);
        }
    }

    private static void w(q9.a.C0859a c0859a, String str, q qVar) throws ParserException {
        byte[] bArr = null;
        d0 d0Var = null;
        d0 d0Var2 = null;
        for (int i10 = 0; i10 < c0859a.f69408c.size(); i10++) {
            q9.a.b bVar = (q9.a.b) c0859a.f69408c.get(i10);
            d0 d0Var3 = bVar.f69410b;
            int i11 = bVar.f69406a;
            if (i11 == 1935828848) {
                d0Var3.P(12);
                if (d0Var3.n() == 1936025959) {
                    d0Var = d0Var3;
                }
            } else if (i11 == 1936158820) {
                d0Var3.P(12);
                if (d0Var3.n() == 1936025959) {
                    d0Var2 = d0Var3;
                }
            }
        }
        if (d0Var == null || d0Var2 == null) {
            return;
        }
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        d0Var.Q(4);
        if (iC == 1) {
            d0Var.Q(4);
        }
        if (d0Var.n() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        d0Var2.P(8);
        int iC2 = q9.a.c(d0Var2.n());
        d0Var2.Q(4);
        if (iC2 == 1) {
            if (d0Var2.F() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (iC2 >= 2) {
            d0Var2.Q(4);
        }
        if (d0Var2.F() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        d0Var2.Q(1);
        int iD = d0Var2.D();
        int i12 = (iD & 240) >> 4;
        int i13 = iD & 15;
        boolean z10 = d0Var2.D() == 1;
        if (z10) {
            int iD2 = d0Var2.D();
            byte[] bArr2 = new byte[16];
            d0Var2.j(bArr2, 0, 16);
            if (iD2 == 0) {
                int iD3 = d0Var2.D();
                bArr = new byte[iD3];
                d0Var2.j(bArr, 0, iD3);
            }
            qVar.f69562l = true;
            qVar.f69564n = new p(z10, str, iD2, bArr2, i12, i13, bArr);
        }
    }

    private static void x(d0 d0Var, int i10, q qVar) throws ParserException {
        d0Var.P(i10 + 8);
        int iB = q9.a.b(d0Var.n());
        if ((iB & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iB & 2) != 0;
        int iH = d0Var.H();
        if (iH == 0) {
            Arrays.fill(qVar.f69563m, 0, qVar.f69556f, false);
            return;
        }
        if (iH == qVar.f69556f) {
            Arrays.fill(qVar.f69563m, 0, iH, z10);
            qVar.d(d0Var.a());
            qVar.a(d0Var);
        } else {
            throw ParserException.createForMalformedContainer("Senc sample count " + iH + " is different from fragment sample count" + qVar.f69556f, null);
        }
    }

    private static void y(d0 d0Var, q qVar) throws ParserException {
        x(d0Var, 0, qVar);
    }

    private static Pair z(d0 d0Var, long j10) throws ParserException {
        long jI;
        long jI2;
        d0Var.P(8);
        int iC = q9.a.c(d0Var.n());
        d0Var.Q(4);
        long jF = d0Var.F();
        if (iC == 0) {
            jI = d0Var.F();
            jI2 = d0Var.F();
        } else {
            jI = d0Var.I();
            jI2 = d0Var.I();
        }
        long j11 = jI;
        long j12 = j10 + jI2;
        long jN0 = p0.N0(j11, 1000000L, jF);
        d0Var.Q(2);
        int iJ = d0Var.J();
        int[] iArr = new int[iJ];
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        long[] jArr3 = new long[iJ];
        long j13 = jN0;
        int i10 = 0;
        long j14 = j11;
        while (i10 < iJ) {
            int iN = d0Var.n();
            if ((iN & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long jF2 = d0Var.F();
            iArr[i10] = iN & Integer.MAX_VALUE;
            jArr[i10] = j12;
            jArr3[i10] = j13;
            long j15 = j14 + jF2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i11 = iJ;
            int[] iArr2 = iArr;
            long jN1 = p0.N0(j15, 1000000L, jF);
            jArr4[i10] = jN1 - jArr5[i10];
            d0Var.Q(4);
            j12 += (long) iArr2[i10];
            i10++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iJ = i11;
            j14 = j15;
            j13 = jN1;
        }
        return Pair.create(Long.valueOf(jN0), new i9.d(iArr, jArr, jArr2, jArr3));
    }

    @Override
    public void b(i9.n nVar) {
        this.E = nVar;
        f();
        j();
        o oVar = this.f69452b;
        if (oVar != null) {
            this.f69454d.put(0, new b(nVar.track(0, oVar.f69536b), new r(this.f69452b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.E.endTracks();
        }
    }

    @Override
    public boolean c(i9.m mVar) {
        return n.b(mVar);
    }

    @Override
    public int d(i9.m mVar, a0 a0Var) throws ParserException {
        while (true) {
            int i10 = this.f69466p;
            if (i10 != 0) {
                if (i10 == 1) {
                    J(mVar);
                } else if (i10 == 2) {
                    K(mVar);
                } else if (L(mVar)) {
                    return 0;
                }
            } else if (!I(mVar)) {
                return -1;
            }
        }
    }

    @Override
    public void seek(long j10, long j11) {
        int size = this.f69454d.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((b) this.f69454d.valueAt(i10)).k();
        }
        this.f69464n.clear();
        this.f69472v = 0;
        this.f69473w = j11;
        this.f69463m.clear();
        f();
    }

    public g(int i10) {
        this(i10, null);
    }

    public g(int i10, l0 l0Var) {
        this(i10, l0Var, null, Collections.emptyList());
    }

    public g(int i10, l0 l0Var, o oVar) {
        this(i10, l0Var, oVar, Collections.emptyList());
    }

    public g(int i10, l0 l0Var, o oVar, List list) {
        this(i10, l0Var, oVar, list, null);
    }

    public g(int i10, l0 l0Var, o oVar, List list, e0 e0Var) {
        this.f69451a = i10;
        this.f69460j = l0Var;
        this.f69452b = oVar;
        this.f69453c = Collections.unmodifiableList(list);
        this.f69465o = e0Var;
        this.f69461k = new com.google.android.exoplayer2.metadata.emsg.b();
        this.f69462l = new d0(16);
        this.f69455e = new d0(x.f26892a);
        this.f69456f = new d0(5);
        this.f69457g = new d0();
        byte[] bArr = new byte[16];
        this.f69458h = bArr;
        this.f69459i = new d0(bArr);
        this.f69463m = new ArrayDeque();
        this.f69464n = new ArrayDeque();
        this.f69454d = new SparseArray();
        this.f69474x = C.TIME_UNSET;
        this.f69473w = C.TIME_UNSET;
        this.f69475y = C.TIME_UNSET;
        this.E = i9.n.f61968i1;
        this.F = new e0[0];
        this.G = new e0[0];
    }

    @Override
    public void release() {
    }

    protected o l(o oVar) {
        return oVar;
    }
}
