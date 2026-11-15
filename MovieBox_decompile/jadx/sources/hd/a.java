package hd;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import com.google.zxing.k;
import md.c;

public final class a {

    private static final int[] f61322g = {3808, 476, 2107, 1799};

    private final kd.b f61323a;

    private boolean f61324b;

    private int f61325c;

    private int f61326d;

    private int f61327e;

    private int f61328f;

    static final class C0744a {

        private final int f61329a;

        private final int f61330b;

        C0744a(int i10, int i11) {
            this.f61329a = i10;
            this.f61330b = i11;
        }

        int a() {
            return this.f61329a;
        }

        int b() {
            return this.f61330b;
        }
    }

    static final class b {

        private final int f61331a;

        private final int f61332b;

        b(int i10, int i11) {
            this.f61331a = i10;
            this.f61332b = i11;
        }

        int a() {
            return this.f61331a;
        }

        int b() {
            return this.f61332b;
        }

        k c() {
            return new k(this.f61331a, this.f61332b);
        }

        public String toString() {
            return "<" + this.f61331a + ' ' + this.f61332b + '>';
        }
    }

    public a(kd.b bVar) {
        this.f61323a = bVar;
    }

    private static float b(k kVar, k kVar2) {
        return ld.a.a(kVar.c(), kVar.d(), kVar2.c(), kVar2.d());
    }

    private static float c(b bVar, b bVar2) {
        return ld.a.b(bVar.a(), bVar.b(), bVar2.a(), bVar2.b());
    }

    private static k[] d(k[] kVarArr, int i10, int i11) {
        float f10 = i11 / (i10 * 2.0f);
        float fC = kVarArr[0].c() - kVarArr[2].c();
        float fD = kVarArr[0].d() - kVarArr[2].d();
        float fC2 = (kVarArr[0].c() + kVarArr[2].c()) / 2.0f;
        float fD2 = (kVarArr[0].d() + kVarArr[2].d()) / 2.0f;
        float f11 = fC * f10;
        float f12 = fD * f10;
        k kVar = new k(fC2 + f11, fD2 + f12);
        k kVar2 = new k(fC2 - f11, fD2 - f12);
        float fC3 = kVarArr[1].c() - kVarArr[3].c();
        float fD3 = kVarArr[1].d() - kVarArr[3].d();
        float fC4 = (kVarArr[1].c() + kVarArr[3].c()) / 2.0f;
        float fD4 = (kVarArr[1].d() + kVarArr[3].d()) / 2.0f;
        float f13 = fC3 * f10;
        float f14 = f10 * fD3;
        return new k[]{kVar, new k(fC4 + f13, fD4 + f14), kVar2, new k(fC4 - f13, fD4 - f14)};
    }

    private int e(k[] kVarArr) throws NotFoundException {
        long j10;
        long j11;
        if (!o(kVarArr[0]) || !o(kVarArr[1]) || !o(kVarArr[2]) || !o(kVarArr[3])) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i10 = this.f61327e * 2;
        int[] iArr = {r(kVarArr[0], kVarArr[1], i10), r(kVarArr[1], kVarArr[2], i10), r(kVarArr[2], kVarArr[3], i10), r(kVarArr[3], kVarArr[0], i10)};
        this.f61328f = m(iArr, i10);
        long j12 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            int i12 = iArr[(this.f61328f + i11) % 4];
            if (this.f61324b) {
                j10 = j12 << 7;
                j11 = (i12 >> 1) & 127;
            } else {
                j10 = j12 << 10;
                j11 = ((i12 >> 2) & 992) + ((i12 >> 1) & 31);
            }
            j12 = j10 + j11;
        }
        C0744a c0744aH = h(j12, this.f61324b);
        int iA = c0744aH.a();
        if (this.f61324b) {
            this.f61325c = (iA >> 6) + 1;
            this.f61326d = (iA & 63) + 1;
        } else {
            this.f61325c = (iA >> 11) + 1;
            this.f61326d = (iA & 2047) + 1;
        }
        return c0744aH.b();
    }

    private k[] f(b bVar) throws NotFoundException {
        this.f61327e = 1;
        b bVar2 = bVar;
        b bVar3 = bVar2;
        b bVar4 = bVar3;
        b bVar5 = bVar4;
        boolean z10 = true;
        while (this.f61327e < 9) {
            b bVarJ = j(bVar2, z10, 1, -1);
            b bVarJ2 = j(bVar3, z10, 1, 1);
            b bVarJ3 = j(bVar4, z10, -1, 1);
            b bVarJ4 = j(bVar5, z10, -1, -1);
            if (this.f61327e > 2) {
                double dC = (c(bVarJ4, bVarJ) * this.f61327e) / (c(bVar5, bVar2) * (this.f61327e + 2));
                if (dC < 0.75d || dC > 1.25d || !p(bVarJ, bVarJ2, bVarJ3, bVarJ4)) {
                    break;
                }
            }
            z10 = !z10;
            this.f61327e++;
            bVar5 = bVarJ4;
            bVar2 = bVarJ;
            bVar3 = bVarJ2;
            bVar4 = bVarJ3;
        }
        int i10 = this.f61327e;
        if (i10 != 5 && i10 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.f61324b = i10 == 5;
        k[] kVarArr = {new k(bVar2.a() + 0.5f, bVar2.b() - 0.5f), new k(bVar3.a() + 0.5f, bVar3.b() + 0.5f), new k(bVar4.a() - 0.5f, bVar4.b() + 0.5f), new k(bVar5.a() - 0.5f, bVar5.b() - 0.5f)};
        int i11 = this.f61327e;
        return d(kVarArr, (i11 * 2) - 3, i11 * 2);
    }

    private int g(b bVar, b bVar2) {
        float fC = c(bVar, bVar2);
        if (fC == 0.0f) {
            return 0;
        }
        float fA = (bVar2.a() - bVar.a()) / fC;
        float fB = (bVar2.b() - bVar.b()) / fC;
        float fA2 = bVar.a();
        float fB2 = bVar.b();
        boolean zH = this.f61323a.h(bVar.a(), bVar.b());
        int iFloor = (int) Math.floor(fC);
        int i10 = 0;
        for (int i11 = 0; i11 < iFloor; i11++) {
            if (this.f61323a.h(ld.a.c(fA2), ld.a.c(fB2)) != zH) {
                i10++;
            }
            fA2 += fA;
            fB2 += fB;
        }
        float f10 = i10 / fC;
        if (f10 <= 0.1f || f10 >= 0.9f) {
            return (f10 <= 0.1f) == zH ? 1 : -1;
        }
        return 0;
    }

    private static C0744a h(long j10, boolean z10) throws NotFoundException {
        int i10;
        int i11;
        if (z10) {
            i10 = 7;
            i11 = 2;
        } else {
            i10 = 10;
            i11 = 4;
        }
        int i12 = i10 - i11;
        int[] iArr = new int[i10];
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            iArr[i13] = ((int) j10) & 15;
            j10 >>= 4;
        }
        try {
            int iA = new c(md.a.f66376k).a(iArr, i12);
            int i14 = 0;
            for (int i15 = 0; i15 < i11; i15++) {
                i14 = (i14 << 4) + iArr[i15];
            }
            return new C0744a(i14, iA);
        } catch (ReedSolomonException unused) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private int i() {
        if (this.f61324b) {
            return (this.f61325c * 4) + 11;
        }
        int i10 = this.f61325c;
        return (i10 * 4) + ((((i10 * 2) + 6) / 15) * 2) + 15;
    }

    private b j(b bVar, boolean z10, int i10, int i11) {
        int iA = bVar.a() + i10;
        int iB = bVar.b();
        while (true) {
            iB += i11;
            if (!n(iA, iB) || this.f61323a.h(iA, iB) != z10) {
                break;
            }
            iA += i10;
        }
        int i12 = iA - i10;
        int i13 = iB - i11;
        while (n(i12, i13) && this.f61323a.h(i12, i13) == z10) {
            i12 += i10;
        }
        int i14 = i12 - i10;
        while (n(i14, i13) && this.f61323a.h(i14, i13) == z10) {
            i13 += i11;
        }
        return new b(i14, i13 - i11);
    }

    private b k() {
        k kVarC;
        k kVar;
        k kVar2;
        k kVar3;
        k kVarC2;
        k kVarC3;
        k kVarC4;
        k kVarC5;
        try {
            k[] kVarArrC = new ld.b(this.f61323a).c();
            kVar2 = kVarArrC[0];
            kVar3 = kVarArrC[1];
            kVar = kVarArrC[2];
            kVarC = kVarArrC[3];
        } catch (NotFoundException unused) {
            int iN = this.f61323a.n() / 2;
            int iK = this.f61323a.k() / 2;
            int i10 = iN + 7;
            int i11 = iK - 7;
            k kVarC6 = j(new b(i10, i11), false, 1, -1).c();
            int i12 = iK + 7;
            k kVarC7 = j(new b(i10, i12), false, 1, 1).c();
            int i13 = iN - 7;
            k kVarC8 = j(new b(i13, i12), false, -1, 1).c();
            kVarC = j(new b(i13, i11), false, -1, -1).c();
            kVar = kVarC8;
            kVar2 = kVarC6;
            kVar3 = kVarC7;
        }
        int iC = ld.a.c((((kVar2.c() + kVarC.c()) + kVar3.c()) + kVar.c()) / 4.0f);
        int iC2 = ld.a.c((((kVar2.d() + kVarC.d()) + kVar3.d()) + kVar.d()) / 4.0f);
        try {
            k[] kVarArrC2 = new ld.b(this.f61323a, 15, iC, iC2).c();
            kVarC2 = kVarArrC2[0];
            kVarC3 = kVarArrC2[1];
            kVarC4 = kVarArrC2[2];
            kVarC5 = kVarArrC2[3];
        } catch (NotFoundException unused2) {
            int i14 = iC + 7;
            int i15 = iC2 - 7;
            kVarC2 = j(new b(i14, i15), false, 1, -1).c();
            int i16 = iC2 + 7;
            kVarC3 = j(new b(i14, i16), false, 1, 1).c();
            int i17 = iC - 7;
            kVarC4 = j(new b(i17, i16), false, -1, 1).c();
            kVarC5 = j(new b(i17, i15), false, -1, -1).c();
        }
        return new b(ld.a.c((((kVarC2.c() + kVarC5.c()) + kVarC3.c()) + kVarC4.c()) / 4.0f), ld.a.c((((kVarC2.d() + kVarC5.d()) + kVarC3.d()) + kVarC4.d()) / 4.0f));
    }

    private k[] l(k[] kVarArr) {
        return d(kVarArr, this.f61327e * 2, i());
    }

    private static int m(int[] iArr, int i10) throws NotFoundException {
        int i11 = 0;
        for (int i12 : iArr) {
            i11 = (i11 << 3) + ((i12 >> (i10 - 2)) << 1) + (i12 & 1);
        }
        int i13 = ((i11 & 1) << 11) + (i11 >> 1);
        for (int i14 = 0; i14 < 4; i14++) {
            if (Integer.bitCount(f61322g[i14] ^ i13) <= 2) {
                return i14;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private boolean n(int i10, int i11) {
        return i10 >= 0 && i10 < this.f61323a.n() && i11 >= 0 && i11 < this.f61323a.k();
    }

    private boolean o(k kVar) {
        return n(ld.a.c(kVar.c()), ld.a.c(kVar.d()));
    }

    private boolean p(b bVar, b bVar2, b bVar3, b bVar4) {
        b bVar5 = new b(Math.max(0, bVar.a() - 3), Math.min(this.f61323a.k() - 1, bVar.b() + 3));
        b bVar6 = new b(Math.max(0, bVar2.a() - 3), Math.max(0, bVar2.b() - 3));
        b bVar7 = new b(Math.min(this.f61323a.n() - 1, bVar3.a() + 3), Math.max(0, Math.min(this.f61323a.k() - 1, bVar3.b() - 3)));
        b bVar8 = new b(Math.min(this.f61323a.n() - 1, bVar4.a() + 3), Math.min(this.f61323a.k() - 1, bVar4.b() + 3));
        int iG = g(bVar8, bVar5);
        return iG != 0 && g(bVar5, bVar6) == iG && g(bVar6, bVar7) == iG && g(bVar7, bVar8) == iG;
    }

    private kd.b q(kd.b bVar, k kVar, k kVar2, k kVar3, k kVar4) {
        kd.k kVarB = kd.k.b();
        int i10 = i();
        float f10 = i10 / 2.0f;
        int i11 = this.f61327e;
        float f11 = f10 - i11;
        float f12 = f10 + i11;
        return kVarB.c(bVar, i10, i10, f11, f11, f12, f11, f12, f12, f11, f12, kVar.c(), kVar.d(), kVar2.c(), kVar2.d(), kVar3.c(), kVar3.d(), kVar4.c(), kVar4.d());
    }

    private int r(k kVar, k kVar2, int i10) {
        float fB = b(kVar, kVar2);
        float f10 = fB / i10;
        float fC = kVar.c();
        float fD = kVar.d();
        float fC2 = ((kVar2.c() - kVar.c()) * f10) / fB;
        float fD2 = (f10 * (kVar2.d() - kVar.d())) / fB;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            float f11 = i12;
            if (this.f61323a.h(ld.a.c((f11 * fC2) + fC), ld.a.c((f11 * fD2) + fD))) {
                i11 |= 1 << ((i10 - i12) - 1);
            }
        }
        return i11;
    }

    public gd.a a(boolean z10) throws NotFoundException {
        k[] kVarArrF = f(k());
        if (z10) {
            k kVar = kVarArrF[0];
            kVarArrF[0] = kVarArrF[2];
            kVarArrF[2] = kVar;
        }
        int iE = e(kVarArrF);
        kd.b bVar = this.f61323a;
        int i10 = this.f61328f;
        return new gd.a(q(bVar, kVarArrF[i10 % 4], kVarArrF[(i10 + 1) % 4], kVarArrF[(i10 + 2) % 4], kVarArrF[(i10 + 3) % 4]), l(kVarArrF), this.f61324b, this.f61326d, this.f61325c, iE);
    }
}
