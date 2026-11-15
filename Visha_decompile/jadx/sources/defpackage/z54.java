package defpackage;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.Mp4Box;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.transsion.socket.pkgdata.SocketData;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class z54 implements nk3 {
    public static final uk3 I = new uk3() {
        @Override
        public final nk3[] createExtractors() {
            return z54.k();
        }
    };
    public static final byte[] J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, SocketData.CLAZZ_TYPE_ERROR_CODE, -12};
    public static final k K = new k.b().e0(MimeTypes.APPLICATION_EMSG).E();
    public int A;
    public int B;
    public int C;
    public boolean D;
    public qk3 E;
    public fva[] F;
    public fva[] G;
    public boolean H;
    public final int a;
    public final tua b;
    public final List c;
    public final SparseArray d;
    public final qw7 e;
    public final qw7 f;
    public final qw7 g;
    public final byte[] h;
    public final qw7 i;
    public final poa j;
    public final de3 k;
    public final qw7 l;
    public final ArrayDeque m;
    public final ArrayDeque n;
    public final fva o;
    public int p;
    public int q;
    public long r;
    public int s;
    public qw7 t;
    public long u;
    public int v;
    public long w;
    public long x;
    public long y;
    public b z;

    public static final class a {
        public final long a;
        public final boolean b;
        public final int c;

        public a(long j, boolean z, int i) {
            this.a = j;
            this.b = z;
            this.c = i;
        }
    }

    public static final class b {
        public final fva a;
        public gva d;
        public a42 e;
        public int f;
        public int g;
        public int h;
        public int i;
        public boolean l;
        public final wua b = new wua();
        public final qw7 c = new qw7();
        public final qw7 j = new qw7(1);
        public final qw7 k = new qw7();

        public b(fva fvaVar, gva gvaVar, a42 a42Var) {
            this.a = fvaVar;
            this.d = gvaVar;
            this.e = a42Var;
            j(gvaVar, a42Var);
        }

        public int c() {
            int i;
            if (this.l) {
                i = this.b.k[this.f] ? 1 : 0;
            } else {
                i = this.d.g[this.f];
            }
            return g() != null ? i | 1073741824 : i;
        }

        public long d() {
            return !this.l ? this.d.c[this.f] : this.b.g[this.h];
        }

        public long e() {
            return !this.l ? this.d.f[this.f] : this.b.c(this.f);
        }

        public int f() {
            return !this.l ? this.d.d[this.f] : this.b.i[this.f];
        }

        public vua g() {
            if (!this.l) {
                return null;
            }
            int i = ((a42) blb.j(this.b.a)).a;
            vua vuaVarA = this.b.n;
            if (vuaVarA == null) {
                vuaVarA = this.d.a.a(i);
            }
            if (vuaVarA == null || !vuaVarA.a) {
                return null;
            }
            return vuaVarA;
        }

        public boolean h() {
            this.f++;
            if (!this.l) {
                return false;
            }
            int i = this.g + 1;
            this.g = i;
            int[] iArr = this.b.h;
            int i2 = this.h;
            if (i != iArr[i2]) {
                return true;
            }
            this.h = i2 + 1;
            this.g = 0;
            return false;
        }

        public int i(int i, int i2) {
            qw7 qw7Var;
            vua vuaVarG = g();
            if (vuaVarG == null) {
                return 0;
            }
            int length = vuaVarG.d;
            if (length != 0) {
                qw7Var = this.b.o;
            } else {
                byte[] bArr = (byte[]) blb.j(vuaVarG.e);
                this.k.M(bArr, bArr.length);
                qw7 qw7Var2 = this.k;
                length = bArr.length;
                qw7Var = qw7Var2;
            }
            boolean zG = this.b.g(this.f);
            boolean z = zG || i2 != 0;
            this.j.d()[0] = (byte) ((z ? 128 : 0) | length);
            this.j.O(0);
            this.a.a(this.j, 1, 1);
            this.a.a(qw7Var, length, 1);
            if (!z) {
                return length + 1;
            }
            if (!zG) {
                this.c.K(8);
                byte[] bArrD = this.c.d();
                bArrD[0] = 0;
                bArrD[1] = 1;
                bArrD[2] = (byte) ((i2 >> 8) & 255);
                bArrD[3] = (byte) (i2 & 255);
                bArrD[4] = (byte) ((i >> 24) & 255);
                bArrD[5] = (byte) ((i >> 16) & 255);
                bArrD[6] = (byte) ((i >> 8) & 255);
                bArrD[7] = (byte) (i & 255);
                this.a.a(this.c, 8, 1);
                return length + 9;
            }
            qw7 qw7Var3 = this.b.o;
            int I = qw7Var3.I();
            qw7Var3.P(-2);
            int i3 = (I * 6) + 2;
            if (i2 != 0) {
                this.c.K(i3);
                byte[] bArrD2 = this.c.d();
                qw7Var3.j(bArrD2, 0, i3);
                int i4 = (((bArrD2[2] & 255) << 8) | (bArrD2[3] & 255)) + i2;
                bArrD2[2] = (byte) ((i4 >> 8) & 255);
                bArrD2[3] = (byte) (i4 & 255);
                qw7Var3 = this.c;
            }
            this.a.a(qw7Var3, i3, 1);
            return length + 1 + i3;
        }

        public void j(gva gvaVar, a42 a42Var) {
            this.d = gvaVar;
            this.e = a42Var;
            this.a.b(gvaVar.a.f);
            k();
        }

        public void k() {
            this.b.f();
            this.f = 0;
            this.h = 0;
            this.g = 0;
            this.i = 0;
            this.l = false;
        }

        public void l(long j) {
            int i = this.f;
            while (true) {
                wua wuaVar = this.b;
                if (i >= wuaVar.f || wuaVar.c(i) >= j) {
                    return;
                }
                if (this.b.k[i]) {
                    this.i = i;
                }
                i++;
            }
        }

        public void m() {
            vua vuaVarG = g();
            if (vuaVarG == null) {
                return;
            }
            qw7 qw7Var = this.b.o;
            int i = vuaVarG.d;
            if (i != 0) {
                qw7Var.P(i);
            }
            if (this.b.g(this.f)) {
                qw7Var.P(qw7Var.I() * 6);
            }
        }

        public void n(DrmInitData drmInitData) {
            vua vuaVarA = this.d.a.a(((a42) blb.j(this.b.a)).a);
            this.a.b(this.d.a.f.b().M(drmInitData.copyWithSchemeType(vuaVarA != null ? vuaVarA.b : null)).E());
        }
    }

    public z54() {
        this(0);
    }

    public static long A(qw7 qw7Var) {
        qw7Var.O(8);
        return xk.c(qw7Var.n()) == 1 ? qw7Var.H() : qw7Var.E();
    }

    public static b B(qw7 qw7Var, SparseArray sparseArray, boolean z) {
        qw7Var.O(8);
        int iB = xk.b(qw7Var.n());
        b bVar = (b) (z ? sparseArray.valueAt(0) : sparseArray.get(qw7Var.n()));
        if (bVar == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jH = qw7Var.H();
            wua wuaVar = bVar.b;
            wuaVar.c = jH;
            wuaVar.d = jH;
        }
        a42 a42Var = bVar.e;
        bVar.b.a = new a42((iB & 2) != 0 ? qw7Var.n() - 1 : a42Var.a, (iB & 8) != 0 ? qw7Var.n() : a42Var.b, (iB & 16) != 0 ? qw7Var.n() : a42Var.c, (iB & 32) != 0 ? qw7Var.n() : a42Var.d);
        return bVar;
    }

    public static void C(xk.a aVar, SparseArray sparseArray, boolean z, int i, byte[] bArr) throws ParserException {
        b bVarB = B(((xk.b) zi.e(aVar.g(Mp4Box.TYPE_tfhd))).b, sparseArray, z);
        if (bVarB == null) {
            return;
        }
        wua wuaVar = bVarB.b;
        long j = wuaVar.q;
        boolean z2 = wuaVar.r;
        bVarB.k();
        bVarB.l = true;
        xk.b bVarG = aVar.g(Mp4Box.TYPE_tfdt);
        if (bVarG == null || (i & 2) != 0) {
            wuaVar.q = j;
            wuaVar.r = z2;
        } else {
            wuaVar.q = A(bVarG.b);
            wuaVar.r = true;
        }
        F(aVar, bVarB, i);
        vua vuaVarA = bVarB.d.a.a(((a42) zi.e(wuaVar.a)).a);
        xk.b bVarG2 = aVar.g(Mp4Box.TYPE_saiz);
        if (bVarG2 != null) {
            v((vua) zi.e(vuaVarA), bVarG2.b, wuaVar);
        }
        xk.b bVarG3 = aVar.g(Mp4Box.TYPE_saio);
        if (bVarG3 != null) {
            u(bVarG3.b, wuaVar);
        }
        xk.b bVarG4 = aVar.g(Mp4Box.TYPE_senc);
        if (bVarG4 != null) {
            y(bVarG4.b, wuaVar);
        }
        w(aVar, vuaVarA != null ? vuaVarA.b : null, wuaVar);
        int size = aVar.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            xk.b bVar = (xk.b) aVar.c.get(i2);
            if (bVar.a == 1970628964) {
                G(bVar.b, wuaVar, bArr);
            }
        }
    }

    public static Pair D(qw7 qw7Var) {
        qw7Var.O(12);
        return Pair.create(Integer.valueOf(qw7Var.n()), new a42(qw7Var.n() - 1, qw7Var.n(), qw7Var.n(), qw7Var.n()));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0097  */
    /* JADX WARN: Code duplicated, block: B:45:0x00af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00be  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:64:0x0110  */
    /* JADX WARN: Code duplicated, block: B:70:0x0125  */
    public static int E(b bVar, int i, int i2, qw7 qw7Var, int i3) throws ParserException {
        long j;
        long j2;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z;
        int i4;
        long j3;
        long j4;
        int i5;
        int iN;
        int iN2;
        int iN3;
        int iN4;
        long jB0;
        boolean z2;
        b bVar2 = bVar;
        qw7Var.O(8);
        int iB = xk.b(qw7Var.n());
        tua tuaVar = bVar2.d.a;
        wua wuaVar = bVar2.b;
        a42 a42Var = (a42) blb.j(wuaVar.a);
        wuaVar.h[i] = qw7Var.G();
        long[] jArr2 = wuaVar.g;
        long j5 = wuaVar.c;
        jArr2[i] = j5;
        if ((iB & 1) != 0) {
            jArr2[i] = j5 + ((long) qw7Var.n());
        }
        boolean z3 = (iB & 4) != 0;
        int iN5 = a42Var.d;
        if (z3) {
            iN5 = qw7Var.n();
        }
        boolean z4 = (iB & 256) != 0;
        boolean z5 = (iB & 512) != 0;
        boolean z6 = (iB & 1024) != 0;
        boolean z7 = (iB & 2048) != 0;
        long[] jArr3 = tuaVar.h;
        if (jArr3 != null && jArr3.length == 1) {
            j = 0;
            if (jArr3[0] == 0) {
                j2 = ((long[]) blb.j(tuaVar.i))[0];
            }
            iArr = wuaVar.i;
            jArr = wuaVar.j;
            zArr = wuaVar.k;
            int i6 = iN5;
            if (tuaVar.b == 2 || (i2 & 1) == 0) {
                z = false;
            } else {
                z = true;
            }
            i4 = i3 + wuaVar.h[i];
            boolean z8 = z;
            j3 = tuaVar.c;
            j4 = wuaVar.q;
            i5 = i3;
            while (i5 < i4) {
                if (z4) {
                    iN = qw7Var.n();
                } else {
                    iN = a42Var.b;
                }
                int iE = e(iN);
                if (z5) {
                    iN2 = qw7Var.n();
                } else {
                    iN2 = a42Var.c;
                }
                int iE2 = e(iN2);
                if (z6) {
                    iN3 = qw7Var.n();
                } else if (i5 == 0 || !z3) {
                    iN3 = a42Var.d;
                } else {
                    iN3 = i6;
                }
                if (z7) {
                    iN4 = qw7Var.n();
                } else {
                    iN4 = 0;
                }
                jB0 = blb.B0((((long) iN4) + j4) - j2, 1000000L, j3);
                jArr[i5] = jB0;
                if (!wuaVar.r) {
                    jArr[i5] = jB0 + bVar2.d.h;
                }
                iArr[i5] = iE2;
                if (((iN3 >> 16) & 1) == 0 || (z8 && i5 != 0)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                zArr[i5] = z2;
                j4 += (long) iE;
                i5++;
                bVar2 = bVar;
                z4 = z4;
                z3 = z3;
                z7 = z7;
                z5 = z5;
                z6 = z6;
            }
            wuaVar.q = j4;
            return i4;
        }
        j = 0;
        j2 = j;
        iArr = wuaVar.i;
        jArr = wuaVar.j;
        zArr = wuaVar.k;
        int i7 = iN5;
        if (tuaVar.b == 2) {
            z = false;
        } else {
            z = false;
        }
        i4 = i3 + wuaVar.h[i];
        boolean z9 = z;
        j3 = tuaVar.c;
        j4 = wuaVar.q;
        i5 = i3;
        while (i5 < i4) {
            if (z4) {
                iN = qw7Var.n();
            } else {
                iN = a42Var.b;
            }
            int iE3 = e(iN);
            if (z5) {
                iN2 = qw7Var.n();
            } else {
                iN2 = a42Var.c;
            }
            int iE4 = e(iN2);
            if (z6) {
                iN3 = qw7Var.n();
            } else if (i5 == 0) {
                iN3 = a42Var.d;
            } else {
                iN3 = a42Var.d;
            }
            if (z7) {
                iN4 = qw7Var.n();
            } else {
                iN4 = 0;
            }
            jB0 = blb.B0((((long) iN4) + j4) - j2, 1000000L, j3);
            jArr[i5] = jB0;
            if (!wuaVar.r) {
                jArr[i5] = jB0 + bVar2.d.h;
            }
            iArr[i5] = iE4;
            if (((iN3 >> 16) & 1) == 0) {
                z2 = false;
            } else {
                z2 = false;
            }
            zArr[i5] = z2;
            j4 += (long) iE3;
            i5++;
            bVar2 = bVar;
            z4 = z4;
            z3 = z3;
            z7 = z7;
            z5 = z5;
            z6 = z6;
        }
        wuaVar.q = j4;
        return i4;
    }

    public static void F(xk.a aVar, b bVar, int i) throws ParserException {
        List list = aVar.c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            xk.b bVar2 = (xk.b) list.get(i4);
            if (bVar2.a == 1953658222) {
                qw7 qw7Var = bVar2.b;
                qw7Var.O(12);
                int iG = qw7Var.G();
                if (iG > 0) {
                    i3 += iG;
                    i2++;
                }
            }
        }
        bVar.h = 0;
        bVar.g = 0;
        bVar.f = 0;
        bVar.b.e(i2, i3);
        int i5 = 0;
        int iE = 0;
        for (int i6 = 0; i6 < size; i6++) {
            xk.b bVar3 = (xk.b) list.get(i6);
            if (bVar3.a == 1953658222) {
                iE = E(bVar, i5, i, bVar3.b, iE);
                i5++;
            }
        }
    }

    public static void G(qw7 qw7Var, wua wuaVar, byte[] bArr) throws ParserException {
        qw7Var.O(8);
        qw7Var.j(bArr, 0, 16);
        if (Arrays.equals(bArr, J)) {
            x(qw7Var, 16, wuaVar);
        }
    }

    private void H(long j) throws ParserException {
        while (!this.m.isEmpty() && ((xk.a) this.m.peek()).b == j) {
            m((xk.a) this.m.pop());
        }
        f();
    }

    private boolean I(pk3 pk3Var) throws ParserException {
        if (this.s == 0) {
            if (!pk3Var.readFully(this.l.d(), 0, 8, true)) {
                return false;
            }
            this.s = 8;
            this.l.O(0);
            this.r = this.l.E();
            this.q = this.l.n();
        }
        long j = this.r;
        if (j == 1) {
            pk3Var.readFully(this.l.d(), 8, 8);
            this.s += 8;
            this.r = this.l.H();
        } else if (j == 0) {
            long length = pk3Var.getLength();
            if (length == -1 && !this.m.isEmpty()) {
                length = ((xk.a) this.m.peek()).b;
            }
            if (length != -1) {
                this.r = (length - pk3Var.getPosition()) + ((long) this.s);
            }
        }
        if (this.r < this.s) {
            throw ParserException.createForUnsupportedContainerFeature("Atom size less than header length (unsupported).");
        }
        long position = pk3Var.getPosition() - ((long) this.s);
        int i = this.q;
        if ((i == 1836019558 || i == 1835295092) && !this.H) {
            this.E.d(new ja9.b(this.x, position));
            this.H = true;
        }
        if (this.q == 1836019558) {
            int size = this.d.size();
            for (int i2 = 0; i2 < size; i2++) {
                wua wuaVar = ((b) this.d.valueAt(i2)).b;
                wuaVar.b = position;
                wuaVar.d = position;
                wuaVar.c = position;
            }
        }
        int i3 = this.q;
        if (i3 == 1835295092) {
            this.z = null;
            this.u = position + this.r;
            this.p = 2;
            return true;
        }
        if (M(i3)) {
            long position2 = (pk3Var.getPosition() + this.r) - 8;
            this.m.push(new xk.a(this.q, position2));
            if (this.r == this.s) {
                H(position2);
            } else {
                f();
            }
        } else if (N(this.q)) {
            if (this.s != 8) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom defines extended atom size (unsupported).");
            }
            long j2 = this.r;
            if (j2 > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Leaf atom with length > 2147483647 (unsupported).");
            }
            qw7 qw7Var = new qw7((int) j2);
            System.arraycopy(this.l.d(), 0, qw7Var.d(), 0, 8);
            this.t = qw7Var;
            this.p = 1;
        } else {
            if (this.r > 2147483647L) {
                throw ParserException.createForUnsupportedContainerFeature("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.t = null;
            this.p = 1;
        }
        return true;
    }

    private static boolean M(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    private static boolean N(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1937011827 || i == 1668576371 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1937011571 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    public static int e(int i) throws ParserException {
        if (i >= 0) {
            return i;
        }
        throw ParserException.createForMalformedContainer("Unexpected negative value: " + i, null);
    }

    private void f() {
        this.p = 0;
        this.s = 0;
    }

    public static DrmInitData h(List list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            xk.b bVar = (xk.b) list.get(i);
            if (bVar.a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrD = bVar.b.d();
                UUID uuidF = hk8.f(bArrD);
                if (uuidF == null) {
                    op5.i("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
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

    public static b i(SparseArray sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < size; i++) {
            b bVar2 = (b) sparseArray.valueAt(i);
            if ((bVar2.l || bVar2.f != bVar2.d.b) && (!bVar2.l || bVar2.h != bVar2.b.e)) {
                long jD = bVar2.d();
                if (jD < j) {
                    bVar = bVar2;
                    j = jD;
                }
            }
        }
        return bVar;
    }

    public static nk3[] k() {
        return new nk3[]{new z54()};
    }

    public static long s(qw7 qw7Var) {
        qw7Var.O(8);
        return xk.c(qw7Var.n()) == 0 ? qw7Var.E() : qw7Var.H();
    }

    public static void t(xk.a aVar, SparseArray sparseArray, boolean z, int i, byte[] bArr) throws ParserException {
        int size = aVar.d.size();
        for (int i2 = 0; i2 < size; i2++) {
            xk.a aVar2 = (xk.a) aVar.d.get(i2);
            if (aVar2.a == 1953653094) {
                C(aVar2, sparseArray, z, i, bArr);
            }
        }
    }

    public static void u(qw7 qw7Var, wua wuaVar) throws ParserException {
        qw7Var.O(8);
        int iN = qw7Var.n();
        if ((xk.b(iN) & 1) == 1) {
            qw7Var.P(8);
        }
        int iG = qw7Var.G();
        if (iG == 1) {
            wuaVar.d += xk.c(iN) == 0 ? qw7Var.E() : qw7Var.H();
        } else {
            throw ParserException.createForMalformedContainer("Unexpected saio entry count: " + iG, null);
        }
    }

    public static void v(vua vuaVar, qw7 qw7Var, wua wuaVar) throws ParserException {
        int i;
        int i2 = vuaVar.d;
        qw7Var.O(8);
        if ((xk.b(qw7Var.n()) & 1) == 1) {
            qw7Var.P(8);
        }
        int iC = qw7Var.C();
        int iG = qw7Var.G();
        if (iG > wuaVar.f) {
            throw ParserException.createForMalformedContainer("Saiz sample count " + iG + " is greater than fragment sample count" + wuaVar.f, null);
        }
        if (iC == 0) {
            boolean[] zArr = wuaVar.m;
            i = 0;
            for (int i3 = 0; i3 < iG; i3++) {
                int iC2 = qw7Var.C();
                i += iC2;
                zArr[i3] = iC2 > i2;
            }
        } else {
            i = iC * iG;
            Arrays.fill(wuaVar.m, 0, iG, iC > i2);
        }
        Arrays.fill(wuaVar.m, iG, wuaVar.f, false);
        if (i > 0) {
            wuaVar.d(i);
        }
    }

    public static void w(xk.a aVar, String str, wua wuaVar) throws ParserException {
        byte[] bArr = null;
        qw7 qw7Var = null;
        qw7 qw7Var2 = null;
        for (int i = 0; i < aVar.c.size(); i++) {
            xk.b bVar = (xk.b) aVar.c.get(i);
            qw7 qw7Var3 = bVar.b;
            int i2 = bVar.a;
            if (i2 == 1935828848) {
                qw7Var3.O(12);
                if (qw7Var3.n() == 1936025959) {
                    qw7Var = qw7Var3;
                }
            } else if (i2 == 1936158820) {
                qw7Var3.O(12);
                if (qw7Var3.n() == 1936025959) {
                    qw7Var2 = qw7Var3;
                }
            }
        }
        if (qw7Var == null || qw7Var2 == null) {
            return;
        }
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        qw7Var.P(4);
        if (iC == 1) {
            qw7Var.P(4);
        }
        if (qw7Var.n() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sbgp != 1 (unsupported).");
        }
        qw7Var2.O(8);
        int iC2 = xk.c(qw7Var2.n());
        qw7Var2.P(4);
        if (iC2 == 1) {
            if (qw7Var2.E() == 0) {
                throw ParserException.createForUnsupportedContainerFeature("Variable length description in sgpd found (unsupported)");
            }
        } else if (iC2 >= 2) {
            qw7Var2.P(4);
        }
        if (qw7Var2.E() != 1) {
            throw ParserException.createForUnsupportedContainerFeature("Entry count in sgpd != 1 (unsupported).");
        }
        qw7Var2.P(1);
        int iC3 = qw7Var2.C();
        int i3 = (iC3 & 240) >> 4;
        int i4 = iC3 & 15;
        boolean z = qw7Var2.C() == 1;
        if (z) {
            int iC4 = qw7Var2.C();
            byte[] bArr2 = new byte[16];
            qw7Var2.j(bArr2, 0, 16);
            if (iC4 == 0) {
                int iC5 = qw7Var2.C();
                bArr = new byte[iC5];
                qw7Var2.j(bArr, 0, iC5);
            }
            wuaVar.l = true;
            wuaVar.n = new vua(z, str, iC4, bArr2, i3, i4, bArr);
        }
    }

    public static void x(qw7 qw7Var, int i, wua wuaVar) throws ParserException {
        qw7Var.O(i + 8);
        int iB = xk.b(qw7Var.n());
        if ((iB & 1) != 0) {
            throw ParserException.createForUnsupportedContainerFeature("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z = (iB & 2) != 0;
        int iG = qw7Var.G();
        if (iG == 0) {
            Arrays.fill(wuaVar.m, 0, wuaVar.f, false);
            return;
        }
        if (iG == wuaVar.f) {
            Arrays.fill(wuaVar.m, 0, iG, z);
            wuaVar.d(qw7Var.a());
            wuaVar.b(qw7Var);
        } else {
            throw ParserException.createForMalformedContainer("Senc sample count " + iG + " is different from fragment sample count" + wuaVar.f, null);
        }
    }

    public static void y(qw7 qw7Var, wua wuaVar) throws ParserException {
        x(qw7Var, 0, wuaVar);
    }

    public static Pair z(qw7 qw7Var, long j) throws ParserException {
        long jH;
        long jH2;
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        qw7Var.P(4);
        long jE = qw7Var.E();
        if (iC == 0) {
            jH = qw7Var.E();
            jH2 = qw7Var.E();
        } else {
            jH = qw7Var.H();
            jH2 = qw7Var.H();
        }
        long j2 = jH;
        long j3 = j + jH2;
        long jB0 = blb.B0(j2, 1000000L, jE);
        qw7Var.P(2);
        int I2 = qw7Var.I();
        int[] iArr = new int[I2];
        long[] jArr = new long[I2];
        long[] jArr2 = new long[I2];
        long[] jArr3 = new long[I2];
        long j4 = jB0;
        int i = 0;
        long j5 = j2;
        while (i < I2) {
            int iN = qw7Var.n();
            if ((iN & Integer.MIN_VALUE) != 0) {
                throw ParserException.createForMalformedContainer("Unhandled indirect reference", null);
            }
            long jE2 = qw7Var.E();
            iArr[i] = iN & Integer.MAX_VALUE;
            jArr[i] = j3;
            jArr3[i] = j4;
            long j6 = j5 + jE2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i2 = I2;
            int[] iArr2 = iArr;
            long jB1 = blb.B0(j6, 1000000L, jE);
            jArr4[i] = jB1 - jArr5[i];
            qw7Var.P(4);
            j3 += (long) iArr2[i];
            i++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            I2 = i2;
            j5 = j6;
            j4 = jB1;
        }
        return Pair.create(Long.valueOf(jB0), new aw0(iArr, jArr, jArr2, jArr3));
    }

    public final void J(pk3 pk3Var) throws ParserException {
        int i = ((int) this.r) - this.s;
        qw7 qw7Var = this.t;
        if (qw7Var != null) {
            pk3Var.readFully(qw7Var.d(), 8, i);
            o(new xk.b(this.q, qw7Var), pk3Var.getPosition());
        } else {
            pk3Var.skipFully(i);
        }
        H(pk3Var.getPosition());
    }

    public final void K(pk3 pk3Var) throws ParserException {
        int size = this.d.size();
        long j = Long.MAX_VALUE;
        b bVar = null;
        for (int i = 0; i < size; i++) {
            wua wuaVar = ((b) this.d.valueAt(i)).b;
            if (wuaVar.p) {
                long j2 = wuaVar.d;
                if (j2 < j) {
                    bVar = (b) this.d.valueAt(i);
                    j = j2;
                }
            }
        }
        if (bVar == null) {
            this.p = 3;
            return;
        }
        int position = (int) (j - pk3Var.getPosition());
        if (position < 0) {
            throw ParserException.createForMalformedContainer("Offset to encryption data was negative.", null);
        }
        pk3Var.skipFully(position);
        bVar.b.a(pk3Var);
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
    public final boolean L(pk3 pk3Var) throws ParserException {
        int iC;
        b bVarI = this.z;
        Throwable th = null;
        if (bVarI == null) {
            bVarI = i(this.d);
            if (bVarI == null) {
                int position = (int) (this.u - pk3Var.getPosition());
                if (position < 0) {
                    throw ParserException.createForMalformedContainer("Offset to end of mdat was negative.", null);
                }
                pk3Var.skipFully(position);
                f();
                return false;
            }
            int iD = (int) (bVarI.d() - pk3Var.getPosition());
            if (iD < 0) {
                op5.i("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                iD = 0;
            }
            pk3Var.skipFully(iD);
            this.z = bVarI;
        }
        int i = 4;
        int i2 = 1;
        if (this.p == 3) {
            int iF = bVarI.f();
            this.A = iF;
            if (bVarI.f < bVarI.i) {
                pk3Var.skipFully(iF);
                bVarI.m();
                if (!bVarI.h()) {
                    this.z = null;
                }
                this.p = 3;
                return true;
            }
            if (bVarI.d.a.g == 1) {
                this.A = iF - 8;
                pk3Var.skipFully(8);
            }
            if (MimeTypes.AUDIO_AC4.equals(bVarI.d.a.f.m)) {
                this.B = bVarI.i(this.A, 7);
                s4.a(this.A, this.i);
                bVarI.a.d(this.i, 7);
                this.B += 7;
            } else {
                this.B = bVarI.i(this.A, 0);
            }
            this.A += this.B;
            this.p = 4;
            this.C = 0;
        }
        tua tuaVar = bVarI.d.a;
        fva fvaVar = bVarI.a;
        long jE = bVarI.e();
        poa poaVar = this.j;
        if (poaVar != null) {
            jE = poaVar.a(jE);
        }
        long j = jE;
        if (tuaVar.j == 0) {
            while (true) {
                int i3 = this.B;
                int i4 = this.A;
                if (i3 >= i4) {
                    break;
                }
                this.B += fvaVar.c(pk3Var, i4 - i3, false);
            }
        } else {
            byte[] bArrD = this.f.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i5 = tuaVar.j;
            int i6 = i5 + 1;
            int i7 = 4 - i5;
            while (this.B < this.A) {
                int i8 = this.C;
                if (i8 == 0) {
                    pk3Var.readFully(bArrD, i7, i6);
                    this.f.O(0);
                    int iN = this.f.n();
                    if (iN < i2) {
                        throw ParserException.createForMalformedContainer("Invalid NAL length", th);
                    }
                    this.C = iN - 1;
                    this.e.O(0);
                    fvaVar.d(this.e, i);
                    fvaVar.d(this.f, i2);
                    this.D = (this.G.length <= 0 || !ay6.g(tuaVar.f.m, bArrD[i])) ? 0 : i2;
                    this.B += 5;
                    this.A += i7;
                } else {
                    if (this.D) {
                        this.g.K(i8);
                        pk3Var.readFully(this.g.d(), 0, this.C);
                        fvaVar.d(this.g, this.C);
                        iC = this.C;
                        int iQ = ay6.q(this.g.d(), this.g.f());
                        this.g.O("video/hevc".equals(tuaVar.f.m) ? 1 : 0);
                        this.g.N(iQ);
                        is0.a(j, this.g, this.G);
                    } else {
                        iC = fvaVar.c(pk3Var, i8, false);
                    }
                    this.B += iC;
                    this.C -= iC;
                    th = null;
                    i = 4;
                    i2 = 1;
                }
            }
        }
        int iC2 = bVarI.c();
        vua vuaVarG = bVarI.g();
        fvaVar.e(j, iC2, this.A, 0, vuaVarG != null ? vuaVarG.c : null);
        r(j);
        if (!bVarI.h()) {
            this.z = null;
        }
        this.p = 3;
        return true;
    }

    @Override
    public void a(qk3 qk3Var) {
        this.E = qk3Var;
        f();
        j();
        tua tuaVar = this.b;
        if (tuaVar != null) {
            this.d.put(0, new b(qk3Var.track(0, tuaVar.b), new gva(this.b, new long[0], new int[0], 0, new long[0], new int[0], 0L), new a42(0, 0, 0, 0)));
            this.E.endTracks();
        }
    }

    @Override
    public int b(pk3 pk3Var, id8 id8Var) throws ParserException {
        while (true) {
            int i = this.p;
            if (i != 0) {
                if (i == 1) {
                    J(pk3Var);
                } else if (i == 2) {
                    K(pk3Var);
                } else if (L(pk3Var)) {
                    return 0;
                }
            } else if (!I(pk3Var)) {
                return -1;
            }
        }
    }

    @Override
    public boolean c(pk3 pk3Var) {
        return lr9.b(pk3Var);
    }

    public final a42 g(SparseArray sparseArray, int i) {
        return sparseArray.size() == 1 ? (a42) sparseArray.valueAt(0) : (a42) zi.e((a42) sparseArray.get(i));
    }

    public final void j() {
        int i;
        fva[] fvaVarArr = new fva[2];
        this.F = fvaVarArr;
        fva fvaVar = this.o;
        int i2 = 0;
        if (fvaVar != null) {
            fvaVarArr[0] = fvaVar;
            i = 1;
        } else {
            i = 0;
        }
        int i3 = 100;
        if ((this.a & 4) != 0) {
            fvaVarArr[i] = this.E.track(100, 5);
            i3 = 101;
            i++;
        }
        fva[] fvaVarArr2 = (fva[]) blb.x0(this.F, i);
        this.F = fvaVarArr2;
        for (fva fvaVar2 : fvaVarArr2) {
            fvaVar2.b(K);
        }
        this.G = new fva[this.c.size()];
        while (i2 < this.G.length) {
            fva fvaVarTrack = this.E.track(i3, 3);
            fvaVarTrack.b((k) this.c.get(i2));
            this.G[i2] = fvaVarTrack;
            i2++;
            i3++;
        }
    }

    public tua l(tua tuaVar) {
        return tuaVar;
    }

    public final void m(xk.a aVar) throws ParserException {
        int i = aVar.a;
        if (i == 1836019574) {
            q(aVar);
        } else if (i == 1836019558) {
            p(aVar);
        } else {
            if (this.m.isEmpty()) {
                return;
            }
            ((xk.a) this.m.peek()).d(aVar);
        }
    }

    public final void n(qw7 qw7Var) {
        long jB0;
        String str;
        long jB1;
        String str2;
        long jE;
        long jA;
        if (this.F.length == 0) {
            return;
        }
        qw7Var.O(8);
        int iC = xk.c(qw7Var.n());
        if (iC == 0) {
            String str3 = (String) zi.e(qw7Var.w());
            String str4 = (String) zi.e(qw7Var.w());
            long jE2 = qw7Var.E();
            jB0 = blb.B0(qw7Var.E(), 1000000L, jE2);
            long j = this.y;
            long j2 = j != C.TIME_UNSET ? j + jB0 : -9223372036854775807L;
            str = str3;
            jB1 = blb.B0(qw7Var.E(), 1000L, jE2);
            str2 = str4;
            jE = qw7Var.E();
            jA = j2;
        } else {
            if (iC != 1) {
                op5.i("FragmentedMp4Extractor", "Skipping unsupported emsg version: " + iC);
                return;
            }
            long jE3 = qw7Var.E();
            jA = blb.B0(qw7Var.H(), 1000000L, jE3);
            long jB2 = blb.B0(qw7Var.E(), 1000L, jE3);
            long jE4 = qw7Var.E();
            str = (String) zi.e(qw7Var.w());
            jB1 = jB2;
            jE = jE4;
            str2 = (String) zi.e(qw7Var.w());
            jB0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[qw7Var.a()];
        qw7Var.j(bArr, 0, qw7Var.a());
        qw7 qw7Var2 = new qw7(this.k.a(new EventMessage(str, str2, jB1, jE, bArr)));
        int iA = qw7Var2.a();
        for (fva fvaVar : this.F) {
            qw7Var2.O(0);
            fvaVar.d(qw7Var2, iA);
        }
        if (jA == C.TIME_UNSET) {
            this.n.addLast(new a(jB0, true, iA));
            this.v += iA;
            return;
        }
        if (!this.n.isEmpty()) {
            this.n.addLast(new a(jA, false, iA));
            this.v += iA;
            return;
        }
        poa poaVar = this.j;
        if (poaVar != null) {
            jA = poaVar.a(jA);
        }
        for (fva fvaVar2 : this.F) {
            fvaVar2.e(jA, 1, iA, 0, null);
        }
    }

    public final void o(xk.b bVar, long j) throws ParserException {
        if (!this.m.isEmpty()) {
            ((xk.a) this.m.peek()).e(bVar);
            return;
        }
        int i = bVar.a;
        if (i != 1936286840) {
            if (i == 1701671783) {
                n(bVar.b);
            }
        } else {
            Pair pairZ = z(bVar.b, j);
            this.y = ((Long) pairZ.first).longValue();
            this.E.d((ja9) pairZ.second);
            this.H = true;
        }
    }

    public final void p(xk.a aVar) throws ParserException {
        t(aVar, this.d, this.b != null, this.a, this.h);
        DrmInitData drmInitDataH = h(aVar.c);
        if (drmInitDataH != null) {
            int size = this.d.size();
            for (int i = 0; i < size; i++) {
                ((b) this.d.valueAt(i)).n(drmInitDataH);
            }
        }
        if (this.w != C.TIME_UNSET) {
            int size2 = this.d.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((b) this.d.valueAt(i2)).l(this.w);
            }
            this.w = C.TIME_UNSET;
        }
    }

    public final void q(xk.a aVar) {
        int i = 0;
        zi.h(this.b == null, "Unexpected moov box.");
        DrmInitData drmInitDataH = h(aVar.c);
        xk.a aVar2 = (xk.a) zi.e(aVar.f(Mp4Box.TYPE_mvex));
        SparseArray sparseArray = new SparseArray();
        int size = aVar2.c.size();
        long jS = -9223372036854775807L;
        for (int i2 = 0; i2 < size; i2++) {
            xk.b bVar = (xk.b) aVar2.c.get(i2);
            int i3 = bVar.a;
            if (i3 == 1953654136) {
                Pair pairD = D(bVar.b);
                sparseArray.put(((Integer) pairD.first).intValue(), (a42) pairD.second);
            } else if (i3 == 1835362404) {
                jS = s(bVar.b);
            }
        }
        List listA = yk.A(aVar, new ed4(), jS, drmInitDataH, (this.a & 16) != 0, false, new o74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.l((tua) obj);
            }
        });
        int size2 = listA.size();
        if (this.d.size() != 0) {
            zi.g(this.d.size() == size2);
            while (i < size2) {
                gva gvaVar = (gva) listA.get(i);
                tua tuaVar = gvaVar.a;
                ((b) this.d.get(tuaVar.a)).j(gvaVar, g(sparseArray, tuaVar.a));
                i++;
            }
            return;
        }
        while (i < size2) {
            gva gvaVar2 = (gva) listA.get(i);
            tua tuaVar2 = gvaVar2.a;
            this.d.put(tuaVar2.a, new b(this.E.track(i, tuaVar2.b), gvaVar2, g(sparseArray, tuaVar2.a)));
            this.x = Math.max(this.x, tuaVar2.e);
            i++;
        }
        this.E.endTracks();
    }

    public final void r(long j) {
        while (!this.n.isEmpty()) {
            a aVar = (a) this.n.removeFirst();
            this.v -= aVar.c;
            long jA = aVar.a;
            if (aVar.b) {
                jA += j;
            }
            poa poaVar = this.j;
            if (poaVar != null) {
                jA = poaVar.a(jA);
            }
            for (fva fvaVar : this.F) {
                fvaVar.e(jA, 1, aVar.c, this.v, null);
            }
        }
    }

    @Override
    public void release() {
    }

    @Override
    public void seek(long j, long j2) {
        int size = this.d.size();
        for (int i = 0; i < size; i++) {
            ((b) this.d.valueAt(i)).k();
        }
        this.n.clear();
        this.v = 0;
        this.w = j2;
        this.m.clear();
        f();
    }

    public z54(int i) {
        this(i, null);
    }

    public z54(int i, poa poaVar) {
        this(i, poaVar, null, Collections.emptyList());
    }

    public z54(int i, poa poaVar, tua tuaVar, List list) {
        this(i, poaVar, tuaVar, list, null);
    }

    public z54(int i, poa poaVar, tua tuaVar, List list, fva fvaVar) {
        this.a = i;
        this.j = poaVar;
        this.b = tuaVar;
        this.c = Collections.unmodifiableList(list);
        this.o = fvaVar;
        this.k = new de3();
        this.l = new qw7(16);
        this.e = new qw7(ay6.a);
        this.f = new qw7(5);
        this.g = new qw7();
        byte[] bArr = new byte[16];
        this.h = bArr;
        this.i = new qw7(bArr);
        this.m = new ArrayDeque();
        this.n = new ArrayDeque();
        this.d = new SparseArray();
        this.x = C.TIME_UNSET;
        this.w = C.TIME_UNSET;
        this.y = C.TIME_UNSET;
        this.E = qk3.C1;
        this.F = new fva[0];
        this.G = new fva[0];
    }
}
