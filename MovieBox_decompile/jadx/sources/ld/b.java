package ld;

import com.google.zxing.NotFoundException;
import com.google.zxing.k;

public final class b {

    private final kd.b f65684a;

    private final int f65685b;

    private final int f65686c;

    private final int f65687d;

    private final int f65688e;

    private final int f65689f;

    private final int f65690g;

    public b(kd.b bVar) {
        this(bVar, 10, bVar.n() / 2, bVar.k() / 2);
    }

    private k[] a(k kVar, k kVar2, k kVar3, k kVar4) {
        float fC = kVar.c();
        float fD = kVar.d();
        float fC2 = kVar2.c();
        float fD2 = kVar2.d();
        float fC3 = kVar3.c();
        float fD3 = kVar3.d();
        float fC4 = kVar4.c();
        float fD4 = kVar4.d();
        return fC < ((float) this.f65686c) / 2.0f ? new k[]{new k(fC4 - 1.0f, fD4 + 1.0f), new k(fC2 + 1.0f, fD2 + 1.0f), new k(fC3 - 1.0f, fD3 - 1.0f), new k(fC + 1.0f, fD - 1.0f)} : new k[]{new k(fC4 + 1.0f, fD4 + 1.0f), new k(fC2 + 1.0f, fD2 - 1.0f), new k(fC3 - 1.0f, fD3 + 1.0f), new k(fC - 1.0f, fD - 1.0f)};
    }

    private boolean b(int i10, int i11, int i12, boolean z10) {
        if (z10) {
            while (i10 <= i11) {
                if (this.f65684a.h(i10, i12)) {
                    return true;
                }
                i10++;
            }
            return false;
        }
        while (i10 <= i11) {
            if (this.f65684a.h(i12, i10)) {
                return true;
            }
            i10++;
        }
        return false;
    }

    private k d(float f10, float f11, float f12, float f13) {
        int iC = a.c(a.a(f10, f11, f12, f13));
        float f14 = iC;
        float f15 = (f12 - f10) / f14;
        float f16 = (f13 - f11) / f14;
        for (int i10 = 0; i10 < iC; i10++) {
            float f17 = i10;
            int iC2 = a.c((f17 * f15) + f10);
            int iC3 = a.c((f17 * f16) + f11);
            if (this.f65684a.h(iC2, iC3)) {
                return new k(iC2, iC3);
            }
        }
        return null;
    }

    public k[] c() throws NotFoundException {
        int i10 = this.f65687d;
        int i11 = this.f65688e;
        int i12 = this.f65690g;
        int i13 = this.f65689f;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = true;
        while (z15) {
            boolean z16 = false;
            boolean zB = true;
            while (true) {
                if ((!zB && z11) || i11 >= this.f65686c) {
                    break;
                }
                zB = b(i12, i13, i11, false);
                if (zB) {
                    i11++;
                    z11 = true;
                    z16 = true;
                } else if (!z11) {
                    i11++;
                }
            }
            if (i11 < this.f65686c) {
                boolean zB2 = true;
                while (true) {
                    if ((!zB2 && z12) || i13 >= this.f65685b) {
                        break;
                    }
                    zB2 = b(i10, i11, i13, true);
                    if (zB2) {
                        i13++;
                        z12 = true;
                        z16 = true;
                    } else if (!z12) {
                        i13++;
                    }
                }
                if (i13 < this.f65685b) {
                    boolean zB3 = true;
                    while (true) {
                        if ((!zB3 && z13) || i10 < 0) {
                            break;
                        }
                        zB3 = b(i12, i13, i10, false);
                        if (zB3) {
                            i10--;
                            z13 = true;
                            z16 = true;
                        } else if (!z13) {
                            i10--;
                        }
                    }
                    if (i10 >= 0) {
                        z15 = z16;
                        boolean zB4 = true;
                        while (true) {
                            if ((!zB4 && z14) || i12 < 0) {
                                break;
                            }
                            zB4 = b(i10, i11, i12, true);
                            if (zB4) {
                                i12--;
                                z15 = true;
                                z14 = true;
                            } else if (!z14) {
                                i12--;
                            }
                        }
                        if (i12 < 0) {
                        }
                    }
                }
            }
            z10 = true;
            break;
        }
        if (z10) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i14 = i11 - i10;
        k kVarD = null;
        k kVarD2 = null;
        for (int i15 = 1; kVarD2 == null && i15 < i14; i15++) {
            kVarD2 = d(i10, i13 - i15, i10 + i15, i13);
        }
        if (kVarD2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k kVarD3 = null;
        for (int i16 = 1; kVarD3 == null && i16 < i14; i16++) {
            kVarD3 = d(i10, i12 + i16, i10 + i16, i12);
        }
        if (kVarD3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        k kVarD4 = null;
        for (int i17 = 1; kVarD4 == null && i17 < i14; i17++) {
            kVarD4 = d(i11, i12 + i17, i11 - i17, i12);
        }
        if (kVarD4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i18 = 1; kVarD == null && i18 < i14; i18++) {
            kVarD = d(i11, i13 - i18, i11 - i18, i13);
        }
        if (kVarD != null) {
            return a(kVarD, kVarD2, kVarD4, kVarD3);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public b(kd.b bVar, int i10, int i11, int i12) throws NotFoundException {
        this.f65684a = bVar;
        int iK = bVar.k();
        this.f65685b = iK;
        int iN = bVar.n();
        this.f65686c = iN;
        int i13 = i10 / 2;
        int i14 = i11 - i13;
        this.f65687d = i14;
        int i15 = i11 + i13;
        this.f65688e = i15;
        int i16 = i12 - i13;
        this.f65690g = i16;
        int i17 = i12 + i13;
        this.f65689f = i17;
        if (i16 < 0 || i14 < 0 || i17 >= iK || i15 >= iN) {
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
