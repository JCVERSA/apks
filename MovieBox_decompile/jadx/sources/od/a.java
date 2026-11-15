package od;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import kd.b;
import kd.f;

public final class a {

    private final b f67804a;

    private final ld.b f67805b;

    public a(b bVar) {
        this.f67804a = bVar;
        this.f67805b = new ld.b(bVar);
    }

    private k a(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = j(kVar, kVar4);
        k kVarH = h(kVar, kVar2, (j(kVar2, kVar4) + 1) * 4);
        k kVarH2 = h(kVar3, kVar2, (iJ + 1) * 4);
        int iJ2 = j(kVarH, kVar4);
        int iJ3 = j(kVarH2, kVar4);
        float f10 = iJ2 + 1;
        k kVar5 = new k(kVar4.c() + ((kVar3.c() - kVar2.c()) / f10), kVar4.d() + ((kVar3.d() - kVar2.d()) / f10));
        float f11 = iJ3 + 1;
        k kVar6 = new k(kVar4.c() + ((kVar.c() - kVar2.c()) / f11), kVar4.d() + ((kVar.d() - kVar2.d()) / f11));
        if (e(kVar5)) {
            return (e(kVar6) && j(kVarH, kVar5) + j(kVarH2, kVar5) <= j(kVarH, kVar6) + j(kVarH2, kVar6)) ? kVar6 : kVar5;
        }
        if (e(kVar6)) {
            return kVar6;
        }
        return null;
    }

    private k[] c(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[3];
        k kVar4 = kVarArr[2];
        int iJ = j(kVar, kVar2);
        int iJ2 = j(kVar2, kVar3);
        int iJ3 = j(kVar3, kVar4);
        int iJ4 = j(kVar4, kVar);
        k[] kVarArr2 = {kVar4, kVar, kVar2, kVar3};
        if (iJ > iJ2) {
            kVarArr2[0] = kVar;
            kVarArr2[1] = kVar2;
            kVarArr2[2] = kVar3;
            kVarArr2[3] = kVar4;
            iJ = iJ2;
        }
        if (iJ > iJ3) {
            kVarArr2[0] = kVar2;
            kVarArr2[1] = kVar3;
            kVarArr2[2] = kVar4;
            kVarArr2[3] = kVar;
        } else {
            iJ3 = iJ;
        }
        if (iJ3 > iJ4) {
            kVarArr2[0] = kVar3;
            kVarArr2[1] = kVar4;
            kVarArr2[2] = kVar;
            kVarArr2[3] = kVar2;
        }
        return kVarArr2;
    }

    private k[] d(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = (j(kVar, kVar4) + 1) * 4;
        if (j(h(kVar2, kVar3, iJ), kVar) < j(h(kVar3, kVar2, iJ), kVar4)) {
            kVarArr[0] = kVar;
            kVarArr[1] = kVar2;
            kVarArr[2] = kVar3;
            kVarArr[3] = kVar4;
        } else {
            kVarArr[0] = kVar2;
            kVarArr[1] = kVar3;
            kVarArr[2] = kVar4;
            kVarArr[3] = kVar;
        }
        return kVarArr;
    }

    private boolean e(k kVar) {
        return kVar.c() >= 0.0f && kVar.c() <= ((float) (this.f67804a.n() - 1)) && kVar.d() > 0.0f && kVar.d() <= ((float) (this.f67804a.k() - 1));
    }

    private static k f(k kVar, float f10, float f11) {
        float fC = kVar.c();
        float fD = kVar.d();
        return new k(fC < f10 ? fC - 1.0f : fC + 1.0f, fD < f11 ? fD - 1.0f : fD + 1.0f);
    }

    private static b g(b bVar, k kVar, k kVar2, k kVar3, k kVar4, int i10, int i11) {
        float f10 = i10 - 0.5f;
        float f11 = i11 - 0.5f;
        return kd.k.b().c(bVar, i10, i11, 0.5f, 0.5f, f10, 0.5f, f10, f11, 0.5f, f11, kVar.c(), kVar.d(), kVar4.c(), kVar4.d(), kVar3.c(), kVar3.d(), kVar2.c(), kVar2.d());
    }

    private static k h(k kVar, k kVar2, int i10) {
        float f10 = i10 + 1;
        return new k(kVar.c() + ((kVar2.c() - kVar.c()) / f10), kVar.d() + ((kVar2.d() - kVar.d()) / f10));
    }

    private k[] i(k[] kVarArr) {
        k kVar = kVarArr[0];
        k kVar2 = kVarArr[1];
        k kVar3 = kVarArr[2];
        k kVar4 = kVarArr[3];
        int iJ = j(kVar, kVar4) + 1;
        k kVarH = h(kVar, kVar2, (j(kVar3, kVar4) + 1) * 4);
        k kVarH2 = h(kVar3, kVar2, iJ * 4);
        int iJ2 = j(kVarH, kVar4);
        int i10 = iJ2 + 1;
        int iJ3 = j(kVarH2, kVar4);
        int i11 = iJ3 + 1;
        if ((i10 & 1) == 1) {
            i10 = iJ2 + 2;
        }
        if ((i11 & 1) == 1) {
            i11 = iJ3 + 2;
        }
        float fC = (((kVar.c() + kVar2.c()) + kVar3.c()) + kVar4.c()) / 4.0f;
        float fD = (((kVar.d() + kVar2.d()) + kVar3.d()) + kVar4.d()) / 4.0f;
        k kVarF = f(kVar, fC, fD);
        k kVarF2 = f(kVar2, fC, fD);
        k kVarF3 = f(kVar3, fC, fD);
        k kVarF4 = f(kVar4, fC, fD);
        int i12 = i11 * 4;
        int i13 = i10 * 4;
        return new k[]{h(h(kVarF, kVarF2, i12), kVarF4, i13), h(h(kVarF2, kVarF, i12), kVarF3, i13), h(h(kVarF3, kVarF4, i12), kVarF2, i13), h(h(kVarF4, kVarF3, i12), kVarF, i13)};
    }

    private int j(k kVar, k kVar2) {
        int iC = (int) kVar.c();
        int iD = (int) kVar.d();
        int iC2 = (int) kVar2.c();
        int iMin = Math.min(this.f67804a.k() - 1, (int) kVar2.d());
        int i10 = 0;
        boolean z10 = Math.abs(iMin - iD) > Math.abs(iC2 - iC);
        if (z10) {
            iD = iC;
            iC = iD;
            iMin = iC2;
            iC2 = iMin;
        }
        int iAbs = Math.abs(iC2 - iC);
        int iAbs2 = Math.abs(iMin - iD);
        int i11 = (-iAbs) / 2;
        int i12 = iD < iMin ? 1 : -1;
        int i13 = iC >= iC2 ? -1 : 1;
        boolean zH = this.f67804a.h(z10 ? iD : iC, z10 ? iC : iD);
        while (iC != iC2) {
            boolean zH2 = this.f67804a.h(z10 ? iD : iC, z10 ? iC : iD);
            if (zH2 != zH) {
                i10++;
                zH = zH2;
            }
            i11 += iAbs2;
            if (i11 > 0) {
                if (iD == iMin) {
                    break;
                }
                iD += i12;
                i11 -= iAbs;
            }
            iC += i13;
        }
        return i10;
    }

    public f b() throws NotFoundException {
        int iMax;
        int i10;
        k[] kVarArrD = d(c(this.f67805b.c()));
        k kVarA = a(kVarArrD);
        kVarArrD[3] = kVarA;
        if (kVarA == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k[] kVarArrI = i(kVarArrD);
        k kVar = kVarArrI[0];
        k kVar2 = kVarArrI[1];
        k kVar3 = kVarArrI[2];
        k kVar4 = kVarArrI[3];
        int iJ = j(kVar, kVar4);
        int i11 = iJ + 1;
        int iJ2 = j(kVar3, kVar4);
        int i12 = iJ2 + 1;
        if ((i11 & 1) == 1) {
            i11 = iJ + 2;
        }
        if ((i12 & 1) == 1) {
            i12 = iJ2 + 2;
        }
        if (i11 * 4 >= i12 * 6 || i12 * 4 >= i11 * 6) {
            iMax = i11;
            i10 = i12;
        } else {
            iMax = Math.max(i11, i12);
            i10 = iMax;
        }
        return new f(g(this.f67804a, kVar, kVar2, kVar3, kVar4, iMax, i10), new k[]{kVar, kVar2, kVar3, kVar4});
    }
}
