package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import com.google.zxing.l;
import com.google.zxing.qrcode.decoder.g;
import java.util.Map;
import kd.f;
import kd.n;

public class c {

    private final kd.b f32195a;

    private l f32196b;

    public c(kd.b bVar) {
        this.f32195a = bVar;
    }

    private float b(k kVar, k kVar2) {
        float fJ = j((int) kVar.c(), (int) kVar.d(), (int) kVar2.c(), (int) kVar2.d());
        float fJ2 = j((int) kVar2.c(), (int) kVar2.d(), (int) kVar.c(), (int) kVar.d());
        if (Float.isNaN(fJ)) {
            return fJ2 / 7.0f;
        }
        return Float.isNaN(fJ2) ? fJ / 7.0f : (fJ + fJ2) / 14.0f;
    }

    private static int c(k kVar, k kVar2, k kVar3, float f10) throws NotFoundException {
        int iC = (ld.a.c(k.b(kVar, kVar2) / f10) + ld.a.c(k.b(kVar, kVar3) / f10)) / 2;
        int i10 = iC + 7;
        int i11 = i10 & 3;
        if (i11 == 0) {
            return iC + 8;
        }
        if (i11 == 2) {
            return iC + 6;
        }
        if (i11 != 3) {
            return i10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static n d(k kVar, k kVar2, k kVar3, k kVar4, int i10) {
        float fC;
        float fD;
        float f10;
        float f11 = i10 - 3.5f;
        if (kVar4 != null) {
            fC = kVar4.c();
            fD = kVar4.d();
            f10 = f11 - 3.0f;
        } else {
            fC = (kVar2.c() - kVar.c()) + kVar3.c();
            fD = (kVar2.d() - kVar.d()) + kVar3.d();
            f10 = f11;
        }
        return n.b(3.5f, 3.5f, f11, 3.5f, f10, f10, 3.5f, f11, kVar.c(), kVar.d(), kVar2.c(), kVar2.d(), fC, fD, kVar3.c(), kVar3.d());
    }

    private static kd.b h(kd.b bVar, n nVar, int i10) {
        return kd.k.b().d(bVar, i10, i10, nVar);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f A[RETURN] */
    private float i(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = 1;
        boolean z10 = Math.abs(i13 - i11) > Math.abs(i12 - i10);
        if (z10) {
            i15 = i10;
            i14 = i11;
            i17 = i12;
            i16 = i13;
        } else {
            i14 = i10;
            i15 = i11;
            i16 = i12;
            i17 = i13;
        }
        int iAbs = Math.abs(i16 - i14);
        int iAbs2 = Math.abs(i17 - i15);
        int i20 = 2;
        int i21 = (-iAbs) / 2;
        int i22 = i14 < i16 ? 1 : -1;
        int i23 = i15 < i17 ? 1 : -1;
        int i24 = i16 + i22;
        int i25 = i14;
        int i26 = i15;
        int i27 = 0;
        while (i25 != i24) {
            if ((i27 == i19 ? i19 : 0) == this.f32195a.h(z10 ? i26 : i25, z10 ? i25 : i26)) {
                if (i27 == 2) {
                    return ld.a.b(i25, i26, i14, i15);
                }
                i27++;
            }
            i21 += iAbs2;
            if (i21 > 0) {
                if (i26 == i17) {
                    i18 = 2;
                    if (i27 == i18) {
                        return ld.a.b(i24, i17, i14, i15);
                    }
                    return Float.NaN;
                }
                i26 += i23;
                i21 -= iAbs;
            }
            i25 += i22;
            i24 = i24;
            z10 = z10;
            i19 = 1;
            i20 = 2;
        }
        i24 = i24;
        i18 = i20;
        if (i27 == i18) {
            return ld.a.b(i24, i17, i14, i15);
        }
        return Float.NaN;
    }

    private float j(int i10, int i11, int i12, int i13) {
        float fN;
        float fK;
        float fI = i(i10, i11, i12, i13);
        int iN = i10 - (i12 - i10);
        int iK = 0;
        if (iN < 0) {
            fN = i10 / (i10 - iN);
            iN = 0;
        } else if (iN >= this.f32195a.n()) {
            fN = ((this.f32195a.n() - 1) - i10) / (iN - i10);
            iN = this.f32195a.n() - 1;
        } else {
            fN = 1.0f;
        }
        float f10 = i11;
        int i14 = (int) (f10 - ((i13 - i11) * fN));
        if (i14 < 0) {
            fK = f10 / (i11 - i14);
        } else if (i14 >= this.f32195a.k()) {
            fK = ((this.f32195a.k() - 1) - i11) / (i14 - i11);
            iK = this.f32195a.k() - 1;
        } else {
            iK = i14;
            fK = 1.0f;
        }
        return (fI + i(i10, i11, (int) (i10 + ((iN - i10) * fK)), iK)) - 1.0f;
    }

    protected final float a(k kVar, k kVar2, k kVar3) {
        return (b(kVar, kVar2) + b(kVar, kVar3)) / 2.0f;
    }

    public final f e(Map map) {
        this.f32196b = map == null ? null : (l) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        return g(new FinderPatternFinder(this.f32195a, this.f32196b).g(map));
    }

    protected final a f(float f10, int i10, int i11, float f11) throws NotFoundException {
        int i12 = (int) (f11 * f10);
        int iMax = Math.max(0, i10 - i12);
        int iMin = Math.min(this.f32195a.n() - 1, i10 + i12) - iMax;
        float f12 = 3.0f * f10;
        if (iMin < f12) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i11 - i12);
        int iMin2 = Math.min(this.f32195a.k() - 1, i11 + i12) - iMax2;
        if (iMin2 >= f12) {
            return new b(this.f32195a, iMax, iMax2, iMin, iMin2, f10, this.f32196b).c();
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected final f g(e eVar) throws NotFoundException, FormatException {
        a aVarF;
        d dVarB = eVar.b();
        d dVarC = eVar.c();
        d dVarA = eVar.a();
        float fA = a(dVarB, dVarC, dVarA);
        if (fA < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iC = c(dVarB, dVarC, dVarA, fA);
        g gVarG = g.g(iC);
        int iE = gVarG.e() - 7;
        if (gVarG.d().length <= 0) {
            aVarF = null;
            break;
        }
        float fC = (dVarC.c() - dVarB.c()) + dVarA.c();
        float fD = (dVarC.d() - dVarB.d()) + dVarA.d();
        float f10 = 1.0f - (3.0f / iE);
        int iC2 = (int) (dVarB.c() + ((fC - dVarB.c()) * f10));
        int iD = (int) (dVarB.d() + (f10 * (fD - dVarB.d())));
        int i10 = 4;
        while (true) {
            if (i10 > 16) {
                aVarF = null;
                break;
            }
            try {
                aVarF = f(fA, iC2, iD, i10);
                break;
            } catch (NotFoundException unused) {
                i10 <<= 1;
            }
        }
        return new f(h(this.f32195a, d(dVarB, dVarC, dVarA, aVarF, iC), iC), aVarF == null ? new k[]{dVarA, dVarB, dVarC} : new k[]{dVarA, dVarB, dVarC, aVarF});
    }
}
