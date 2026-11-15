package vz;

import org.mvel2.optimizers.OptimizationNotSupported;

final class x {

    final g f74048a;

    private final e f74049b;

    private int f74050c;

    private String f74051d;

    private int f74052e;

    private a[] f74053f;

    private int f74054g;

    private d f74055h;

    private int f74056i;

    private d f74057j;

    private int f74058k;

    private a[] f74059l;

    x(g gVar) {
        this.f74048a = gVar;
        this.f74049b = null;
        this.f74053f = new a[256];
        this.f74054g = 1;
        this.f74055h = new d();
    }

    private void A(int i10, String str, String str2) {
        a(new a(i10, 12, str, str2, Y(12, str, str2)));
    }

    private void E(int i10, String str) {
        a(new a(i10, 1, str, W(1, str)));
    }

    private w F(int i10, String str) {
        int iW = W(i10, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == i10 && aVarN.f74060h == iW && aVarN.f74045e.equals(str)) {
                return aVarN;
            }
        }
        this.f74055h.e(i10, D(str));
        int i11 = this.f74054g;
        this.f74054g = i11 + 1;
        return c0(new a(i11, i10, str, iW));
    }

    private void G(int i10, int i11, String str) {
        a(new a(i10, i11, str, W(i11, str)));
    }

    private int J(a aVar) {
        if (this.f74059l == null) {
            this.f74059l = new a[16];
        }
        int i10 = this.f74058k;
        a[] aVarArr = this.f74059l;
        if (i10 == aVarArr.length) {
            a[] aVarArr2 = new a[aVarArr.length * 2];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, aVarArr.length);
            this.f74059l = aVarArr2;
        }
        a[] aVarArr3 = this.f74059l;
        int i11 = this.f74058k;
        this.f74058k = i11 + 1;
        aVarArr3[i11] = aVar;
        return c0(aVar).f74041a;
    }

    private void M(e eVar, char[] cArr) {
        byte[] bArr = eVar.f73880a;
        int iE = eVar.e();
        for (int iH = eVar.H(iE - 2); iH > 0; iH--) {
            if ("BootstrapMethods".equals(eVar.G(iE, cArr))) {
                this.f74056i = eVar.H(iE + 6);
                break;
            }
            iE += eVar.t(iE + 2) + 6;
        }
        if (this.f74056i > 0) {
            int i10 = iE + 8;
            int iT = eVar.t(iE + 2) - 2;
            d dVar = new d(iT);
            this.f74057j = dVar;
            dVar.h(bArr, i10, iT);
            int i11 = i10;
            for (int i12 = 0; i12 < this.f74056i; i12++) {
                int i13 = i11 - i10;
                int iH2 = eVar.H(i11);
                int iH3 = eVar.H(i11 + 2);
                i11 += 4;
                int iHashCode = eVar.o(iH2, cArr).hashCode();
                while (true) {
                    int i14 = iH3 - 1;
                    if (iH3 > 0) {
                        int iH4 = eVar.H(i11);
                        i11 += 2;
                        iHashCode ^= eVar.o(iH4, cArr).hashCode();
                        iH3 = i14;
                    }
                }
                a(new a(i12, 64, i13, iHashCode & Integer.MAX_VALUE));
            }
        }
    }

    private a N(int i10) {
        a[] aVarArr = this.f74053f;
        return aVarArr[i10 % aVarArr.length];
    }

    private static int U(int i10, int i11) {
        return (i10 + i11) & Integer.MAX_VALUE;
    }

    private static int V(int i10, long j10) {
        return (i10 + ((int) j10) + ((int) (j10 >>> 32))) & Integer.MAX_VALUE;
    }

    private static int W(int i10, String str) {
        return (i10 + str.hashCode()) & Integer.MAX_VALUE;
    }

    private static int X(int i10, String str, int i11) {
        return (i10 + str.hashCode() + i11) & Integer.MAX_VALUE;
    }

    private static int Y(int i10, String str, String str2) {
        return (i10 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
    }

    private static int Z(int i10, String str, String str2, int i11) {
        return (i10 + (str.hashCode() * str2.hashCode() * (i11 + 1))) & Integer.MAX_VALUE;
    }

    private void a(a aVar) {
        this.f74052e++;
        int i10 = aVar.f74060h;
        a[] aVarArr = this.f74053f;
        int length = i10 % aVarArr.length;
        aVar.f74061i = aVarArr[length];
        aVarArr[length] = aVar;
    }

    private static int a0(int i10, String str, String str2, String str3) {
        return (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
    }

    private w b(int i10, int i11, int i12) {
        byte[] bArr = this.f74057j.f73878a;
        for (a aVarN = N(i12); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 64 && aVarN.f74060h == i12) {
                int i13 = (int) aVarN.f74046f;
                int i14 = 0;
                while (true) {
                    if (i14 >= i11) {
                        this.f74057j.f73879b = i10;
                        return aVarN;
                    }
                    if (bArr[i10 + i14] != bArr[i13 + i14]) {
                        break;
                    }
                    i14++;
                }
            }
        }
        int i15 = this.f74056i;
        this.f74056i = i15 + 1;
        return c0(new a(i15, 64, i10, i12));
    }

    private static int b0(int i10, String str, String str2, String str3, int i11) {
        return (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode() * i11)) & Integer.MAX_VALUE;
    }

    private a c0(a aVar) {
        int i10 = this.f74052e;
        a[] aVarArr = this.f74053f;
        if (i10 > (aVarArr.length * 3) / 4) {
            int length = aVarArr.length;
            int i11 = (length * 2) + 1;
            a[] aVarArr2 = new a[i11];
            for (int i12 = length - 1; i12 >= 0; i12--) {
                a aVar2 = this.f74053f[i12];
                while (aVar2 != null) {
                    int i13 = aVar2.f74060h % i11;
                    a aVar3 = aVar2.f74061i;
                    aVar2.f74061i = aVarArr2[i13];
                    aVarArr2[i13] = aVar2;
                    aVar2 = aVar3;
                }
            }
            this.f74053f = aVarArr2;
        }
        this.f74052e++;
        int i14 = aVar.f74060h;
        a[] aVarArr3 = this.f74053f;
        int length2 = i14 % aVarArr3.length;
        aVar.f74061i = aVarArr3[length2];
        aVarArr3[length2] = aVar;
        return aVar;
    }

    private w h(int i10, String str, String str2, int i11) {
        int iZ = Z(i10, str, str2, i11);
        for (a aVarN = N(iZ); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == i10 && aVarN.f74060h == iZ && aVarN.f74046f == i11 && aVarN.f74044d.equals(str) && aVarN.f74045e.equals(str2)) {
                return aVarN;
            }
        }
        this.f74055h.f(i10, i11, z(str, str2));
        int i12 = this.f74054g;
        this.f74054g = i12 + 1;
        return c0(new a(i12, i10, null, str, str2, i11, iZ));
    }

    private void i(int i10, int i11, String str, String str2, int i12) {
        a(new a(i11, i10, null, str, str2, i12, Z(i10, str, str2, i12)));
    }

    private w m(int i10, int i11) {
        int iU = U(i10, i11);
        for (a aVarN = N(iU); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == i10 && aVarN.f74060h == iU && aVarN.f74046f == i11) {
                return aVarN;
            }
        }
        this.f74055h.g(i10).i(i11);
        int i12 = this.f74054g;
        this.f74054g = i12 + 1;
        return c0(new a(i12, i10, i11, iU));
    }

    private void n(int i10, int i11, int i12) {
        a(new a(i10, i11, i12, U(i11, i12)));
    }

    private w q(int i10, long j10) {
        int iV = V(i10, j10);
        for (a aVarN = N(iV); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == i10 && aVarN.f74060h == iV && aVarN.f74046f == j10) {
                return aVarN;
            }
        }
        int i11 = this.f74054g;
        this.f74055h.g(i10).j(j10);
        this.f74054g += 2;
        return c0(new a(i11, i10, j10, iV));
    }

    private void r(int i10, int i11, long j10) {
        a(new a(i10, i11, j10, V(i11, j10)));
    }

    private a s(int i10, String str, String str2, String str3) {
        int iA0 = a0(i10, str, str2, str3);
        for (a aVarN = N(iA0); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == i10 && aVarN.f74060h == iA0 && aVarN.f74043c.equals(str) && aVarN.f74044d.equals(str2) && aVarN.f74045e.equals(str3)) {
                return aVarN;
            }
        }
        this.f74055h.f(i10, e(str).f74041a, z(str2, str3));
        int i11 = this.f74054g;
        this.f74054g = i11 + 1;
        return c0(new a(i11, i10, str, str2, str3, 0L, iA0));
    }

    private void t(int i10, int i11, String str, String str2, String str3) {
        a(new a(i10, i11, str, str2, str3, 0L, a0(i11, str, str2, str3)));
    }

    private void v(int i10, int i11, String str, String str2, String str3) {
        a(new a(i10, 15, str, str2, str3, i11, b0(15, str, str2, str3, i11)));
    }

    w B(String str) {
        return F(20, str);
    }

    w C(String str) {
        return F(8, str);
    }

    int D(String str) {
        int iW = W(1, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 1 && aVarN.f74060h == iW && aVarN.f74045e.equals(str)) {
                return aVarN.f74041a;
            }
        }
        this.f74055h.g(1).l(str);
        int i10 = this.f74054g;
        this.f74054g = i10 + 1;
        return c0(new a(i10, 1, str, iW)).f74041a;
    }

    int H(int i10, int i11) {
        long j10 = ((long) i10) | (((long) i11) << 32);
        int iU = U(130, i10 + i11);
        for (a aVarN = N(iU); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 130 && aVarN.f74060h == iU && aVarN.f74046f == j10) {
                return aVarN.f74047g;
            }
        }
        a[] aVarArr = this.f74059l;
        int I = I(this.f74048a.p(aVarArr[i10].f74045e, aVarArr[i11].f74045e));
        c0(new a(this.f74058k, 130, j10, iU)).f74047g = I;
        return I;
    }

    int I(String str) {
        int iW = W(128, str);
        for (a aVarN = N(iW); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 128 && aVarN.f74060h == iW && aVarN.f74045e.equals(str)) {
                return aVarN.f74041a;
            }
        }
        return J(new a(this.f74058k, 128, str, iW));
    }

    int K(String str, int i10) {
        int iX = X(129, str, i10);
        for (a aVarN = N(iX); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 129 && aVarN.f74060h == iX && aVarN.f74046f == i10 && aVarN.f74045e.equals(str)) {
                return aVarN.f74041a;
            }
        }
        return J(new a(this.f74058k, 129, str, i10, iX));
    }

    int L() {
        if (this.f74057j == null) {
            return 0;
        }
        D("BootstrapMethods");
        return this.f74057j.f73879b + 8;
    }

    String O() {
        return this.f74051d;
    }

    int P() {
        return this.f74054g;
    }

    int Q() {
        return this.f74055h.f73879b;
    }

    int R() {
        return this.f74050c;
    }

    e S() {
        return this.f74049b;
    }

    w T(int i10) {
        return this.f74059l[i10];
    }

    w c(o oVar, Object... objArr) {
        d dVar = this.f74057j;
        if (dVar == null) {
            dVar = new d();
            this.f74057j = dVar;
        }
        for (Object obj : objArr) {
            d(obj);
        }
        int i10 = dVar.f73879b;
        dVar.k(u(oVar.d(), oVar.c(), oVar.b(), oVar.a(), oVar.e()).f74041a);
        dVar.k(objArr.length);
        for (Object obj2 : objArr) {
            dVar.k(d(obj2).f74041a);
        }
        int i11 = dVar.f73879b - i10;
        int iHashCode = oVar.hashCode();
        for (Object obj3 : objArr) {
            iHashCode ^= obj3.hashCode();
        }
        return b(i10, i11, iHashCode & Integer.MAX_VALUE);
    }

    w d(Object obj) {
        if (obj instanceof Integer) {
            return l(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return l(((Byte) obj).intValue());
        }
        if (obj instanceof Character) {
            return l(((Character) obj).charValue());
        }
        if (obj instanceof Short) {
            return l(((Short) obj).intValue());
        }
        if (obj instanceof Boolean) {
            return l(((Boolean) obj).booleanValue() ? 1 : 0);
        }
        if (obj instanceof Float) {
            return k(((Float) obj).floatValue());
        }
        if (obj instanceof Long) {
            return p(((Long) obj).longValue());
        }
        if (obj instanceof Double) {
            return f(((Double) obj).doubleValue());
        }
        if (obj instanceof String) {
            return C((String) obj);
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            int iL = yVar.l();
            if (iL == 10) {
                return e(yVar.g());
            }
            return iL == 11 ? w(yVar.e()) : e(yVar.e());
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            return u(oVar.d(), oVar.c(), oVar.b(), oVar.a(), oVar.e());
        }
        if (!(obj instanceof h)) {
            throw new OptimizationNotSupported();
        }
        h hVar = (h) obj;
        return g(hVar.d(), hVar.c(), hVar.a(), hVar.b());
    }

    void d0(d dVar) {
        if (this.f74057j != null) {
            d dVarK = dVar.k(D("BootstrapMethods")).i(this.f74057j.f73879b + 2).k(this.f74056i);
            d dVar2 = this.f74057j;
            dVarK.h(dVar2.f73878a, 0, dVar2.f73879b);
        }
    }

    w e(String str) {
        return F(7, str);
    }

    void e0(d dVar) {
        d dVarK = dVar.k(this.f74054g);
        d dVar2 = this.f74055h;
        dVarK.h(dVar2.f73878a, 0, dVar2.f73879b);
    }

    w f(double d10) {
        return q(6, Double.doubleToRawLongBits(d10));
    }

    int f0(int i10, String str) {
        this.f74050c = i10;
        this.f74051d = str;
        return e(str).f74041a;
    }

    w g(String str, String str2, o oVar, Object... objArr) {
        return h(17, str, str2, c(oVar, objArr).f74041a);
    }

    w j(String str, String str2, String str3) {
        return s(9, str, str2, str3);
    }

    w k(float f10) {
        return m(4, Float.floatToRawIntBits(f10));
    }

    w l(int i10) {
        return m(3, i10);
    }

    w o(String str, String str2, o oVar, Object... objArr) {
        return h(18, str, str2, c(oVar, objArr).f74041a);
    }

    w p(long j10) {
        return q(5, j10);
    }

    w u(int i10, String str, String str2, String str3, boolean z10) {
        int iB0 = b0(15, str, str2, str3, i10);
        for (a aVarN = N(iB0); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 15 && aVarN.f74060h == iB0 && aVarN.f74046f == i10 && aVarN.f74043c.equals(str) && aVarN.f74044d.equals(str2) && aVarN.f74045e.equals(str3)) {
                return aVarN;
            }
        }
        if (i10 <= 4) {
            this.f74055h.d(15, i10, j(str, str2, str3).f74041a);
        } else {
            this.f74055h.d(15, i10, x(str, str2, str3, z10).f74041a);
        }
        int i11 = this.f74054g;
        this.f74054g = i11 + 1;
        return c0(new a(i11, 15, str, str2, str3, i10, iB0));
    }

    w w(String str) {
        return F(16, str);
    }

    w x(String str, String str2, String str3, boolean z10) {
        return s(z10 ? 11 : 10, str, str2, str3);
    }

    w y(String str) {
        return F(19, str);
    }

    int z(String str, String str2) {
        int iY = Y(12, str, str2);
        for (a aVarN = N(iY); aVarN != null; aVarN = aVarN.f74061i) {
            if (aVarN.f74042b == 12 && aVarN.f74060h == iY && aVarN.f74044d.equals(str) && aVarN.f74045e.equals(str2)) {
                return aVarN.f74041a;
            }
        }
        this.f74055h.f(12, D(str), D(str2));
        int i10 = this.f74054g;
        this.f74054g = i10 + 1;
        return c0(new a(i10, 12, str, str2, iY)).f74041a;
    }

    private static class a extends w {

        final int f74060h;

        a f74061i;

        a(int i10, int i11, String str, String str2, String str3, long j10, int i12) {
            super(i10, i11, str, str2, str3, j10);
            this.f74060h = i12;
        }

        a(int i10, int i11, String str, int i12) {
            super(i10, i11, null, null, str, 0L);
            this.f74060h = i12;
        }

        a(int i10, int i11, String str, long j10, int i12) {
            super(i10, i11, null, null, str, j10);
            this.f74060h = i12;
        }

        a(int i10, int i11, String str, String str2, int i12) {
            super(i10, i11, null, str, str2, 0L);
            this.f74060h = i12;
        }

        a(int i10, int i11, long j10, int i12) {
            super(i10, i11, null, null, null, j10);
            this.f74060h = i12;
        }
    }

    x(g gVar, e eVar) {
        this.f74048a = gVar;
        this.f74049b = eVar;
        byte[] bArr = eVar.f73880a;
        int iF = eVar.f(1) - 1;
        int i10 = eVar.f73886g - iF;
        this.f74054g = eVar.g();
        d dVar = new d(i10);
        this.f74055h = dVar;
        dVar.h(bArr, iF, i10);
        this.f74053f = new a[this.f74054g * 2];
        char[] cArr = new char[eVar.h()];
        boolean z10 = false;
        int i11 = 1;
        while (i11 < this.f74054g) {
            int iF2 = eVar.f(i11);
            byte b10 = bArr[iF2 - 1];
            switch (b10) {
                case 1:
                    E(i11, eVar.J(i11, cArr));
                    break;
                case 2:
                case 13:
                case 14:
                default:
                    throw new IllegalArgumentException();
                case 3:
                case 4:
                    n(i11, b10, eVar.t(iF2));
                    break;
                case 5:
                case 6:
                    r(i11, b10, eVar.v(iF2));
                    break;
                case 7:
                case 8:
                case 16:
                case 19:
                case 20:
                    G(i11, b10, eVar.G(iF2, cArr));
                    break;
                case 9:
                case 10:
                case 11:
                    int iF3 = eVar.f(eVar.H(iF2 + 2));
                    t(i11, b10, eVar.m(iF2, cArr), eVar.G(iF3, cArr), eVar.G(iF3 + 2, cArr));
                    break;
                case 12:
                    A(i11, eVar.G(iF2, cArr), eVar.G(iF2 + 2, cArr));
                    break;
                case 15:
                    int iF4 = eVar.f(eVar.H(iF2 + 1));
                    int iF5 = eVar.f(eVar.H(iF4 + 2));
                    v(i11, eVar.l(iF2), eVar.m(iF4, cArr), eVar.G(iF5, cArr), eVar.G(iF5 + 2, cArr));
                    break;
                case 17:
                case 18:
                    int iF6 = eVar.f(eVar.H(iF2 + 2));
                    i(b10, i11, eVar.G(iF6, cArr), eVar.G(iF6 + 2, cArr), eVar.H(iF2));
                    z10 = true;
                    break;
            }
            i11 += (b10 == 5 || b10 == 6) ? 2 : 1;
        }
        if (z10) {
            M(eVar, cArr);
        }
    }
}
