package com.google.zxing.qrcode.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.l;
import java.util.ArrayList;
import java.util.List;

final class b {

    private final kd.b f32186a;

    private final int f32188c;

    private final int f32189d;

    private final int f32190e;

    private final int f32191f;

    private final float f32192g;

    private final l f32194i;

    private final List f32187b = new ArrayList(5);

    private final int[] f32193h = new int[3];

    b(kd.b bVar, int i10, int i11, int i12, int i13, float f10, l lVar) {
        this.f32186a = bVar;
        this.f32188c = i10;
        this.f32189d = i11;
        this.f32190e = i12;
        this.f32191f = i13;
        this.f32192g = f10;
        this.f32194i = lVar;
    }

    private static float a(int[] iArr, int i10) {
        return (i10 - iArr[2]) - (iArr[1] / 2.0f);
    }

    private float b(int i10, int i11, int i12, int i13) {
        kd.b bVar = this.f32186a;
        int iK = bVar.k();
        int[] iArr = this.f32193h;
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        int i14 = i10;
        while (i14 >= 0 && bVar.h(i11, i14)) {
            int i15 = iArr[1];
            if (i15 > i12) {
                break;
            }
            iArr[1] = i15 + 1;
            i14--;
        }
        if (i14 < 0 || iArr[1] > i12) {
            return Float.NaN;
        }
        while (i14 >= 0 && !bVar.h(i11, i14)) {
            int i16 = iArr[0];
            if (i16 > i12) {
                break;
            }
            iArr[0] = i16 + 1;
            i14--;
        }
        if (iArr[0] > i12) {
            return Float.NaN;
        }
        int i17 = i10 + 1;
        while (i17 < iK && bVar.h(i11, i17)) {
            int i18 = iArr[1];
            if (i18 > i12) {
                break;
            }
            iArr[1] = i18 + 1;
            i17++;
        }
        if (i17 == iK || iArr[1] > i12) {
            return Float.NaN;
        }
        while (i17 < iK && !bVar.h(i11, i17)) {
            int i19 = iArr[2];
            if (i19 > i12) {
                break;
            }
            iArr[2] = i19 + 1;
            i17++;
        }
        int i20 = iArr[2];
        if (i20 <= i12 && Math.abs(((iArr[0] + iArr[1]) + i20) - i13) * 5 < i13 * 2 && d(iArr)) {
            return a(iArr, i17);
        }
        return Float.NaN;
    }

    private boolean d(int[] iArr) {
        float f10 = this.f32192g;
        float f11 = f10 / 2.0f;
        for (int i10 = 0; i10 < 3; i10++) {
            if (Math.abs(f10 - iArr[i10]) >= f11) {
                return false;
            }
        }
        return true;
    }

    private a e(int[] iArr, int i10, int i11) {
        int i12 = iArr[0] + iArr[1] + iArr[2];
        float fA = a(iArr, i11);
        float fB = b(i10, (int) fA, iArr[1] * 2, i12);
        if (Float.isNaN(fB)) {
            return null;
        }
        float f10 = ((iArr[0] + iArr[1]) + iArr[2]) / 3.0f;
        for (a aVar : this.f32187b) {
            if (aVar.f(f10, fB, fA)) {
                return aVar.g(fB, fA, f10);
            }
        }
        a aVar2 = new a(fA, fB, f10);
        this.f32187b.add(aVar2);
        l lVar = this.f32194i;
        if (lVar == null) {
            return null;
        }
        lVar.a(aVar2);
        return null;
    }

    a c() throws NotFoundException {
        a aVarE;
        a aVarE2;
        int i10 = this.f32188c;
        int i11 = this.f32191f;
        int i12 = this.f32190e + i10;
        int i13 = this.f32189d + (i11 / 2);
        int[] iArr = new int[3];
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = ((i14 & 1) == 0 ? (i14 + 1) / 2 : -((i14 + 1) / 2)) + i13;
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            int i16 = i10;
            while (i16 < i12 && !this.f32186a.h(i16, i15)) {
                i16++;
            }
            int i17 = 0;
            while (i16 < i12) {
                if (!this.f32186a.h(i16, i15)) {
                    if (i17 == 1) {
                        i17++;
                    }
                    iArr[i17] = iArr[i17] + 1;
                } else if (i17 == 1) {
                    iArr[1] = iArr[1] + 1;
                } else if (i17 != 2) {
                    i17++;
                    iArr[i17] = iArr[i17] + 1;
                } else {
                    if (d(iArr) && (aVarE2 = e(iArr, i15, i16)) != null) {
                        return aVarE2;
                    }
                    iArr[0] = iArr[2];
                    iArr[1] = 1;
                    iArr[2] = 0;
                    i17 = 1;
                }
                i16++;
            }
            if (d(iArr) && (aVarE = e(iArr, i15, i12)) != null) {
                return aVarE;
            }
        }
        if (this.f32187b.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (a) this.f32187b.get(0);
    }
}
