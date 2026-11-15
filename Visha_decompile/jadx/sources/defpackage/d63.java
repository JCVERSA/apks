package defpackage;

import androidx.media3.common.C;
import com.just.agentweb.WebIndicator;
import com.transsion.socket.pkgdata.SocketData;

public abstract class d63 {
    public static final byte[] a = {83, 105, 103, 69, 100, 52, 52, 56};
    public static final int[] b = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int[] c = {118276190, 40534716, 9670182, 135141552, 85017403, 259173222, 68333082, 171784774, 174973732, 15824510, 73756743, 57518561, 94773951, 248652241, 107736333, 82941708};
    public static final int[] d = {36764180, 8885695, 130592152, 20104429, 163904957, 30304195, 121295871, 5901357, 125344798, 171541512, 175338348, 209069246, 3626697, 38307682, 24032956, 110359655};
    public static final int[] e = {110141154, 30892124, 160820362, 264558960, 217232225, 47722141, 19029845, 8326902, 183409749, 170134547, 90340180, 222600478, 61097333, 7431335, 198491505, 102372861};
    public static final int[] f = {221945828, 50763449, 132637478, 109250759, 216053960, 61612587, 50649998, 138339097, 98949899, 248139835, 186410297, 126520782, 47339196, 78164062, 198835543, 169622712};
    public static final Object g = new Object();
    public static b[] h = null;
    public static b[] i = null;
    public static int[] j = null;

    public static class b {
        public int[] a;
        public int[] b;

        public b() {
            this.a = zpc.g();
            this.b = zpc.g();
        }
    }

    public static class c {
        public int[] a;
        public int[] b;
        public int[] c;

        public c() {
            this.a = zpc.g();
            this.b = zpc.g();
            this.c = zpc.g();
        }
    }

    public static class d {
        public int[] a;
        public int[] b;
        public int[] c;
        public int[] d;
        public int[] e;
        public int[] f;
        public int[] g;
        public int[] h;

        public d() {
            this.a = zpc.g();
            this.b = zpc.g();
            this.c = zpc.g();
            this.d = zpc.g();
            this.e = zpc.g();
            this.f = zpc.g();
            this.g = zpc.g();
            this.h = zpc.g();
        }
    }

    public static final class e {
        public final int[] a;

        public e(int[] iArr) {
            this.a = iArr;
        }
    }

    public static int a(b bVar) {
        int[] iArrG = zpc.g();
        int[] iArrG2 = zpc.g();
        int[] iArrG3 = zpc.g();
        zpc.H(bVar.a, iArrG2);
        zpc.H(bVar.b, iArrG3);
        zpc.A(iArrG2, iArrG3, iArrG);
        zpc.a(iArrG2, iArrG3, iArrG2);
        zpc.z(iArrG, 39081, iArrG);
        zpc.K(iArrG);
        zpc.a(iArrG, iArrG2, iArrG);
        zpc.C(iArrG);
        zpc.C(iArrG3);
        return zpc.x(iArrG) & (~zpc.x(iArrG3));
    }

    public static int b(c cVar) {
        int[] iArrG = zpc.g();
        int[] iArrG2 = zpc.g();
        int[] iArrG3 = zpc.g();
        int[] iArrG4 = zpc.g();
        zpc.H(cVar.a, iArrG2);
        zpc.H(cVar.b, iArrG3);
        zpc.H(cVar.c, iArrG4);
        zpc.A(iArrG2, iArrG3, iArrG);
        zpc.a(iArrG2, iArrG3, iArrG2);
        zpc.A(iArrG2, iArrG4, iArrG2);
        zpc.H(iArrG4, iArrG4);
        zpc.z(iArrG, 39081, iArrG);
        zpc.J(iArrG, iArrG4, iArrG);
        zpc.a(iArrG, iArrG2, iArrG);
        zpc.C(iArrG);
        zpc.C(iArrG3);
        zpc.C(iArrG4);
        return zpc.x(iArrG) & (~zpc.x(iArrG3)) & (~zpc.x(iArrG4));
    }

    public static boolean c(byte[] bArr) {
        if ((bArr[56] & 127) != 0) {
            return false;
        }
        int iA = a51.a(bArr, 52);
        int i2 = b[13] ^ iA;
        for (int i3 = 12; i3 > 0; i3--) {
            int iA2 = a51.a(bArr, i3 * 4);
            if (i2 == 0 && iA2 - Integer.MIN_VALUE > b[i3] - Integer.MIN_VALUE) {
                return false;
            }
            iA |= iA2;
            i2 |= b[i3] ^ iA2;
        }
        int iA3 = a51.a(bArr, 0);
        if (iA != 0 || iA3 - Integer.MIN_VALUE > -2147483647) {
            return i2 != 0 || iA3 + Integer.MIN_VALUE < b[0] - C.RATE_UNSET_INT;
        }
        return false;
    }

    public static byte[] d(byte[] bArr, int i2, int i3) {
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, i2, bArr2, 0, i3);
        return bArr2;
    }

    public static csc e() {
        return new yx8(256);
    }

    public static boolean f(byte[] bArr, boolean z, b bVar) {
        int i2 = (bArr[56] & SocketData.CLAZZ_TYPE_END_SOCKET) >>> 7;
        zpc.i(bArr, bVar.b);
        int[] iArrG = zpc.g();
        int[] iArrG2 = zpc.g();
        zpc.H(bVar.b, iArrG);
        zpc.z(iArrG, 39081, iArrG2);
        zpc.B(iArrG, iArrG);
        zpc.b(iArrG);
        zpc.b(iArrG2);
        if (!zpc.I(iArrG, iArrG2, bVar.a)) {
            return false;
        }
        zpc.C(bVar.a);
        if (i2 == 1 && zpc.y(bVar.a)) {
            return false;
        }
        int[] iArr = bVar.a;
        if (z ^ (i2 != (iArr[0] & 1))) {
            zpc.B(iArr, iArr);
            zpc.C(bVar.a);
        }
        return true;
    }

    public static void g(e eVar, byte[] bArr, int i2) {
        zpc.o(eVar.a, 16, bArr, i2);
        bArr[i2 + 56] = (byte) ((eVar.a[0] & 1) << 7);
    }

    public static e h(b bVar) {
        int[] iArr = new int[32];
        zpc.f(bVar.a, 0, iArr, 0);
        zpc.f(bVar.b, 0, iArr, 16);
        return new e(iArr);
    }

    public static e i(byte[] bArr, int i2) {
        csc cscVarE = e();
        byte[] bArr2 = new byte[114];
        cscVarE.update(bArr, i2, 57);
        cscVarE.f(bArr2, 0, 114);
        byte[] bArr3 = new byte[57];
        u(bArr2, 0, bArr3);
        c cVar = new c();
        v(bArr3, cVar);
        b bVar = new b();
        k(cVar, bVar);
        if (a(bVar) != 0) {
            return h(bVar);
        }
        throw new IllegalStateException();
    }

    public static void j(c[] cVarArr) {
        int length = cVarArr.length;
        int[] iArrH = zpc.h(length);
        int[] iArrG = zpc.g();
        zpc.f(cVarArr[0].c, 0, iArrG, 0);
        zpc.f(iArrG, 0, iArrH, 0);
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= length) {
                break;
            }
            zpc.A(iArrG, cVarArr[i3].c, iArrG);
            zpc.f(iArrG, 0, iArrH, i3 * 16);
            i2 = i3;
        }
        zpc.w(iArrG, iArrG);
        int[] iArrG2 = zpc.g();
        while (i2 > 0) {
            int i4 = i2 - 1;
            zpc.f(iArrH, i4 * 16, iArrG2, 0);
            zpc.A(iArrG2, iArrG, iArrG2);
            zpc.A(iArrG, cVarArr[i2].c, iArrG);
            zpc.f(iArrG2, 0, cVarArr[i2].c, 0);
            i2 = i4;
        }
        zpc.f(iArrG, 0, cVarArr[0].c, 0);
    }

    public static void k(c cVar, b bVar) {
        zpc.v(cVar.c, bVar.b);
        zpc.A(bVar.b, cVar.a, bVar.a);
        int[] iArr = bVar.b;
        zpc.A(iArr, cVar.b, iArr);
        zpc.C(bVar.a);
        zpc.C(bVar.b);
    }

    public static void l(b bVar, c cVar, d dVar) {
        int[] iArr = dVar.b;
        int[] iArr2 = dVar.c;
        int[] iArr3 = dVar.d;
        int[] iArr4 = dVar.e;
        int[] iArr5 = dVar.f;
        int[] iArr6 = dVar.g;
        int[] iArr7 = dVar.h;
        zpc.H(cVar.c, iArr);
        zpc.A(bVar.a, cVar.a, iArr2);
        zpc.A(bVar.b, cVar.b, iArr3);
        zpc.A(iArr2, iArr3, iArr4);
        zpc.z(iArr4, 39081, iArr4);
        zpc.a(iArr, iArr4, iArr5);
        zpc.J(iArr, iArr4, iArr6);
        zpc.a(bVar.b, bVar.a, iArr7);
        zpc.a(cVar.b, cVar.a, iArr4);
        zpc.A(iArr7, iArr4, iArr7);
        zpc.a(iArr3, iArr2, iArr);
        zpc.J(iArr3, iArr2, iArr4);
        zpc.c(iArr);
        zpc.J(iArr7, iArr, iArr7);
        zpc.A(iArr7, cVar.c, iArr7);
        zpc.A(iArr4, cVar.c, iArr4);
        zpc.A(iArr5, iArr7, cVar.a);
        zpc.A(iArr4, iArr6, cVar.b);
        zpc.A(iArr5, iArr6, cVar.c);
    }

    public static void m(c cVar, c cVar2, d dVar) {
        int[] iArr = dVar.a;
        int[] iArr2 = dVar.b;
        int[] iArr3 = dVar.c;
        int[] iArr4 = dVar.d;
        int[] iArr5 = dVar.e;
        int[] iArr6 = dVar.f;
        int[] iArr7 = dVar.g;
        int[] iArr8 = dVar.h;
        zpc.A(cVar.c, cVar2.c, iArr);
        zpc.H(iArr, iArr2);
        zpc.A(cVar.a, cVar2.a, iArr3);
        zpc.A(cVar.b, cVar2.b, iArr4);
        zpc.A(iArr3, iArr4, iArr5);
        zpc.z(iArr5, 39081, iArr5);
        zpc.a(iArr2, iArr5, iArr6);
        zpc.J(iArr2, iArr5, iArr7);
        zpc.a(cVar.b, cVar.a, iArr8);
        zpc.a(cVar2.b, cVar2.a, iArr5);
        zpc.A(iArr8, iArr5, iArr8);
        zpc.a(iArr4, iArr3, iArr2);
        zpc.J(iArr4, iArr3, iArr5);
        zpc.c(iArr2);
        zpc.J(iArr8, iArr2, iArr8);
        zpc.A(iArr8, iArr, iArr8);
        zpc.A(iArr5, iArr, iArr5);
        zpc.A(iArr6, iArr8, cVar2.a);
        zpc.A(iArr5, iArr7, cVar2.b);
        zpc.A(iArr6, iArr7, cVar2.c);
    }

    public static void n(b bVar, c cVar) {
        zpc.f(bVar.a, 0, cVar.a, 0);
        zpc.f(bVar.b, 0, cVar.b, 0);
        zpc.D(cVar.c);
    }

    public static void o(c cVar, c cVar2) {
        zpc.f(cVar.a, 0, cVar2.a, 0);
        zpc.f(cVar.b, 0, cVar2.b, 0);
        zpc.f(cVar.c, 0, cVar2.c, 0);
    }

    public static void p(c cVar, d dVar) {
        int[] iArr = dVar.b;
        int[] iArr2 = dVar.c;
        int[] iArr3 = dVar.d;
        int[] iArr4 = dVar.e;
        int[] iArr5 = dVar.h;
        int[] iArr6 = dVar.a;
        zpc.a(cVar.a, cVar.b, iArr);
        zpc.H(iArr, iArr);
        zpc.H(cVar.a, iArr2);
        zpc.H(cVar.b, iArr3);
        zpc.a(iArr2, iArr3, iArr4);
        zpc.c(iArr4);
        zpc.H(cVar.c, iArr5);
        zpc.a(iArr5, iArr5, iArr5);
        zpc.c(iArr5);
        zpc.J(iArr4, iArr5, iArr6);
        zpc.J(iArr, iArr4, iArr);
        zpc.J(iArr2, iArr3, iArr2);
        zpc.A(iArr, iArr6, cVar.a);
        zpc.A(iArr4, iArr2, cVar.b);
        zpc.A(iArr4, iArr6, cVar.c);
    }

    public static void q(int i2, int i3, b bVar) {
        int i4 = i2 * 512;
        for (int i5 = 0; i5 < 16; i5++) {
            int i6 = ((i5 ^ i3) - 1) >> 31;
            zpc.d(i6, j, i4, bVar.a, 0);
            zpc.d(i6, j, i4 + 16, bVar.b, 0);
            i4 += 32;
        }
    }

    public static void r(b bVar, c[] cVarArr, int i2, int i3, d dVar) {
        c cVar = new c();
        n(bVar, cVar);
        p(cVar, dVar);
        c cVar2 = new c();
        cVarArr[i2] = cVar2;
        n(bVar, cVar2);
        for (int i4 = 1; i4 < i3; i4++) {
            int i5 = i2 + i4;
            c cVar3 = new c();
            cVarArr[i5] = cVar3;
            o(cVarArr[i5 - 1], cVar3);
            m(cVar, cVarArr[i5], dVar);
        }
    }

    public static void s(c cVar) {
        zpc.L(cVar.a);
        zpc.D(cVar.b);
        zpc.D(cVar.c);
    }

    public static void t() {
        int i2;
        synchronized (g) {
            try {
                if (j != null) {
                    return;
                }
                c[] cVarArr = new c[144];
                d dVar = new d();
                b bVar = new b();
                zpc.f(c, 0, bVar.a, 0);
                zpc.f(d, 0, bVar.b, 0);
                r(bVar, cVarArr, 0, 32, dVar);
                b bVar2 = new b();
                zpc.f(e, 0, bVar2.a, 0);
                zpc.f(f, 0, bVar2.b, 0);
                r(bVar2, cVarArr, 32, 32, dVar);
                c cVar = new c();
                n(bVar, cVar);
                int i3 = 5;
                c[] cVarArr2 = new c[5];
                for (int i4 = 0; i4 < 5; i4++) {
                    cVarArr2[i4] = new c();
                }
                int i5 = 0;
                int i6 = 64;
                while (i5 < i3) {
                    int i7 = i6 + 1;
                    c cVar2 = new c();
                    cVarArr[i6] = cVar2;
                    int i8 = 0;
                    while (true) {
                        i2 = 1;
                        if (i8 >= i3) {
                            break;
                        }
                        if (i8 == 0) {
                            o(cVar, cVar2);
                        } else {
                            m(cVar, cVar2, dVar);
                        }
                        p(cVar, dVar);
                        o(cVar, cVarArr2[i8]);
                        if (i5 + i8 != 8) {
                            while (i2 < 18) {
                                p(cVar, dVar);
                                i2++;
                            }
                        }
                        i8++;
                        i3 = 5;
                    }
                    int[] iArr = cVar2.a;
                    zpc.B(iArr, iArr);
                    int i9 = 0;
                    i6 = i7;
                    while (i9 < 4) {
                        int i10 = i2 << i9;
                        int i11 = 0;
                        while (i11 < i10) {
                            c cVar3 = new c();
                            cVarArr[i6] = cVar3;
                            o(cVarArr[i6 - i10], cVar3);
                            m(cVarArr2[i9], cVarArr[i6], dVar);
                            i11++;
                            i6++;
                        }
                        i9++;
                        i2 = 1;
                    }
                    i5++;
                    i3 = 5;
                }
                j(cVarArr);
                h = new b[32];
                for (int i12 = 0; i12 < 32; i12++) {
                    c cVar4 = cVarArr[i12];
                    b[] bVarArr = h;
                    b bVar3 = new b();
                    bVarArr[i12] = bVar3;
                    zpc.A(cVar4.a, cVar4.c, bVar3.a);
                    zpc.C(bVar3.a);
                    zpc.A(cVar4.b, cVar4.c, bVar3.b);
                    zpc.C(bVar3.b);
                }
                i = new b[32];
                for (int i13 = 0; i13 < 32; i13++) {
                    c cVar5 = cVarArr[32 + i13];
                    b[] bVarArr2 = i;
                    b bVar4 = new b();
                    bVarArr2[i13] = bVar4;
                    zpc.A(cVar5.a, cVar5.c, bVar4.a);
                    zpc.C(bVar4.a);
                    zpc.A(cVar5.b, cVar5.c, bVar4.b);
                    zpc.C(bVar4.b);
                }
                j = zpc.h(160);
                int i14 = 0;
                for (int i15 = 64; i15 < 144; i15++) {
                    c cVar6 = cVarArr[i15];
                    int[] iArr2 = cVar6.a;
                    zpc.A(iArr2, cVar6.c, iArr2);
                    zpc.C(cVar6.a);
                    int[] iArr3 = cVar6.b;
                    zpc.A(iArr3, cVar6.c, iArr3);
                    zpc.C(cVar6.b);
                    zpc.f(cVar6.a, 0, j, i14);
                    zpc.f(cVar6.b, 0, j, i14 + 16);
                    i14 += 32;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void u(byte[] bArr, int i2, byte[] bArr2) {
        System.arraycopy(bArr, i2, bArr2, 0, 56);
        bArr2[0] = (byte) (bArr2[0] & 252);
        bArr2[55] = (byte) (bArr2[55] | SocketData.CLAZZ_TYPE_END_SOCKET);
        bArr2[56] = 0;
    }

    public static void v(byte[] bArr, c cVar) {
        t();
        int[] iArr = new int[15];
        l19.a(bArr, iArr);
        l19.b(WebIndicator.MAX_DECELERATE_SPEED_DURATION, iArr, iArr);
        b bVar = new b();
        d dVar = new d();
        s(cVar);
        int i2 = 17;
        while (true) {
            int i3 = i2;
            for (int i4 = 0; i4 < 5; i4++) {
                int i5 = 0;
                for (int i6 = 0; i6 < 5; i6++) {
                    i5 = (i5 & (~(1 << i6))) ^ ((iArr[i3 >>> 5] >>> (i3 & 31)) << i6);
                    i3 += 18;
                }
                int i7 = (i5 >>> 4) & 1;
                q(i4, ((-i7) ^ i5) & 15, bVar);
                zpc.e(i7, bVar.a);
                l(bVar, cVar, dVar);
            }
            i2--;
            if (i2 < 0) {
                return;
            } else {
                p(cVar, dVar);
            }
        }
    }

    public static void w(ypc.a aVar, byte[] bArr, int i2, int[] iArr, int[] iArr2) {
        if (aVar == null) {
            throw new NullPointerException("This method is only for use by X448");
        }
        byte[] bArr2 = new byte[57];
        u(bArr, i2, bArr2);
        c cVar = new c();
        v(bArr2, cVar);
        if (b(cVar) == 0) {
            throw new IllegalStateException();
        }
        zpc.f(cVar.a, 0, iArr, 0);
        zpc.f(cVar.b, 0, iArr2, 0);
    }

    public static e x(byte[] bArr, int i2) {
        byte[] bArrD = d(bArr, i2, 57);
        if (!c(bArrD)) {
            return null;
        }
        b bVar = new b();
        if (f(bArrD, false, bVar)) {
            return h(bVar);
        }
        return null;
    }
}
