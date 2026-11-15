package defpackage;

import androidx.media3.common.C;
import com.transsion.socket.pkgdata.SocketData;

public abstract class a63 {
    public static final byte[] a = {83, 105, 103, 69, 100, 50, 53, 53, 49, 57, 32, 110, 111, 32, 69, 100, 50, 53, 53, 49, 57, 32, 99, 111, 108, 108, 105, 115, 105, 111, 110, 115};
    public static final int[] b = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    public static final int[] c = {1886001095, 1339575613, 1980447930, 258412557, -95215574, -959694548, 2013120334, 2047061138};
    public static final int[] d = {-1886001114, -1339575614, -1980447931, -258412558, 95215573, 959694547, -2013120335, 100422509};
    public static final int[] e = {52811034, 25909283, 8072341, 50637101, 13785486, 30858332, 20483199, 20966410, 43936626, 4379245};
    public static final int[] f = {40265304, 26843545, 6710886, 53687091, 13421772, 40265318, 26843545, 6710886, 53687091, 13421772};
    public static final int[] g = {12052516, 1174424, 4087752, 38672185, 20040971, 21899680, 55468344, 20105554, 66708015, 9981791};
    public static final int[] h = {66430571, 45040722, 4842939, 15895846, 18981244, 46308410, 4697481, 8903007, 53646190, 12474675};
    public static final int[] i = {56195235, 47411844, 25868126, 40503822, 57364, 58321048, 30416477, 31930572, 57760639, 10749657};
    public static final int[] j = {45281625, 27714825, 18181821, 13898781, 114729, 49533232, 60832955, 30306712, 48412415, 4722099};
    public static final int[] k = {23454386, 55429651, 2809210, 27797563, 229458, 31957600, 54557047, 27058993, 29715967, 9444199};
    public static final Object l = new Object();
    public static e[] m = null;
    public static e[] n = null;
    public static int[] o = null;

    public static class b {
        public int[] a;
        public int[] b;
        public int[] c;
        public int[] d;
        public int[] e;

        public b() {
            this.a = vpc.h();
            this.b = vpc.h();
            this.c = vpc.h();
            this.d = vpc.h();
            this.e = vpc.h();
        }
    }

    public static class c {
        public int[] a;
        public int[] b;

        public c() {
            this.a = vpc.h();
            this.b = vpc.h();
        }
    }

    public static class d {
        public int[] a;
        public int[] b;
        public int[] c;
        public int[] d;

        public d() {
            this.a = vpc.h();
            this.b = vpc.h();
            this.c = vpc.h();
            this.d = vpc.h();
        }
    }

    public static class e {
        public int[] a;
        public int[] b;
        public int[] c;

        public e() {
            this.a = vpc.h();
            this.b = vpc.h();
            this.c = vpc.h();
        }
    }

    public static class f {
        public int[] a;
        public int[] b;

        public f() {
            this.a = vpc.h();
            this.b = vpc.h();
        }
    }

    public static final class g {
        public final int[] a;

        public g(int[] iArr) {
            this.a = iArr;
        }
    }

    public static int a(b bVar) {
        int[] iArrH = vpc.h();
        int[] iArrH2 = vpc.h();
        int[] iArrH3 = vpc.h();
        int[] iArrH4 = vpc.h();
        vpc.F(bVar.a, iArrH2);
        vpc.F(bVar.b, iArrH3);
        vpc.F(bVar.c, iArrH4);
        vpc.y(iArrH2, iArrH3, iArrH);
        vpc.H(iArrH2, iArrH3, iArrH2);
        vpc.y(iArrH2, iArrH4, iArrH2);
        vpc.F(iArrH4, iArrH4);
        vpc.y(iArrH, i, iArrH);
        vpc.a(iArrH, iArrH4, iArrH);
        vpc.a(iArrH, iArrH2, iArrH);
        vpc.A(iArrH);
        vpc.A(iArrH3);
        vpc.A(iArrH4);
        return vpc.w(iArrH) & (~vpc.w(iArrH3)) & (~vpc.w(iArrH4));
    }

    public static int b(c cVar) {
        int[] iArrH = vpc.h();
        int[] iArrH2 = vpc.h();
        int[] iArrH3 = vpc.h();
        vpc.F(cVar.a, iArrH2);
        vpc.F(cVar.b, iArrH3);
        vpc.y(iArrH2, iArrH3, iArrH);
        vpc.H(iArrH2, iArrH3, iArrH2);
        vpc.y(iArrH, i, iArrH);
        vpc.b(iArrH);
        vpc.a(iArrH, iArrH2, iArrH);
        vpc.A(iArrH);
        vpc.A(iArrH3);
        return vpc.w(iArrH) & (~vpc.w(iArrH3));
    }

    public static boolean c(byte[] bArr) {
        int iA = a51.a(bArr, 28) & Integer.MAX_VALUE;
        int i2 = b[7] ^ iA;
        int i3 = c[7] ^ iA;
        int i4 = d[7] ^ iA;
        for (int i5 = 6; i5 > 0; i5--) {
            int iA2 = a51.a(bArr, i5 * 4);
            iA |= iA2;
            i2 |= b[i5] ^ iA2;
            i3 |= c[i5] ^ iA2;
            i4 |= iA2 ^ d[i5];
        }
        int iA3 = a51.a(bArr, 0);
        if (iA == 0 && iA3 - Integer.MIN_VALUE <= -2147483647) {
            return false;
        }
        if (i2 == 0 && Integer.MIN_VALUE + iA3 >= b[0] - C.RATE_UNSET_INT) {
            return false;
        }
        return (((c[0] ^ iA3) | i3) != 0) & (((iA3 ^ d[0]) | i4) != 0);
    }

    public static byte[] d(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return bArr2;
    }

    public static sb2 e() {
        xx8 xx8Var = new xx8();
        if (xx8Var.g() == 64) {
            return xx8Var;
        }
        throw new IllegalStateException();
    }

    public static boolean f(byte[] bArr, boolean z, c cVar) {
        int i2 = (bArr[31] & SocketData.CLAZZ_TYPE_END_SOCKET) >>> 7;
        vpc.j(bArr, cVar.b);
        int[] iArrH = vpc.h();
        int[] iArrH2 = vpc.h();
        vpc.F(cVar.b, iArrH);
        vpc.y(i, iArrH, iArrH2);
        vpc.I(iArrH);
        vpc.b(iArrH2);
        if (!vpc.G(iArrH, iArrH2, cVar.a)) {
            return false;
        }
        vpc.A(cVar.a);
        if (i2 == 1 && vpc.x(cVar.a)) {
            return false;
        }
        int[] iArr = cVar.a;
        if (z ^ (i2 != (iArr[0] & 1))) {
            vpc.z(iArr, iArr);
            vpc.A(cVar.a);
        }
        return true;
    }

    public static void g(g gVar, byte[] bArr, int i2) {
        vpc.o(gVar.a, 10, bArr, i2);
        int i3 = i2 + 31;
        bArr[i3] = (byte) (((gVar.a[0] & 1) << 7) | bArr[i3]);
    }

    public static g h(c cVar) {
        int[] iArr = new int[20];
        vpc.g(cVar.a, 0, iArr, 0);
        vpc.g(cVar.b, 0, iArr, 10);
        return new g(iArr);
    }

    public static g i(byte[] bArr, int i2) {
        sb2 sb2VarE = e();
        byte[] bArr2 = new byte[64];
        sb2VarE.update(bArr, i2, 32);
        sb2VarE.a(bArr2, 0);
        byte[] bArr3 = new byte[32];
        v(bArr2, 0, bArr3);
        b bVar = new b();
        w(bArr3, bVar);
        c cVar = new c();
        l(bVar, cVar);
        if (b(cVar) != 0) {
            return h(cVar);
        }
        throw new IllegalStateException();
    }

    public static void j(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = i45.f(iArr[i2]);
        }
    }

    public static void k(d[] dVarArr) {
        int length = dVarArr.length;
        int[] iArrI = vpc.i(length);
        int[] iArrH = vpc.h();
        vpc.g(dVarArr[0].c, 0, iArrH, 0);
        vpc.g(iArrH, 0, iArrI, 0);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= length) {
                break;
            }
            vpc.y(iArrH, dVarArr[i3].c, iArrH);
            vpc.g(iArrH, 0, iArrI, i3 * 10);
            i2 = i3;
        }
        vpc.a(iArrH, iArrH, iArrH);
        vpc.v(iArrH, iArrH);
        int[] iArrH2 = vpc.h();
        while (i2 > 0) {
            int i4 = i2 - 1;
            vpc.g(iArrI, i4 * 10, iArrH2, 0);
            vpc.y(iArrH2, iArrH, iArrH2);
            vpc.y(iArrH, dVarArr[i2].c, iArrH);
            vpc.g(iArrH2, 0, dVarArr[i2].c, 0);
            i2 = i4;
        }
        vpc.g(iArrH, 0, dVarArr[0].c, 0);
    }

    public static void l(b bVar, c cVar) {
        vpc.u(bVar.c, cVar.b);
        vpc.y(cVar.b, bVar.a, cVar.a);
        int[] iArr = cVar.b;
        vpc.y(iArr, bVar.b, iArr);
        vpc.A(cVar.a);
        vpc.A(cVar.b);
    }

    public static void m(d dVar, d dVar2, d dVar3, f fVar) {
        int[] iArr = dVar3.a;
        int[] iArr2 = dVar3.b;
        int[] iArr3 = fVar.a;
        int[] iArr4 = fVar.b;
        vpc.c(dVar.b, dVar.a, iArr2, iArr);
        vpc.c(dVar2.b, dVar2.a, iArr4, iArr3);
        vpc.y(iArr, iArr3, iArr);
        vpc.y(iArr2, iArr4, iArr2);
        vpc.y(dVar.d, dVar2.d, iArr3);
        vpc.y(iArr3, j, iArr3);
        int[] iArr5 = dVar.c;
        vpc.a(iArr5, iArr5, iArr4);
        vpc.y(iArr4, dVar2.c, iArr4);
        vpc.c(iArr2, iArr, iArr2, iArr);
        vpc.c(iArr4, iArr3, iArr4, iArr3);
        vpc.y(iArr, iArr2, dVar3.d);
        vpc.y(iArr3, iArr4, dVar3.c);
        vpc.y(iArr, iArr3, dVar3.a);
        vpc.y(iArr2, iArr4, dVar3.b);
    }

    public static void n(e eVar, b bVar, f fVar) {
        int[] iArr = bVar.a;
        int[] iArr2 = bVar.b;
        int[] iArr3 = fVar.a;
        int[] iArr4 = bVar.d;
        int[] iArr5 = bVar.e;
        vpc.c(iArr2, iArr, iArr2, iArr);
        vpc.y(iArr, eVar.a, iArr);
        vpc.y(iArr2, eVar.b, iArr2);
        vpc.y(bVar.d, bVar.e, iArr3);
        vpc.y(iArr3, eVar.c, iArr3);
        vpc.c(iArr2, iArr, iArr5, iArr4);
        vpc.c(bVar.c, iArr3, iArr2, iArr);
        vpc.y(iArr, iArr2, bVar.c);
        vpc.y(iArr, iArr4, bVar.a);
        vpc.y(iArr2, iArr5, bVar.b);
    }

    public static void o(b bVar, d dVar) {
        vpc.g(bVar.a, 0, dVar.a, 0);
        vpc.g(bVar.b, 0, dVar.b, 0);
        vpc.g(bVar.c, 0, dVar.c, 0);
        vpc.y(bVar.d, bVar.e, dVar.d);
    }

    public static void p(c cVar, d dVar) {
        vpc.g(cVar.a, 0, dVar.a, 0);
        vpc.g(cVar.b, 0, dVar.b, 0);
        vpc.B(dVar.c);
        vpc.y(cVar.a, cVar.b, dVar.d);
    }

    public static void q(b bVar) {
        int[] iArr = bVar.a;
        int[] iArr2 = bVar.b;
        int[] iArr3 = bVar.c;
        int[] iArr4 = bVar.d;
        int[] iArr5 = bVar.e;
        vpc.a(iArr, iArr2, iArr4);
        vpc.F(bVar.a, iArr);
        vpc.F(bVar.b, iArr2);
        vpc.F(bVar.c, iArr3);
        vpc.a(iArr3, iArr3, iArr3);
        vpc.c(iArr, iArr2, iArr5, iArr2);
        vpc.F(iArr4, iArr4);
        vpc.H(iArr5, iArr4, iArr4);
        vpc.a(iArr3, iArr2, iArr);
        vpc.d(iArr);
        vpc.y(iArr, iArr2, bVar.c);
        vpc.y(iArr, iArr4, bVar.a);
        vpc.y(iArr2, iArr5, bVar.b);
    }

    public static void r(int i2, int i3, e eVar) {
        int i4 = i2 * 240;
        for (int i5 = 0; i5 < 8; i5++) {
            int i6 = ((i5 ^ i3) - 1) >> 31;
            vpc.e(i6, o, i4, eVar.a, 0);
            vpc.e(i6, o, i4 + 10, eVar.b, 0);
            vpc.e(i6, o, i4 + 20, eVar.c, 0);
            i4 += 30;
        }
    }

    public static void s(c cVar, d[] dVarArr, int i2, int i3, f fVar) {
        d dVar = new d();
        dVarArr[i2] = dVar;
        p(cVar, dVar);
        d dVar2 = new d();
        d dVar3 = dVarArr[i2];
        m(dVar3, dVar3, dVar2, fVar);
        for (int i4 = 1; i4 < i3; i4++) {
            int i5 = i2 + i4;
            d dVar4 = dVarArr[i5 - 1];
            d dVar5 = new d();
            dVarArr[i5] = dVar5;
            m(dVar4, dVar2, dVar5, fVar);
        }
    }

    public static void t(b bVar) {
        vpc.J(bVar.a);
        vpc.B(bVar.b);
        vpc.B(bVar.c);
        vpc.J(bVar.d);
        vpc.B(bVar.e);
    }

    public static void u() {
        synchronized (l) {
            try {
                if (o != null) {
                    return;
                }
                d[] dVarArr = new d[96];
                f fVar = new f();
                c cVar = new c();
                int[] iArr = e;
                int i2 = 0;
                vpc.g(iArr, 0, cVar.a, 0);
                int[] iArr2 = f;
                vpc.g(iArr2, 0, cVar.b, 0);
                s(cVar, dVarArr, 0, 16, fVar);
                c cVar2 = new c();
                vpc.g(g, 0, cVar2.a, 0);
                vpc.g(h, 0, cVar2.b, 0);
                s(cVar2, dVarArr, 16, 16, fVar);
                b bVar = new b();
                vpc.g(iArr, 0, bVar.a, 0);
                vpc.g(iArr2, 0, bVar.b, 0);
                vpc.B(bVar.c);
                vpc.g(bVar.a, 0, bVar.d, 0);
                vpc.g(bVar.b, 0, bVar.e, 0);
                int i3 = 4;
                d[] dVarArr2 = new d[4];
                for (int i4 = 0; i4 < 4; i4++) {
                    dVarArr2[i4] = new d();
                }
                d dVar = new d();
                int i5 = 0;
                int i6 = 32;
                while (i5 < 8) {
                    int i7 = i6 + 1;
                    d dVar2 = new d();
                    dVarArr[i6] = dVar2;
                    int i8 = i2;
                    while (i8 < i3) {
                        if (i8 == 0) {
                            o(bVar, dVar2);
                        } else {
                            o(bVar, dVar);
                            m(dVar2, dVar, dVar2, fVar);
                        }
                        q(bVar);
                        o(bVar, dVarArr2[i8]);
                        if (i5 + i8 != 10) {
                            for (int i9 = 1; i9 < 8; i9++) {
                                q(bVar);
                            }
                        }
                        i8++;
                        i3 = 4;
                    }
                    int[] iArr3 = dVar2.a;
                    vpc.z(iArr3, iArr3);
                    int[] iArr4 = dVar2.d;
                    vpc.z(iArr4, iArr4);
                    i6 = i7;
                    for (int i10 = 0; i10 < 3; i10++) {
                        int i11 = 1 << i10;
                        int i12 = 0;
                        while (i12 < i11) {
                            d dVar3 = new d();
                            dVarArr[i6] = dVar3;
                            m(dVarArr[i6 - i11], dVarArr2[i10], dVar3, fVar);
                            i12++;
                            i6++;
                        }
                    }
                    i5++;
                    i3 = 4;
                    i2 = 0;
                }
                k(dVarArr);
                m = new e[16];
                for (int i13 = 0; i13 < 16; i13++) {
                    d dVar4 = dVarArr[i13];
                    e[] eVarArr = m;
                    e eVar = new e();
                    eVarArr[i13] = eVar;
                    int[] iArr5 = dVar4.a;
                    vpc.y(iArr5, dVar4.c, iArr5);
                    int[] iArr6 = dVar4.b;
                    vpc.y(iArr6, dVar4.c, iArr6);
                    vpc.c(dVar4.b, dVar4.a, eVar.b, eVar.a);
                    vpc.y(dVar4.a, dVar4.b, eVar.c);
                    int[] iArr7 = eVar.c;
                    vpc.y(iArr7, k, iArr7);
                    vpc.A(eVar.a);
                    vpc.A(eVar.b);
                    vpc.A(eVar.c);
                }
                n = new e[16];
                for (int i14 = 0; i14 < 16; i14++) {
                    d dVar5 = dVarArr[16 + i14];
                    e[] eVarArr2 = n;
                    e eVar2 = new e();
                    eVarArr2[i14] = eVar2;
                    int[] iArr8 = dVar5.a;
                    vpc.y(iArr8, dVar5.c, iArr8);
                    int[] iArr9 = dVar5.b;
                    vpc.y(iArr9, dVar5.c, iArr9);
                    vpc.c(dVar5.b, dVar5.a, eVar2.b, eVar2.a);
                    vpc.y(dVar5.a, dVar5.b, eVar2.c);
                    int[] iArr10 = eVar2.c;
                    vpc.y(iArr10, k, iArr10);
                    vpc.A(eVar2.a);
                    vpc.A(eVar2.b);
                    vpc.A(eVar2.c);
                }
                o = vpc.i(192);
                e eVar3 = new e();
                int i15 = 0;
                for (int i16 = 32; i16 < 96; i16++) {
                    d dVar6 = dVarArr[i16];
                    int[] iArr11 = dVar6.a;
                    vpc.y(iArr11, dVar6.c, iArr11);
                    int[] iArr12 = dVar6.b;
                    vpc.y(iArr12, dVar6.c, iArr12);
                    vpc.c(dVar6.b, dVar6.a, eVar3.b, eVar3.a);
                    vpc.y(dVar6.a, dVar6.b, eVar3.c);
                    int[] iArr13 = eVar3.c;
                    vpc.y(iArr13, k, iArr13);
                    vpc.A(eVar3.a);
                    vpc.A(eVar3.b);
                    vpc.A(eVar3.c);
                    vpc.g(eVar3.a, 0, o, i15);
                    vpc.g(eVar3.b, 0, o, i15 + 10);
                    vpc.g(eVar3.c, 0, o, i15 + 20);
                    i15 += 30;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void v(byte[] bArr, int i2, byte[] bArr2) {
        System.arraycopy(bArr, i2, bArr2, 0, 32);
        bArr2[0] = (byte) (bArr2[0] & 248);
        byte b2 = (byte) (bArr2[31] & 127);
        bArr2[31] = b2;
        bArr2[31] = (byte) (b2 | 64);
    }

    public static void w(byte[] bArr, b bVar) {
        u();
        int[] iArr = new int[8];
        k19.a(bArr, iArr);
        k19.b(256, iArr);
        j(iArr);
        e eVar = new e();
        f fVar = new f();
        t(bVar);
        int i2 = 28;
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i4 < 8) {
                int i5 = iArr[i4] >>> i2;
                int i6 = (i5 >>> 3) & 1;
                r(i4, (i5 ^ (-i6)) & 7, eVar);
                int i7 = i3 ^ i6;
                vpc.f(i7, bVar.a);
                vpc.f(i7, bVar.d);
                n(eVar, bVar, fVar);
                i4++;
                i3 = i6;
            }
            i2 -= 4;
            if (i2 < 0) {
                vpc.f(i3, bVar.a);
                vpc.f(i3, bVar.d);
                return;
            }
            q(bVar);
        }
    }

    public static void x(upc.a aVar, byte[] bArr, int i2, int[] iArr, int[] iArr2) {
        if (aVar == null) {
            throw new NullPointerException("This method is only for use by X25519");
        }
        byte[] bArr2 = new byte[32];
        v(bArr, i2, bArr2);
        b bVar = new b();
        w(bArr2, bVar);
        if (a(bVar) == 0) {
            throw new IllegalStateException();
        }
        vpc.g(bVar.b, 0, iArr, 0);
        vpc.g(bVar.c, 0, iArr2, 0);
    }

    public static g y(byte[] bArr, int i2) {
        byte[] bArrD = d(bArr, i2, 32);
        if (!c(bArrD)) {
            return null;
        }
        c cVar = new c();
        if (f(bArrD, false, cVar)) {
            return h(cVar);
        }
        return null;
    }
}
