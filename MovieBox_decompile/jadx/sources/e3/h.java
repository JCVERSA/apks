package e3;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import k2.e0;
import k2.l0;
import k2.m0;
import k2.q0;
import k2.s0;

public class h implements k2.r {
    public static final k2.x M = new k2.x() {
        @Override
        public k2.x a(h3.s.a aVar) {
            return k2.w.d(this, aVar);
        }

        @Override
        public k2.x b(int i10) {
            return k2.w.b(this, i10);
        }

        @Override
        public k2.r[] c(Uri uri, Map map) {
            return k2.w.a(this, uri, map);
        }

        @Override
        public final k2.r[] createExtractors() {
            return h.s();
        }

        @Override
        public k2.x d(boolean z10) {
            return k2.w.c(this, z10);
        }
    };
    private static final byte[] N = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final androidx.media3.common.r O = new androidx.media3.common.r.b().u0(MimeTypes.APPLICATION_EMSG).N();
    private long A;
    private long B;
    private b C;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private boolean H;
    private k2.t I;
    private s0[] J;
    private s0[] K;
    private boolean L;

    private final h3.s.a f59312a;

    private final int f59313b;

    private final t f59314c;

    private final List f59315d;

    private final SparseArray f59316e;

    private final j0 f59317f;

    private final j0 f59318g;

    private final j0 f59319h;

    private final byte[] f59320i;

    private final j0 f59321j;

    private final p0 f59322k;

    private final v2.c f59323l;

    private final j0 f59324m;

    private final ArrayDeque f59325n;

    private final ArrayDeque f59326o;

    private final androidx.media3.container.i f59327p;

    private final s0 f59328q;

    private ImmutableList f59329r;

    private int f59330s;

    private int f59331t;

    private long f59332u;

    private int f59333v;

    private j0 f59334w;

    private long f59335x;

    private int f59336y;

    private long f59337z;

    private static final class a {

        public final long f59338a;

        public final boolean f59339b;

        public final int f59340c;

        public a(long j10, boolean z10, int i10) {
            this.f59338a = j10;
            this.f59339b = z10;
            this.f59340c = i10;
        }
    }

    private static final class b {

        public final s0 f59341a;

        public w f59344d;

        public c f59345e;

        public int f59346f;

        public int f59347g;

        public int f59348h;

        public int f59349i;

        private final String f59350j;

        private boolean f59353m;

        public final v f59342b = new v();

        public final j0 f59343c = new j0();

        private final j0 f59351k = new j0(1);

        private final j0 f59352l = new j0();

        public b(s0 s0Var, w wVar, c cVar, String str) {
            this.f59341a = s0Var;
            this.f59344d = wVar;
            this.f59345e = cVar;
            this.f59350j = str;
            j(wVar, cVar);
        }

        public int c() {
            int i10;
            if (this.f59353m) {
                i10 = this.f59342b.f59429k[this.f59346f] ? 1 : 0;
            } else {
                i10 = this.f59344d.f59443g[this.f59346f];
            }
            return g() != null ? i10 | 1073741824 : i10;
        }

        public long d() {
            return !this.f59353m ? this.f59344d.f59439c[this.f59346f] : this.f59342b.f59425g[this.f59348h];
        }

        public long e() {
            return !this.f59353m ? this.f59344d.f59442f[this.f59346f] : this.f59342b.c(this.f59346f);
        }

        public int f() {
            return !this.f59353m ? this.f59344d.f59440d[this.f59346f] : this.f59342b.f59427i[this.f59346f];
        }

        public u g() {
            if (!this.f59353m) {
                return null;
            }
            int i10 = ((c) a1.i(this.f59342b.f59419a)).f59299a;
            u uVarB = this.f59342b.f59432n;
            if (uVarB == null) {
                uVarB = this.f59344d.f59437a.b(i10);
            }
            if (uVarB == null || !uVarB.f59414a) {
                return null;
            }
            return uVarB;
        }

        public boolean h() {
            this.f59346f++;
            if (!this.f59353m) {
                return false;
            }
            int i10 = this.f59347g + 1;
            this.f59347g = i10;
            int[] iArr = this.f59342b.f59426h;
            int i11 = this.f59348h;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.f59348h = i11 + 1;
            this.f59347g = 0;
            return false;
        }

        public int i(int i10, int i11) {
            j0 j0Var;
            u uVarG = g();
            if (uVarG == null) {
                return 0;
            }
            int length = uVarG.f59417d;
            if (length != 0) {
                j0Var = this.f59342b.f59433o;
            } else {
                byte[] bArr = (byte[]) a1.i(uVarG.f59418e);
                this.f59352l.U(bArr, bArr.length);
                j0 j0Var2 = this.f59352l;
                length = bArr.length;
                j0Var = j0Var2;
            }
            boolean zG = this.f59342b.g(this.f59346f);
            boolean z10 = zG || i11 != 0;
            this.f59351k.e()[0] = (byte) ((z10 ? 128 : 0) | length);
            this.f59351k.W(0);
            this.f59341a.a(this.f59351k, 1, 1);
            this.f59341a.a(j0Var, length, 1);
            if (!z10) {
                return length + 1;
            }
            if (!zG) {
                this.f59343c.S(8);
                byte[] bArrE = this.f59343c.e();
                bArrE[0] = 0;
                bArrE[1] = 1;
                bArrE[2] = (byte) ((i11 >> 8) & 255);
                bArrE[3] = (byte) (i11 & 255);
                bArrE[4] = (byte) ((i10 >> 24) & 255);
                bArrE[5] = (byte) ((i10 >> 16) & 255);
                bArrE[6] = (byte) ((i10 >> 8) & 255);
                bArrE[7] = (byte) (i10 & 255);
                this.f59341a.a(this.f59343c, 8, 1);
                return length + 9;
            }
            j0 j0Var3 = this.f59342b.f59433o;
            int iP = j0Var3.P();
            j0Var3.X(-2);
            int i12 = (iP * 6) + 2;
            if (i11 != 0) {
                this.f59343c.S(i12);
                byte[] bArrE2 = this.f59343c.e();
                j0Var3.l(bArrE2, 0, i12);
                int i13 = (((bArrE2[2] & 255) << 8) | (bArrE2[3] & 255)) + i11;
                bArrE2[2] = (byte) ((i13 >> 8) & 255);
                bArrE2[3] = (byte) (i13 & 255);
                j0Var3 = this.f59343c;
            }
            this.f59341a.a(j0Var3, i12, 1);
            return length + 1 + i12;
        }

        public void j(w wVar, c cVar) {
            this.f59344d = wVar;
            this.f59345e = cVar;
            this.f59341a.d(wVar.f59437a.f59408g.b().U(this.f59350j).N());
            k();
        }

        public void k() {
            this.f59342b.f();
            this.f59346f = 0;
            this.f59348h = 0;
            this.f59347g = 0;
            this.f59349i = 0;
            this.f59353m = false;
        }

        public void l(long j10) {
            int i10 = this.f59346f;
            while (true) {
                v vVar = this.f59342b;
                if (i10 >= vVar.f59424f || vVar.c(i10) > j10) {
                    return;
                }
                if (this.f59342b.f59429k[i10]) {
                    this.f59349i = i10;
                }
                i10++;
            }
        }

        public void m() {
            u uVarG = g();
            if (uVarG == null) {
                return;
            }
            j0 j0Var = this.f59342b.f59433o;
            int i10 = uVarG.f59417d;
            if (i10 != 0) {
                j0Var.X(i10);
            }
            if (this.f59342b.g(this.f59346f)) {
                j0Var.X(j0Var.P() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            u uVarB = this.f59344d.f59437a.b(((c) a1.i(this.f59342b.f59419a)).f59299a);
            this.f59341a.d(this.f59344d.f59437a.f59408g.b().U(this.f59350j).Y(drmInitData.copyWithSchemeType(uVarB != null ? uVarB.f59415b : null)).N());
        }
    }

    @Deprecated
    public h() {
        this(h3.s.a.f61264a, 32, null, null, ImmutableList.of(), null);
    }

    private static long A(j0 j0Var) {
        j0Var.W(8);
        return e3.b.p(j0Var.q()) == 0 ? j0Var.J() : j0Var.O();
    }

    private static void B(androidx.media3.container.d.b bVar, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        int size = bVar.f10274d.size();
        for (int i11 = 0; i11 < size; i11++) {
            androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) bVar.f10274d.get(i11);
            if (bVar2.f10271a == 1953653094) {
                K(bVar2, sparseArray, z10, i10, bArr);
            }
        }
    }

    private static void C(j0 j0Var, v vVar) throws ParserException {
        j0Var.W(8);
        int iQ = j0Var.q();
        if ((e3.b.o(iQ) & 1) == 1) {
            j0Var.X(8);
        }
        int iL = j0Var.L();
        if (iL == 1) {
            vVar.f59422d += e3.b.p(iQ) == 0 ? j0Var.J() : j0Var.O();
        } else {
            throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + iL, null);
        }
    }

    private static void D(u uVar, j0 j0Var, v vVar) throws ParserException {
        int i10;
        int i11 = uVar.f59417d;
        j0Var.W(8);
        if ((e3.b.o(j0Var.q()) & 1) == 1) {
            j0Var.X(8);
        }
        int iH = j0Var.H();
        int iL = j0Var.L();
        if (iL > vVar.f59424f) {
            throw ParserException.createForMalformedContainer("Saiz sample count " + iL + " is greater than fragment sample count" + vVar.f59424f, null);
        }
        if (iH == 0) {
            boolean[] zArr = vVar.f59431m;
            i10 = 0;
            for (int i12 = 0; i12 < iL; i12++) {
                int iH2 = j0Var.H();
                i10 += iH2;
                zArr[i12] = iH2 > i11;
            }
        } else {
            i10 = iH * iL;
            Arrays.fill(vVar.f59431m, 0, iL, iH > i11);
        }
        Arrays.fill(vVar.f59431m, iL, vVar.f59424f, false);
        if (i10 > 0) {
            vVar.d(i10);
        }
    }

    private static void E(androidx.media3.container.d.b bVar, String str, v vVar) throws ParserException {
        byte[] bArr = null;
        j0 j0Var = null;
        j0 j0Var2 = null;
        for (int i10 = 0; i10 < bVar.f10273c.size(); i10++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar.f10273c.get(i10);
            j0 j0Var3 = cVar.f10275b;
            int i11 = cVar.f10271a;
            if (i11 == 1935828848) {
                j0Var3.W(12);
                if (j0Var3.q() == 1936025959) {
                    j0Var = j0Var3;
                }
            } else if (i11 == 1936158820) {
                j0Var3.W(12);
                if (j0Var3.q() == 1936025959) {
                    j0Var2 = j0Var3;
                }
            }
        }
        if (j0Var == null || j0Var2 == null) {
            return;
        }
        j0Var.W(8);
        int iP = e3.b.p(j0Var.q());
        j0Var.X(4);
        if (iP == 1) {
            j0Var.X(4);
        }
        if (j0Var.q() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        j0Var2.W(8);
        int iP2 = e3.b.p(j0Var2.q());
        j0Var2.X(4);
        if (iP2 == 1) {
            if (j0Var2.J() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (iP2 >= 2) {
            j0Var2.X(4);
        }
        if (j0Var2.J() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        j0Var2.X(1);
        int iH = j0Var2.H();
        int i12 = (iH & 240) >> 4;
        int i13 = iH & 15;
        boolean z10 = j0Var2.H() == 1;
        if (z10) {
            int iH2 = j0Var2.H();
            byte[] bArr2 = new byte[16];
            j0Var2.l(bArr2, 0, 16);
            if (iH2 == 0) {
                int iH3 = j0Var2.H();
                bArr = new byte[iH3];
                j0Var2.l(bArr, 0, iH3);
            }
            vVar.f59430l = true;
            vVar.f59432n = new u(z10, str, iH2, bArr2, i12, i13, bArr);
        }
    }

    private static void F(j0 j0Var, int i10, v vVar) throws ParserException {
        j0Var.W(i10 + 8);
        int iO = e3.b.o(j0Var.q());
        if ((iO & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z10 = (iO & 2) != 0;
        int iL = j0Var.L();
        if (iL == 0) {
            Arrays.fill(vVar.f59431m, 0, vVar.f59424f, false);
            return;
        }
        if (iL == vVar.f59424f) {
            Arrays.fill(vVar.f59431m, 0, iL, z10);
            vVar.d(j0Var.a());
            vVar.a(j0Var);
        } else {
            throw ParserException.createForMalformedContainer("Senc sample count " + iL + " is different from fragment sample count" + vVar.f59424f, null);
        }
    }

    private static void G(j0 j0Var, v vVar) throws ParserException {
        F(j0Var, 0, vVar);
    }

    private static Pair H(j0 j0Var, long j10) throws ParserException {
        long jO;
        long jO2;
        j0Var.W(8);
        int iP = e3.b.p(j0Var.q());
        j0Var.X(4);
        long J = j0Var.J();
        if (iP == 0) {
            jO = j0Var.J();
            jO2 = j0Var.J();
        } else {
            jO = j0Var.O();
            jO2 = j0Var.O();
        }
        long j11 = jO;
        long j12 = j10 + jO2;
        long jE1 = a1.e1(j11, 1000000L, J);
        j0Var.X(2);
        int iP2 = j0Var.P();
        int[] iArr = new int[iP2];
        long[] jArr = new long[iP2];
        long[] jArr2 = new long[iP2];
        long[] jArr3 = new long[iP2];
        long j13 = jE1;
        int i10 = 0;
        long j14 = j11;
        while (i10 < iP2) {
            int iQ = j0Var.q();
            if ((iQ & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long J2 = j0Var.J();
            iArr[i10] = iQ & Integer.MAX_VALUE;
            jArr[i10] = j12;
            jArr3[i10] = j13;
            long j15 = j14 + J2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i11 = iP2;
            int[] iArr2 = iArr;
            long jE2 = a1.e1(j15, 1000000L, J);
            jArr4[i10] = jE2 - jArr5[i10];
            j0Var.X(4);
            j12 += (long) iArr2[i10];
            i10++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iP2 = i11;
            j14 = j15;
            j13 = jE2;
        }
        return Pair.create(Long.valueOf(jE1), new k2.h(iArr, jArr, jArr2, jArr3));
    }

    private static long I(j0 j0Var) {
        j0Var.W(8);
        return e3.b.p(j0Var.q()) == 1 ? j0Var.O() : j0Var.J();
    }

    private static b J(j0 j0Var, SparseArray sparseArray, boolean z10) {
        j0Var.W(8);
        int iO = e3.b.o(j0Var.q());
        b bVar = (b) (z10 ? sparseArray.valueAt(0) : sparseArray.get(j0Var.q()));
        if (bVar == null) {
            return null;
        }
        if ((iO & 1) != 0) {
            long jO = j0Var.O();
            v vVar = bVar.f59342b;
            vVar.f59421c = jO;
            vVar.f59422d = jO;
        }
        c cVar = bVar.f59345e;
        bVar.f59342b.f59419a = new c((iO & 2) != 0 ? j0Var.q() - 1 : cVar.f59299a, (iO & 8) != 0 ? j0Var.q() : cVar.f59300b, (iO & 16) != 0 ? j0Var.q() : cVar.f59301c, (iO & 32) != 0 ? j0Var.q() : cVar.f59302d);
        return bVar;
    }

    private static void K(androidx.media3.container.d.b bVar, SparseArray sparseArray, boolean z10, int i10, byte[] bArr) throws ParserException {
        b bVarJ = J(((androidx.media3.container.d.c) androidx.media3.common.util.a.e(bVar.e(1952868452))).f10275b, sparseArray, z10);
        if (bVarJ == null) {
            return;
        }
        v vVar = bVarJ.f59342b;
        long j10 = vVar.f59435q;
        boolean z11 = vVar.f59436r;
        bVarJ.k();
        bVarJ.f59353m = true;
        androidx.media3.container.d.c cVarE = bVar.e(1952867444);
        if (cVarE == null || (i10 & 2) != 0) {
            vVar.f59435q = j10;
            vVar.f59436r = z11;
        } else {
            vVar.f59435q = I(cVarE.f10275b);
            vVar.f59436r = true;
        }
        N(bVar, bVarJ, i10);
        u uVarB = bVarJ.f59344d.f59437a.b(((c) androidx.media3.common.util.a.e(vVar.f59419a)).f59299a);
        androidx.media3.container.d.c cVarE2 = bVar.e(1935763834);
        if (cVarE2 != null) {
            D((u) androidx.media3.common.util.a.e(uVarB), cVarE2.f10275b, vVar);
        }
        androidx.media3.container.d.c cVarE3 = bVar.e(1935763823);
        if (cVarE3 != null) {
            C(cVarE3.f10275b, vVar);
        }
        androidx.media3.container.d.c cVarE4 = bVar.e(1936027235);
        if (cVarE4 != null) {
            G(cVarE4.f10275b, vVar);
        }
        E(bVar, uVarB != null ? uVarB.f59415b : null, vVar);
        int size = bVar.f10273c.size();
        for (int i11 = 0; i11 < size; i11++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar.f10273c.get(i11);
            if (cVar.f10271a == 1970628964) {
                O(cVar.f10275b, vVar, bArr);
            }
        }
    }

    private static Pair L(j0 j0Var) {
        j0Var.W(12);
        return Pair.create(Integer.valueOf(j0Var.q()), new c(j0Var.q() - 1, j0Var.q(), j0Var.q(), j0Var.q()));
    }

    private static int M(b bVar, int i10, int i11, j0 j0Var, int i12) throws ParserException {
        int iQ;
        b bVar2 = bVar;
        j0Var.W(8);
        int iO = e3.b.o(j0Var.q());
        t tVar = bVar2.f59344d.f59437a;
        v vVar = bVar2.f59342b;
        c cVar = (c) a1.i(vVar.f59419a);
        vVar.f59426h[i10] = j0Var.L();
        long[] jArr = vVar.f59425g;
        long j10 = vVar.f59421c;
        jArr[i10] = j10;
        if ((iO & 1) != 0) {
            jArr[i10] = j10 + ((long) j0Var.q());
        }
        boolean z10 = (iO & 4) != 0;
        int iQ2 = cVar.f59302d;
        if (z10) {
            iQ2 = j0Var.q();
        }
        boolean z11 = (iO & 256) != 0;
        boolean z12 = (iO & 512) != 0;
        boolean z13 = (iO & 1024) != 0;
        boolean z14 = (iO & 2048) != 0;
        long j11 = q(tVar) ? ((long[]) a1.i(tVar.f59411j))[0] : 0L;
        int[] iArr = vVar.f59427i;
        long[] jArr2 = vVar.f59428j;
        boolean[] zArr = vVar.f59429k;
        int i13 = iQ2;
        boolean z15 = tVar.f59403b == 2 && (i11 & 1) != 0;
        int i14 = i12 + vVar.f59426h[i10];
        boolean z16 = z15;
        long j12 = tVar.f59404c;
        long j13 = vVar.f59435q;
        int i15 = i12;
        while (i15 < i14) {
            int i16 = i(z11 ? j0Var.q() : cVar.f59300b);
            int i17 = i(z12 ? j0Var.q() : cVar.f59301c);
            if (z13) {
                iQ = j0Var.q();
            } else {
                iQ = (i15 == 0 && z10) ? i13 : cVar.f59302d;
            }
            long jE1 = a1.e1((((long) (z14 ? j0Var.q() : 0)) + j13) - j11, 1000000L, j12);
            jArr2[i15] = jE1;
            if (!vVar.f59436r) {
                jArr2[i15] = jE1 + bVar2.f59344d.f59444h;
            }
            iArr[i15] = i17;
            zArr[i15] = ((iQ >> 16) & 1) == 0 && (!z16 || i15 == 0);
            j13 += (long) i16;
            i15++;
            bVar2 = bVar;
            z11 = z11;
            z10 = z10;
            z14 = z14;
            z12 = z12;
            z13 = z13;
        }
        vVar.f59435q = j13;
        return i14;
    }

    private static void N(androidx.media3.container.d.b bVar, b bVar2, int i10) throws ParserException {
        List list = bVar.f10273c;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) list.get(i13);
            if (cVar.f10271a == 1953658222) {
                j0 j0Var = cVar.f10275b;
                j0Var.W(12);
                int iL = j0Var.L();
                if (iL > 0) {
                    i12 += iL;
                    i11++;
                }
            }
        }
        bVar2.f59348h = 0;
        bVar2.f59347g = 0;
        bVar2.f59346f = 0;
        bVar2.f59342b.e(i11, i12);
        int i14 = 0;
        int iM = 0;
        for (int i15 = 0; i15 < size; i15++) {
            androidx.media3.container.d.c cVar2 = (androidx.media3.container.d.c) list.get(i15);
            if (cVar2.f10271a == 1953658222) {
                iM = M(bVar2, i14, i10, cVar2.f10275b, iM);
                i14++;
            }
        }
    }

    private static void O(j0 j0Var, v vVar, byte[] bArr) throws ParserException {
        j0Var.W(8);
        j0Var.l(bArr, 0, 16);
        if (Arrays.equals(bArr, N)) {
            F(j0Var, 16, vVar);
        }
    }

    private void P(long j10) throws ParserException {
        while (!this.f59325n.isEmpty() && ((androidx.media3.container.d.b) this.f59325n.peek()).f10272b == j10) {
            u((androidx.media3.container.d.b) this.f59325n.pop());
        }
        k();
    }

    private boolean Q(k2.s sVar) throws ParserException {
        if (this.f59333v == 0) {
            if (!sVar.readFully(this.f59324m.e(), 0, 8, true)) {
                return false;
            }
            this.f59333v = 8;
            this.f59324m.W(0);
            this.f59332u = this.f59324m.J();
            this.f59331t = this.f59324m.q();
        }
        long j10 = this.f59332u;
        if (j10 == 1) {
            sVar.readFully(this.f59324m.e(), 8, 8);
            this.f59333v += 8;
            this.f59332u = this.f59324m.O();
        } else if (j10 == 0) {
            long length = sVar.getLength();
            if (length == -1 && !this.f59325n.isEmpty()) {
                length = ((androidx.media3.container.d.b) this.f59325n.peek()).f10272b;
            }
            if (length != -1) {
                this.f59332u = (length - sVar.getPosition()) + ((long) this.f59333v);
            }
        }
        if (this.f59332u < this.f59333v) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = sVar.getPosition() - ((long) this.f59333v);
        int i10 = this.f59331t;
        if ((i10 == 1836019558 || i10 == 1835295092) && !this.L) {
            this.I.d(new m0.b(this.A, position));
            this.L = true;
        }
        if (this.f59331t == 1836019558) {
            int size = this.f59316e.size();
            for (int i11 = 0; i11 < size; i11++) {
                v vVar = ((b) this.f59316e.valueAt(i11)).f59342b;
                vVar.f59420b = position;
                vVar.f59422d = position;
                vVar.f59421c = position;
            }
        }
        int i12 = this.f59331t;
        if (i12 == 1835295092) {
            this.C = null;
            this.f59335x = position + this.f59332u;
            this.f59330s = 2;
            return true;
        }
        if (U(i12)) {
            long position2 = (sVar.getPosition() + this.f59332u) - 8;
            this.f59325n.push(new androidx.media3.container.d.b(this.f59331t, position2));
            if (this.f59332u == this.f59333v) {
                P(position2);
            } else {
                k();
            }
        } else if (V(this.f59331t)) {
            if (this.f59333v != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            if (this.f59332u > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            j0 j0Var = new j0((int) this.f59332u);
            System.arraycopy(this.f59324m.e(), 0, j0Var.e(), 0, 8);
            this.f59334w = j0Var;
            this.f59330s = 1;
        } else {
            if (this.f59332u > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.f59334w = null;
            this.f59330s = 1;
        }
        return true;
    }

    private void R(k2.s sVar) throws ParserException {
        int i10 = (int) (this.f59332u - ((long) this.f59333v));
        j0 j0Var = this.f59334w;
        if (j0Var != null) {
            sVar.readFully(j0Var.e(), 8, i10);
            w(new androidx.media3.container.d.c(this.f59331t, j0Var), sVar.getPosition());
        } else {
            sVar.skipFully(i10);
        }
        P(sVar.getPosition());
    }

    private void S(k2.s sVar) throws ParserException {
        int size = this.f59316e.size();
        long j10 = Long.MAX_VALUE;
        b bVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            v vVar = ((b) this.f59316e.valueAt(i10)).f59342b;
            if (vVar.f59434p) {
                long j11 = vVar.f59422d;
                if (j11 < j10) {
                    bVar = (b) this.f59316e.valueAt(i10);
                    j10 = j11;
                }
            }
        }
        if (bVar == null) {
            this.f59330s = 3;
            return;
        }
        int position = (int) (j10 - sVar.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        sVar.skipFully(position);
        bVar.f59342b.b(sVar);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x0114  */
    private boolean T(k2.s sVar) throws ParserException {
        int iE;
        int iO;
        b bVarN = this.C;
        if (bVarN == null) {
            bVarN = n(this.f59316e);
            if (bVarN == null) {
                int position = (int) (this.f59335x - sVar.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                sVar.skipFully(position);
                k();
                return false;
            }
            int iD = (int) (bVarN.d() - sVar.getPosition());
            if (iD < 0) {
                androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iD = 0;
            }
            sVar.skipFully(iD);
            this.C = bVarN;
        }
        if (this.f59330s == 3) {
            this.D = bVarN.f();
            this.G = !h(bVarN.f59344d.f59437a.f59408g);
            if (bVarN.f59346f < bVarN.f59349i) {
                sVar.skipFully(this.D);
                bVarN.m();
                if (!bVarN.h()) {
                    this.C = null;
                }
                this.f59330s = 3;
                return true;
            }
            if (bVarN.f59344d.f59437a.f59409h == 1) {
                this.D -= 8;
                sVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVarN.f59344d.f59437a.f59408g.f9849o)) {
                this.E = bVarN.i(this.D, 7);
                k2.c.a(this.D, this.f59321j);
                bVarN.f59341a.c(this.f59321j, 7);
                this.E += 7;
            } else {
                this.E = bVarN.i(this.D, 0);
            }
            this.D += this.E;
            this.f59330s = 4;
            this.F = 0;
        }
        t tVar = bVarN.f59344d.f59437a;
        s0 s0Var = bVarN.f59341a;
        long jE = bVarN.e();
        p0 p0Var = this.f59322k;
        if (p0Var != null) {
            jE = p0Var.a(jE);
        }
        long j10 = jE;
        if (tVar.f59412k == 0) {
            while (true) {
                int i10 = this.E;
                int i11 = this.D;
                if (i10 >= i11) {
                    break;
                }
                this.E += s0Var.e(sVar, i11 - i10, false);
            }
        } else {
            byte[] bArrE = this.f59318g.e();
            bArrE[0] = 0;
            bArrE[1] = 0;
            bArrE[2] = 0;
            int i12 = 4 - tVar.f59412k;
            while (this.E < this.D) {
                int i13 = this.F;
                if (i13 == 0) {
                    if (this.K.length > 0 || !this.G) {
                        iO = androidx.media3.container.g.o(tVar.f59408g);
                        if (tVar.f59412k + iO > this.D - this.E) {
                            iO = 0;
                        }
                    } else {
                        iO = 0;
                    }
                    sVar.readFully(bArrE, i12, tVar.f59412k + iO);
                    this.f59318g.W(0);
                    int iQ = this.f59318g.q();
                    if (iQ < 0) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", null);
                    }
                    this.F = iQ - iO;
                    this.f59317f.W(0);
                    s0Var.c(this.f59317f, 4);
                    this.E += 4;
                    this.D += i12;
                    this.H = this.K.length > 0 && iO > 0 && androidx.media3.container.g.n(tVar.f59408g, bArrE[4]);
                    s0Var.c(this.f59318g, iO);
                    this.E += iO;
                    if (iO > 0 && !this.G && androidx.media3.container.g.k(bArrE, 4, iO, tVar.f59408g)) {
                        this.G = true;
                    }
                } else {
                    if (this.H) {
                        this.f59319h.S(i13);
                        sVar.readFully(this.f59319h.e(), 0, this.F);
                        s0Var.c(this.f59319h, this.F);
                        iE = this.F;
                        int iL = androidx.media3.container.g.L(this.f59319h.e(), this.f59319h.g());
                        this.f59319h.W(0);
                        this.f59319h.V(iL);
                        if (tVar.f59408g.f9851q != -1) {
                            int iF = this.f59327p.f();
                            int i14 = tVar.f59408g.f9851q;
                            if (iF != i14) {
                                this.f59327p.g(i14);
                            }
                        } else if (this.f59327p.f() != 0) {
                            this.f59327p.g(0);
                        }
                        this.f59327p.a(j10, this.f59319h);
                        if ((bVarN.c() & 4) != 0) {
                            this.f59327p.d();
                        }
                    } else {
                        iE = s0Var.e(sVar, i13, false);
                    }
                    this.E += iE;
                    this.F -= iE;
                }
            }
        }
        int iC = bVarN.c();
        if (!this.G) {
            iC |= 67108864;
        }
        int i15 = iC;
        u uVarG = bVarN.g();
        s0Var.b(j10, i15, this.D, 0, uVarG != null ? uVarG.f59416c : null);
        z(j10);
        if (!bVarN.h()) {
            this.C = null;
        }
        this.f59330s = 3;
        return true;
    }

    private static boolean U(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    private static boolean V(int i10) {
        return i10 == 1751411826 || i10 == 1835296868 || i10 == 1836476516 || i10 == 1936286840 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1668576371 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1937011571 || i10 == 1952867444 || i10 == 1952868452 || i10 == 1953196132 || i10 == 1953654136 || i10 == 1953658222 || i10 == 1886614376 || i10 == 1935763834 || i10 == 1935763823 || i10 == 1936027235 || i10 == 1970628964 || i10 == 1935828848 || i10 == 1936158820 || i10 == 1701606260 || i10 == 1835362404 || i10 == 1701671783;
    }

    private boolean h(androidx.media3.common.r rVar) {
        if (Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H264)) {
            return (this.f59313b & 64) != 0;
        }
        return Objects.equals(rVar.f9849o, MimeTypes.VIDEO_H265) && (this.f59313b & 128) != 0;
    }

    private static int i(int i10) throws ParserException {
        if (i10 >= 0) {
            return i10;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i10, null);
    }

    public static int j(int i10) {
        int i11 = (i10 & 1) != 0 ? 64 : 0;
        return (i10 & 2) != 0 ? i11 | 128 : i11;
    }

    private void k() {
        this.f59330s = 0;
        this.f59333v = 0;
    }

    private c l(SparseArray sparseArray, int i10) {
        return sparseArray.size() == 1 ? (c) sparseArray.valueAt(0) : (c) androidx.media3.common.util.a.e((c) sparseArray.get(i10));
    }

    private static DrmInitData m(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) list.get(i10);
            if (cVar.f10271a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrE = cVar.f10275b.e();
                UUID uuidF = p.f(bArrE);
                if (uuidF == null) {
                    androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, MimeTypes.VIDEO_MP4, bArrE));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private static b n(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j10 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b bVar2 = (b) sparseArray.valueAt(i10);
            if ((bVar2.f59353m || bVar2.f59346f != bVar2.f59344d.f59438b) && (!bVar2.f59353m || bVar2.f59348h != bVar2.f59342b.f59423e)) {
                long jD = bVar2.d();
                if (jD < j10) {
                    bVar = bVar2;
                    j10 = jD;
                }
            }
        }
        return bVar;
    }

    private void p() {
        int i10;
        s0[] s0VarArr = new s0[2];
        this.J = s0VarArr;
        s0 s0Var = this.f59328q;
        int i11 = 0;
        if (s0Var != null) {
            s0VarArr[0] = s0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.f59313b & 4) != 0) {
            s0VarArr[i10] = this.I.track(100, 5);
            i12 = 101;
            i10++;
        }
        s0[] s0VarArr2 = (s0[]) a1.X0(this.J, i10);
        this.J = s0VarArr2;
        for (s0 s0Var2 : s0VarArr2) {
            s0Var2.d(O);
        }
        this.K = new s0[this.f59315d.size()];
        while (i11 < this.K.length) {
            s0 s0VarTrack = this.I.track(i12, 3);
            s0VarTrack.d((androidx.media3.common.r) this.f59315d.get(i11));
            this.K[i11] = s0VarTrack;
            i11++;
            i12++;
        }
    }

    private static boolean q(t tVar) {
        long[] jArr = tVar.f59410i;
        if (jArr == null || jArr.length != 1 || tVar.f59411j == null) {
            return false;
        }
        long j10 = jArr[0];
        return j10 == 0 || a1.e1(j10, 1000000L, tVar.f59405d) + a1.e1(tVar.f59411j[0], 1000000L, tVar.f59404c) >= tVar.f59406e;
    }

    public void r(long j10, j0 j0Var) {
        k2.g.a(j10, j0Var, this.K);
    }

    public static k2.r[] s() {
        return new k2.r[]{new h(h3.s.a.f61264a, 32)};
    }

    private void u(androidx.media3.container.d.b bVar) throws ParserException {
        int i10 = bVar.f10271a;
        if (i10 == 1836019574) {
            y(bVar);
        } else if (i10 == 1836019558) {
            x(bVar);
        } else {
            if (this.f59325n.isEmpty()) {
                return;
            }
            ((androidx.media3.container.d.b) this.f59325n.peek()).b(bVar);
        }
    }

    private void v(j0 j0Var) {
        long jE1;
        String str;
        long jE2;
        String str2;
        long J;
        long jA;
        if (this.J.length == 0) {
            return;
        }
        j0Var.W(8);
        int iP = e3.b.p(j0Var.q());
        if (iP == 0) {
            String str3 = (String) androidx.media3.common.util.a.e(j0Var.B());
            String str4 = (String) androidx.media3.common.util.a.e(j0Var.B());
            long J2 = j0Var.J();
            jE1 = a1.e1(j0Var.J(), 1000000L, J2);
            long j10 = this.B;
            long j11 = j10 != C.TIME_UNSET ? j10 + jE1 : -9223372036854775807L;
            str = str3;
            jE2 = a1.e1(j0Var.J(), 1000L, J2);
            str2 = str4;
            J = j0Var.J();
            jA = j11;
        } else {
            if (iP != 1) {
                androidx.media3.common.util.u.h("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iP);
                return;
            }
            long J3 = j0Var.J();
            jA = a1.e1(j0Var.O(), 1000000L, J3);
            long jE3 = a1.e1(j0Var.J(), 1000L, J3);
            long J4 = j0Var.J();
            str = (String) androidx.media3.common.util.a.e(j0Var.B());
            jE2 = jE3;
            J = J4;
            str2 = (String) androidx.media3.common.util.a.e(j0Var.B());
            jE1 = -9223372036854775807L;
        }
        byte[] bArr = new byte[j0Var.a()];
        j0Var.l(bArr, 0, j0Var.a());
        j0 j0Var2 = new j0(this.f59323l.a(new v2.a(str, str2, jE2, J, bArr)));
        int iA = j0Var2.a();
        for (s0 s0Var : this.J) {
            j0Var2.W(0);
            s0Var.c(j0Var2, iA);
        }
        if (jA == C.TIME_UNSET) {
            this.f59326o.addLast(new a(jE1, true, iA));
            this.f59336y += iA;
            return;
        }
        if (!this.f59326o.isEmpty()) {
            this.f59326o.addLast(new a(jA, false, iA));
            this.f59336y += iA;
            return;
        }
        p0 p0Var = this.f59322k;
        if (p0Var != null && !p0Var.g()) {
            this.f59326o.addLast(new a(jA, false, iA));
            this.f59336y += iA;
            return;
        }
        p0 p0Var2 = this.f59322k;
        if (p0Var2 != null) {
            jA = p0Var2.a(jA);
        }
        for (s0 s0Var2 : this.J) {
            s0Var2.b(jA, 1, iA, 0, null);
        }
    }

    private void w(androidx.media3.container.d.c cVar, long j10) throws ParserException {
        if (!this.f59325n.isEmpty()) {
            ((androidx.media3.container.d.b) this.f59325n.peek()).c(cVar);
            return;
        }
        int i10 = cVar.f10271a;
        if (i10 != 1936286840) {
            if (i10 == 1701671783) {
                v(cVar.f10275b);
            }
        } else {
            Pair pairH = H(cVar.f10275b, j10);
            this.B = ((Long) pairH.first).longValue();
            this.I.d((m0) pairH.second);
            this.L = true;
        }
    }

    private void x(androidx.media3.container.d.b bVar) throws ParserException {
        B(bVar, this.f59316e, this.f59314c != null, this.f59313b, this.f59320i);
        DrmInitData drmInitDataM = m(bVar.f10273c);
        if (drmInitDataM != null) {
            int size = this.f59316e.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((b) this.f59316e.valueAt(i10)).n(drmInitDataM);
            }
        }
        if (this.f59337z != C.TIME_UNSET) {
            int size2 = this.f59316e.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((b) this.f59316e.valueAt(i11)).l(this.f59337z);
            }
            this.f59337z = C.TIME_UNSET;
        }
    }

    private void y(androidx.media3.container.d.b bVar) {
        int i10 = 0;
        androidx.media3.common.util.a.h(this.f59314c == null, "Unexpected moov box.");
        DrmInitData drmInitDataM = m(bVar.f10273c);
        androidx.media3.container.d.b bVar2 = (androidx.media3.container.d.b) androidx.media3.common.util.a.e(bVar.d(1836475768));
        SparseArray sparseArray = new SparseArray();
        int size = bVar2.f10273c.size();
        long jA = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            androidx.media3.container.d.c cVar = (androidx.media3.container.d.c) bVar2.f10273c.get(i11);
            int i12 = cVar.f10271a;
            if (i12 == 1953654136) {
                Pair pairL = L(cVar.f10275b);
                sparseArray.put(((Integer) pairL.first).intValue(), (c) pairL.second);
            } else if (i12 == 1835362404) {
                jA = A(cVar.f10275b);
            }
        }
        List listG = e3.b.G(bVar, new e0(), jA, drmInitDataM, (this.f59313b & 16) != 0, false, new com.google.common.base.f() {
            @Override
            public final Object apply(Object obj) {
                return this.f59310a.t((t) obj);
            }
        });
        int size2 = listG.size();
        if (this.f59316e.size() != 0) {
            androidx.media3.common.util.a.g(this.f59316e.size() == size2);
            while (i10 < size2) {
                w wVar = (w) listG.get(i10);
                t tVar = wVar.f59437a;
                ((b) this.f59316e.get(tVar.f59402a)).j(wVar, l(sparseArray, tVar.f59402a));
                i10++;
            }
            return;
        }
        String strB = k.b(listG);
        while (i10 < size2) {
            w wVar2 = (w) listG.get(i10);
            t tVar2 = wVar2.f59437a;
            s0 s0VarTrack = this.I.track(i10, tVar2.f59403b);
            s0VarTrack.f(tVar2.f59406e);
            this.f59316e.put(tVar2.f59402a, new b(s0VarTrack, wVar2, l(sparseArray, tVar2.f59402a), strB));
            this.A = Math.max(this.A, tVar2.f59406e);
            i10++;
        }
        this.I.endTracks();
    }

    private void z(long j10) {
        while (!this.f59326o.isEmpty()) {
            a aVar = (a) this.f59326o.removeFirst();
            this.f59336y -= aVar.f59340c;
            long jA = aVar.f59338a;
            if (aVar.f59339b) {
                jA += j10;
            }
            p0 p0Var = this.f59322k;
            if (p0Var != null) {
                jA = p0Var.a(jA);
            }
            for (s0 s0Var : this.J) {
                s0Var.b(jA, 1, aVar.f59340c, this.f59336y, null);
            }
        }
    }

    @Override
    public boolean b(k2.s sVar) {
        q0 q0VarB = s.b(sVar);
        this.f59329r = q0VarB != null ? ImmutableList.of(q0VarB) : ImmutableList.of();
        return q0VarB == null;
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        while (true) {
            int i10 = this.f59330s;
            if (i10 != 0) {
                if (i10 == 1) {
                    R(sVar);
                } else if (i10 == 2) {
                    S(sVar);
                } else if (T(sVar)) {
                    return 0;
                }
            } else if (!Q(sVar)) {
                this.f59327p.d();
                return -1;
            }
        }
    }

    @Override
    public void e(k2.t tVar) {
        if ((this.f59313b & 32) == 0) {
            tVar = new h3.t(tVar, this.f59312a);
        }
        this.I = tVar;
        k();
        p();
        t tVar2 = this.f59314c;
        if (tVar2 != null) {
            this.f59316e.put(0, new b(this.I.track(0, tVar2.f59403b), new w(this.f59314c, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0), k.a(this.f59314c.f59408g)));
            this.I.endTracks();
        }
    }

    @Override
    public ImmutableList f() {
        return this.f59329r;
    }

    @Override
    public void seek(long j10, long j11) {
        int size = this.f59316e.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((b) this.f59316e.valueAt(i10)).k();
        }
        this.f59326o.clear();
        this.f59336y = 0;
        this.f59327p.b();
        this.f59337z = j11;
        this.f59325n.clear();
        k();
    }

    public h(h3.s.a aVar, int i10) {
        this(aVar, i10, null, null, ImmutableList.of(), null);
    }

    public h(h3.s.a aVar, int i10, p0 p0Var, t tVar, List list, s0 s0Var) {
        this.f59312a = aVar;
        this.f59313b = i10;
        this.f59322k = p0Var;
        this.f59314c = tVar;
        this.f59315d = Collections.unmodifiableList(list);
        this.f59328q = s0Var;
        this.f59323l = new v2.c();
        this.f59324m = new j0(16);
        this.f59317f = new j0(androidx.media3.container.g.f10281a);
        this.f59318g = new j0(6);
        this.f59319h = new j0();
        byte[] bArr = new byte[16];
        this.f59320i = bArr;
        this.f59321j = new j0(bArr);
        this.f59325n = new ArrayDeque();
        this.f59326o = new ArrayDeque();
        this.f59316e = new SparseArray();
        this.f59329r = ImmutableList.of();
        this.A = C.TIME_UNSET;
        this.f59337z = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.I = k2.t.f63690j1;
        this.J = new s0[0];
        this.K = new s0[0];
        this.f59327p = new androidx.media3.container.i(new androidx.media3.container.i.b() {
            @Override
            public final void a(long j10, j0 j0Var) {
                this.f59311a.r(j10, j0Var);
            }
        });
    }

    @Override
    public void release() {
    }

    protected t t(t tVar) {
        return tVar;
    }
}
