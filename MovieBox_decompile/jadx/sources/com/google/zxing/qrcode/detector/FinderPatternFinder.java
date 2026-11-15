package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.k;
import com.google.zxing.l;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class FinderPatternFinder {

    private static final EstimatedModuleComparator f32179f = new EstimatedModuleComparator();

    private final kd.b f32180a;

    private boolean f32182c;

    private final l f32184e;

    private final List f32181b = new ArrayList();

    private final int[] f32183d = new int[5];

    private static final class EstimatedModuleComparator implements Comparator<d>, Serializable {
        private EstimatedModuleComparator() {
        }

        @Override
        public int compare(d dVar, d dVar2) {
            return Float.compare(dVar.i(), dVar2.i());
        }
    }

    public FinderPatternFinder(kd.b bVar, l lVar) {
        this.f32180a = bVar;
        this.f32184e = lVar;
    }

    private static float a(int[] iArr, int i10) {
        return ((i10 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    private boolean b(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int[] iArrK = k();
        int i15 = 0;
        while (i10 >= i15 && i11 >= i15 && this.f32180a.h(i11 - i15, i10 - i15)) {
            iArrK[2] = iArrK[2] + 1;
            i15++;
        }
        if (iArrK[2] == 0) {
            return false;
        }
        while (i10 >= i15 && i11 >= i15 && !this.f32180a.h(i11 - i15, i10 - i15)) {
            iArrK[1] = iArrK[1] + 1;
            i15++;
        }
        if (iArrK[1] == 0) {
            return false;
        }
        while (i10 >= i15 && i11 >= i15 && this.f32180a.h(i11 - i15, i10 - i15)) {
            iArrK[0] = iArrK[0] + 1;
            i15++;
        }
        if (iArrK[0] == 0) {
            return false;
        }
        int iK = this.f32180a.k();
        int iN = this.f32180a.n();
        int i16 = 1;
        while (true) {
            int i17 = i10 + i16;
            if (i17 >= iK || (i14 = i11 + i16) >= iN || !this.f32180a.h(i14, i17)) {
                break;
            }
            iArrK[2] = iArrK[2] + 1;
            i16++;
        }
        while (true) {
            int i18 = i10 + i16;
            if (i18 >= iK || (i13 = i11 + i16) >= iN || this.f32180a.h(i13, i18)) {
                break;
            }
            iArrK[3] = iArrK[3] + 1;
            i16++;
        }
        if (iArrK[3] == 0) {
            return false;
        }
        while (true) {
            int i19 = i10 + i16;
            if (i19 >= iK || (i12 = i11 + i16) >= iN || !this.f32180a.h(i12, i19)) {
                break;
            }
            iArrK[4] = iArrK[4] + 1;
            i16++;
        }
        if (iArrK[4] == 0) {
            return false;
        }
        return j(iArrK);
    }

    private float c(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        kd.b bVar = this.f32180a;
        int iN = bVar.n();
        int[] iArrK = k();
        int i17 = i10;
        while (i17 >= 0 && bVar.h(i17, i11)) {
            iArrK[2] = iArrK[2] + 1;
            i17--;
        }
        if (i17 < 0) {
            return Float.NaN;
        }
        while (i17 >= 0 && !bVar.h(i17, i11)) {
            int i18 = iArrK[1];
            if (i18 > i12) {
                break;
            }
            iArrK[1] = i18 + 1;
            i17--;
        }
        if (i17 < 0 || iArrK[1] > i12) {
            return Float.NaN;
        }
        while (i17 >= 0 && bVar.h(i17, i11) && (i16 = iArrK[0]) <= i12) {
            iArrK[0] = i16 + 1;
            i17--;
        }
        if (iArrK[0] > i12) {
            return Float.NaN;
        }
        int i19 = i10 + 1;
        while (i19 < iN && bVar.h(i19, i11)) {
            iArrK[2] = iArrK[2] + 1;
            i19++;
        }
        if (i19 == iN) {
            return Float.NaN;
        }
        while (i19 < iN && !bVar.h(i19, i11) && (i15 = iArrK[3]) < i12) {
            iArrK[3] = i15 + 1;
            i19++;
        }
        if (i19 == iN || iArrK[3] >= i12) {
            return Float.NaN;
        }
        while (i19 < iN && bVar.h(i19, i11) && (i14 = iArrK[4]) < i12) {
            iArrK[4] = i14 + 1;
            i19++;
        }
        int i20 = iArrK[4];
        if (i20 < i12 && Math.abs(((((iArrK[0] + iArrK[1]) + iArrK[2]) + iArrK[3]) + i20) - i13) * 5 < i13 && i(iArrK)) {
            return a(iArrK, i19);
        }
        return Float.NaN;
    }

    private float d(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        kd.b bVar = this.f32180a;
        int iK = bVar.k();
        int[] iArrK = k();
        int i17 = i10;
        while (i17 >= 0 && bVar.h(i11, i17)) {
            iArrK[2] = iArrK[2] + 1;
            i17--;
        }
        if (i17 < 0) {
            return Float.NaN;
        }
        while (i17 >= 0 && !bVar.h(i11, i17)) {
            int i18 = iArrK[1];
            if (i18 > i12) {
                break;
            }
            iArrK[1] = i18 + 1;
            i17--;
        }
        if (i17 < 0 || iArrK[1] > i12) {
            return Float.NaN;
        }
        while (i17 >= 0 && bVar.h(i11, i17) && (i16 = iArrK[0]) <= i12) {
            iArrK[0] = i16 + 1;
            i17--;
        }
        if (iArrK[0] > i12) {
            return Float.NaN;
        }
        int i19 = i10 + 1;
        while (i19 < iK && bVar.h(i11, i19)) {
            iArrK[2] = iArrK[2] + 1;
            i19++;
        }
        if (i19 == iK) {
            return Float.NaN;
        }
        while (i19 < iK && !bVar.h(i11, i19) && (i15 = iArrK[3]) < i12) {
            iArrK[3] = i15 + 1;
            i19++;
        }
        if (i19 == iK || iArrK[3] >= i12) {
            return Float.NaN;
        }
        while (i19 < iK && bVar.h(i11, i19) && (i14 = iArrK[4]) < i12) {
            iArrK[4] = i14 + 1;
            i19++;
        }
        int i20 = iArrK[4];
        if (i20 < i12 && Math.abs(((((iArrK[0] + iArrK[1]) + iArrK[2]) + iArrK[3]) + i20) - i13) * 5 < i13 * 2 && i(iArrK)) {
            return a(iArrK, i19);
        }
        return Float.NaN;
    }

    protected static void e(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    protected static void f(int[] iArr) {
        iArr[0] = iArr[2];
        iArr[1] = iArr[3];
        iArr[2] = iArr[4];
        iArr[3] = 1;
        iArr[4] = 0;
    }

    private int h() {
        if (this.f32181b.size() <= 1) {
            return 0;
        }
        d dVar = null;
        for (d dVar2 : this.f32181b) {
            if (dVar2.h() >= 2) {
                if (dVar != null) {
                    this.f32182c = true;
                    return ((int) (Math.abs(dVar.c() - dVar2.c()) - Math.abs(dVar.d() - dVar2.d()))) / 2;
                }
                dVar = dVar2;
            }
        }
        return 0;
    }

    protected static boolean i(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            i10 += i12;
        }
        if (i10 < 7) {
            return false;
        }
        float f10 = i10 / 7.0f;
        float f11 = f10 / 2.0f;
        return Math.abs(f10 - ((float) iArr[0])) < f11 && Math.abs(f10 - ((float) iArr[1])) < f11 && Math.abs((f10 * 3.0f) - ((float) iArr[2])) < 3.0f * f11 && Math.abs(f10 - ((float) iArr[3])) < f11 && Math.abs(f10 - ((float) iArr[4])) < f11;
    }

    protected static boolean j(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            i10 += i12;
        }
        if (i10 < 7) {
            return false;
        }
        float f10 = i10 / 7.0f;
        float f11 = f10 / 1.333f;
        return Math.abs(f10 - ((float) iArr[0])) < f11 && Math.abs(f10 - ((float) iArr[1])) < f11 && Math.abs((f10 * 3.0f) - ((float) iArr[2])) < 3.0f * f11 && Math.abs(f10 - ((float) iArr[3])) < f11 && Math.abs(f10 - ((float) iArr[4])) < f11;
    }

    private int[] k() {
        e(this.f32183d);
        return this.f32183d;
    }

    private boolean m() {
        int size = this.f32181b.size();
        float fAbs = 0.0f;
        int i10 = 0;
        float fI = 0.0f;
        for (d dVar : this.f32181b) {
            if (dVar.h() >= 2) {
                i10++;
                fI += dVar.i();
            }
        }
        if (i10 < 3) {
            return false;
        }
        float f10 = fI / size;
        Iterator it = this.f32181b.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(((d) it.next()).i() - f10);
        }
        return fAbs <= fI * 0.05f;
    }

    private d[] n() throws NotFoundException {
        double d10;
        if (this.f32181b.size() < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        Iterator it = this.f32181b.iterator();
        while (it.hasNext()) {
            if (((d) it.next()).h() < 2) {
                it.remove();
            }
        }
        Collections.sort(this.f32181b, f32179f);
        d[] dVarArr = new d[3];
        int i10 = 0;
        double d11 = Double.MAX_VALUE;
        while (i10 < this.f32181b.size() - 2) {
            d dVar = (d) this.f32181b.get(i10);
            float fI = dVar.i();
            i10++;
            int i11 = i10;
            while (i11 < this.f32181b.size() - 1) {
                d dVar2 = (d) this.f32181b.get(i11);
                double dO = o(dVar, dVar2);
                i11++;
                for (int i12 = i11; i12 < this.f32181b.size(); i12++) {
                    d dVar3 = (d) this.f32181b.get(i12);
                    if (dVar3.i() <= 1.4f * fI) {
                        double dO2 = o(dVar2, dVar3);
                        double dO3 = o(dVar, dVar3);
                        if (dO >= dO2) {
                            if (dO2 >= dO3) {
                                d10 = dO3;
                                dO3 = dO2;
                            } else if (dO < dO3) {
                                d10 = dO2;
                                dO2 = dO3;
                                dO3 = dO;
                            } else {
                                d10 = dO2;
                            }
                            dO2 = dO;
                        } else if (dO2 <= dO3) {
                            d10 = dO;
                            dO2 = dO3;
                            dO3 = dO2;
                        } else if (dO < dO3) {
                            d10 = dO;
                        } else {
                            d10 = dO3;
                            dO3 = dO;
                        }
                        double dAbs = Math.abs(dO2 - (dO3 * 2.0d)) + Math.abs(dO2 - (d10 * 2.0d));
                        if (dAbs < d11) {
                            dVarArr[0] = dVar;
                            dVarArr[1] = dVar2;
                            dVarArr[2] = dVar3;
                            d11 = dAbs;
                        }
                    }
                }
            }
        }
        if (d11 != Double.MAX_VALUE) {
            return dVarArr;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static double o(d dVar, d dVar2) {
        double dC = dVar.c() - dVar2.c();
        double d10 = dVar.d() - dVar2.d();
        return (dC * dC) + (d10 * d10);
    }

    final e g(Map map) throws NotFoundException {
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        int iK = this.f32180a.k();
        int iN = this.f32180a.n();
        int i10 = (iK * 3) / 388;
        if (i10 < 3 || z10) {
            i10 = 3;
        }
        int[] iArr = new int[5];
        int i11 = i10 - 1;
        boolean zM = false;
        while (i11 < iK && !zM) {
            e(iArr);
            int i12 = 0;
            int i13 = 0;
            while (i12 < iN) {
                if (this.f32180a.h(i12, i11)) {
                    if ((i13 & 1) == 1) {
                        i13++;
                    }
                    iArr[i13] = iArr[i13] + 1;
                } else if ((i13 & 1) != 0) {
                    iArr[i13] = iArr[i13] + 1;
                } else if (i13 != 4) {
                    i13++;
                    iArr[i13] = iArr[i13] + 1;
                } else if (i(iArr) && l(iArr, i11, i12)) {
                    if (this.f32182c) {
                        zM = m();
                    } else {
                        int iH = h();
                        int i14 = iArr[2];
                        if (iH > i14) {
                            i11 += (iH - i14) - 2;
                            i12 = iN - 1;
                        }
                    }
                    e(iArr);
                    i10 = 2;
                    i13 = 0;
                } else {
                    f(iArr);
                    i13 = 3;
                }
                i12++;
            }
            if (i(iArr) && l(iArr, i11, iN)) {
                i10 = iArr[0];
                if (this.f32182c) {
                    zM = m();
                }
            }
            i11 += i10;
        }
        d[] dVarArrN = n();
        k.e(dVarArrN);
        return new e(dVarArrN);
    }

    protected final boolean l(int[] iArr, int i10, int i11) {
        int i12 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iA = (int) a(iArr, i11);
        float fD = d(i10, iA, iArr[2], i12);
        if (!Float.isNaN(fD)) {
            int i13 = (int) fD;
            float fC = c(iA, i13, iArr[2], i12);
            if (!Float.isNaN(fC) && b(i13, (int) fC)) {
                float f10 = i12 / 7.0f;
                for (int i14 = 0; i14 < this.f32181b.size(); i14++) {
                    d dVar = (d) this.f32181b.get(i14);
                    if (dVar.f(f10, fD, fC)) {
                        this.f32181b.set(i14, dVar.g(fD, fC, f10));
                        return true;
                    }
                }
                d dVar2 = new d(fC, fD, f10);
                this.f32181b.add(dVar2);
                l lVar = this.f32184e;
                if (lVar != null) {
                    lVar.a(dVar2);
                }
                return true;
            }
        }
        return false;
    }
}
