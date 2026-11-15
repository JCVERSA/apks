package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.zip.Inflater;

final class im1 {
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    @Nullable
    private static ArrayList<hm1.a> a(ag1 ag1Var) {
        ArrayList<hm1.a> arrayList;
        boolean z;
        int i;
        ArrayList<hm1.a> arrayList2;
        hm1.a aVar;
        ag1 ag1Var2 = ag1Var;
        if (ag1Var.t() != 0) {
            return null;
        }
        ag1Var2.f(7);
        int iH = ag1Var.h();
        boolean z2 = true;
        if (iH == 1684433976) {
            ag1 ag1Var3 = new ag1();
            Inflater inflater = new Inflater(true);
            try {
                if (!f92.a(ag1Var2, ag1Var3, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                ag1Var2 = ag1Var3;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iH != 1918990112) {
            return null;
        }
        ArrayList<hm1.a> arrayList3 = new ArrayList<>();
        int iD = ag1Var2.d();
        int iE = ag1Var2.e();
        while (iD < iE) {
            int iH2 = ag1Var2.h() + iD;
            if (iH2 > iD && iH2 <= iE) {
                if (ag1Var2.h() == 1835365224) {
                    int iH3 = ag1Var2.h();
                    if (iH3 > 10000) {
                        arrayList2 = arrayList3;
                        z = z2;
                        i = iE;
                        aVar = null;
                    } else {
                        float[] fArr = new float[iH3];
                        for (int i2 = 0; i2 < iH3; i2++) {
                            fArr[i2] = Float.intBitsToFloat(ag1Var2.h());
                        }
                        int iH4 = ag1Var2.h();
                        if (iH4 > 32000) {
                            arrayList2 = arrayList3;
                        } else {
                            double dLog = Math.log(2.0d);
                            arrayList2 = arrayList3;
                            int iCeil = (int) Math.ceil(Math.log(((double) iH3) * 2.0d) / dLog);
                            byte[] bArrC = ag1Var2.c();
                            zf1 zf1Var = new zf1(bArrC.length, bArrC);
                            zf1Var.c(ag1Var2.d() * 8);
                            float[] fArr2 = new float[iH4 * 5];
                            int i3 = 5;
                            int[] iArr = new int[5];
                            int i4 = 0;
                            int i5 = 0;
                            while (true) {
                                if (i4 < iH4) {
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 < i3) {
                                            int i7 = iArr[i6];
                                            int iB = zf1Var.b(iCeil);
                                            int i8 = i7 + ((iB >> 1) ^ (-(iB & 1)));
                                            if (i8 < iH3 && i8 >= 0) {
                                                fArr2[i5] = fArr[i8];
                                                iArr[i6] = i8;
                                                i6++;
                                                i5++;
                                                i3 = 5;
                                            }
                                        } else {
                                            i4++;
                                            i3 = 5;
                                        }
                                    }
                                } else {
                                    zf1Var.c((zf1Var.e() + 7) & (-8));
                                    int i9 = 32;
                                    int iB2 = zf1Var.b(32);
                                    hm1.b[] bVarArr = new hm1.b[iB2];
                                    int i10 = 0;
                                    while (true) {
                                        if (i10 < iB2) {
                                            int iB3 = zf1Var.b(8);
                                            int iB4 = zf1Var.b(8);
                                            int iB5 = zf1Var.b(i9);
                                            if (iB5 <= 128000) {
                                                i = iE;
                                                int iCeil2 = (int) Math.ceil(Math.log(((double) iH4) * 2.0d) / dLog);
                                                float[] fArr3 = new float[iB5 * 3];
                                                float[] fArr4 = new float[iB5 * 2];
                                                int i11 = 0;
                                                int i12 = 0;
                                                while (true) {
                                                    if (i11 < iB5) {
                                                        int iB6 = zf1Var.b(iCeil2);
                                                        zf1 zf1Var2 = zf1Var;
                                                        float[] fArr5 = fArr4;
                                                        int i13 = iB2;
                                                        int i14 = i12 + ((iB6 >> 1) ^ (-(iB6 & 1)));
                                                        if (i14 < 0 || i14 >= iH4) {
                                                            z = true;
                                                        } else {
                                                            int i15 = i11 * 3;
                                                            int i16 = i14 * 5;
                                                            fArr3[i15] = fArr2[i16];
                                                            fArr3[i15 + 1] = fArr2[i16 + 1];
                                                            fArr3[i15 + 2] = fArr2[i16 + 2];
                                                            int i17 = i11 * 2;
                                                            fArr5[i17] = fArr2[i16 + 3];
                                                            fArr5[i17 + 1] = fArr2[i16 + 4];
                                                            i11++;
                                                            i12 = i14;
                                                            zf1Var = zf1Var2;
                                                            fArr4 = fArr5;
                                                            iB2 = i13;
                                                        }
                                                    } else {
                                                        bVarArr[i10] = new hm1.b(iB3, fArr3, fArr4, iB4);
                                                        i10++;
                                                        iE = i;
                                                        z2 = true;
                                                        iB2 = iB2;
                                                        i9 = 32;
                                                    }
                                                }
                                            }
                                            aVar = null;
                                        } else {
                                            z = z2;
                                            i = iE;
                                            aVar = new hm1.a(bVarArr);
                                        }
                                    }
                                }
                            }
                        }
                        z = z2;
                        i = iE;
                        aVar = null;
                    }
                    if (aVar != null) {
                        arrayList = arrayList2;
                        arrayList.add(aVar);
                    }
                } else {
                    arrayList = arrayList3;
                    z = z2;
                    i = iE;
                }
                ag1Var2.e(iH2);
                arrayList3 = arrayList;
                iD = iH2;
                iE = i;
                z2 = z;
            }
            return null;
        }
        return arrayList3;
    }

    @Nullable
    public static hm1 a(int i, byte[] bArr) {
        ArrayList<hm1.a> arrayListA;
        ag1 ag1Var = new ag1(bArr);
        try {
            ag1Var.f(4);
            int iH = ag1Var.h();
            ag1Var.e(0);
            if (iH == 1886547818) {
                ag1Var.f(8);
                int iD = ag1Var.d();
                int iE = ag1Var.e();
                while (true) {
                    if (iD < iE) {
                        int iH2 = ag1Var.h() + iD;
                        if (iH2 > iD && iH2 <= iE) {
                            int iH3 = ag1Var.h();
                            if (iH3 != 2037673328 && iH3 != 1836279920) {
                                ag1Var.e(iH2);
                                iD = iH2;
                            }
                            ag1Var.d(iH2);
                            arrayListA = a(ag1Var);
                        }
                    }
                    arrayListA = null;
                }
            } else {
                arrayListA = a(ag1Var);
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        if (arrayListA == null) {
            return null;
        }
        int size = arrayListA.size();
        if (size == 1) {
            hm1.a aVar = arrayListA.get(0);
            return new hm1(aVar, aVar, i);
        }
        if (size != 2) {
            return null;
        }
        return new hm1(arrayListA.get(0), arrayListA.get(1), i);
    }
}
