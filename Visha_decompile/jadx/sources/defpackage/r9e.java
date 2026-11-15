package defpackage;

import com.google.android.gms.internal.ads.zzaz;
import java.util.Collections;
import java.util.List;

public final class r9e {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final float j;
    public final int k;
    public final String l;
    public final axh m;

    public r9e(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, float f, int i11, String str, axh axhVar) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i5;
        this.e = i6;
        this.f = i7;
        this.g = i8;
        this.h = i9;
        this.i = i10;
        this.j = f;
        this.k = i11;
        this.l = str;
        this.m = axhVar;
    }

    public static r9e a(u4h u4hVar) {
        return c(u4hVar, false, null);
    }

    public static r9e b(u4h u4hVar, axh axhVar) {
        return c(u4hVar, true, axhVar);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x029b  */
    /* JADX WARN: Code duplicated, block: B:116:0x029e  */
    public static r9e c(u4h u4hVar, boolean z, axh axhVar) throws zzaz {
        boolean z2;
        String str;
        int i;
        int i2;
        cuh cuhVar;
        int i3;
        int i4 = 4;
        if (z) {
            try {
                u4hVar.m(4);
            } catch (ArrayIndexOutOfBoundsException e) {
                e = e;
                z2 = true;
                if (z2 != z) {
                    str = "HEVC config";
                } else {
                    str = "L-HEVC config";
                }
                throw zzaz.zza("Error parsing".concat(str), e);
            }
        } else {
            try {
                u4hVar.m(21);
            } catch (ArrayIndexOutOfBoundsException e2) {
                e = e2;
                z2 = true;
                if (z2 != z) {
                    str = "HEVC config";
                } else {
                    str = "L-HEVC config";
                }
                throw zzaz.zza("Error parsing".concat(str), e);
            }
        }
        int iG = u4hVar.G() & 3;
        int iG2 = u4hVar.G();
        int iW = u4hVar.w();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < iG2; i7++) {
            u4hVar.m(1);
            int iK = u4hVar.K();
            for (int i8 = 0; i8 < iK; i8++) {
                int iK2 = u4hVar.K();
                i6 += iK2 + 4;
                u4hVar.m(iK2);
            }
        }
        u4hVar.l(iW);
        byte[] bArr = new byte[i6];
        axh axhVar2 = axhVar;
        int i9 = 0;
        float f = 1.0f;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        int i16 = -1;
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        String strD = null;
        int i20 = 0;
        while (i20 < iG2) {
            int iG3 = u4hVar.G() & 63;
            int iK3 = u4hVar.K();
            int i21 = i5;
            axh axhVarE = axhVar2;
            while (i21 < iK3) {
                int iK4 = u4hVar.K();
                int i22 = iG2;
                System.arraycopy(jzh.a, i5, bArr, i9, i4);
                int i23 = i9 + 4;
                System.arraycopy(u4hVar.n(), u4hVar.w(), bArr, i23, iK4);
                int i24 = 32;
                if (iG3 == 32) {
                    if (i21 == 0) {
                        axhVarE = jzh.e(bArr, i23, i23 + iK4);
                        i = iK3;
                        iG3 = iG3;
                        i3 = 0;
                        i21 = 0;
                    }
                    i9 = i23 + iK4;
                    u4hVar.m(iK4);
                    i21++;
                    i5 = i3;
                    iG2 = i22;
                    iK3 = i;
                    iG3 = iG3;
                    i4 = 4;
                } else {
                    i24 = iG3;
                }
                i = iK3;
                int i25 = 8;
                if (i24 != 33) {
                    iG3 = iG3;
                    if (i24 == 39 && i21 == 0) {
                        int i26 = i9 + 6;
                        int i27 = (i23 + iK4) - 1;
                        while (true) {
                            byte b = bArr[i27];
                            if (b != 0) {
                                if (b != 0 && i27 > i26) {
                                    g0i g0iVar = new g0i(bArr, i26, i27 + 1);
                                    while (true) {
                                        if (g0iVar.g(16)) {
                                            int iA = g0iVar.a(i25);
                                            int i28 = 0;
                                            while (iA == 255) {
                                                i28 += 255;
                                                iA = g0iVar.a(i25);
                                            }
                                            int i29 = i28 + iA;
                                            int iA2 = g0iVar.a(i25);
                                            int i30 = 0;
                                            while (iA2 == 255) {
                                                i30 += 255;
                                                iA2 = g0iVar.a(8);
                                            }
                                            int i31 = i30 + iA2;
                                            if (i31 != 0 && g0iVar.g(i31)) {
                                                if (i29 == 176) {
                                                    int iC = g0iVar.c();
                                                    boolean zH = g0iVar.h();
                                                    int iC2 = zH ? g0iVar.c() : 0;
                                                    int iC3 = g0iVar.c();
                                                    int i32 = 0;
                                                    int iC4 = -1;
                                                    int iC5 = -1;
                                                    int i33 = -1;
                                                    int iA3 = -1;
                                                    int i34 = -1;
                                                    int iA4 = -1;
                                                    while (true) {
                                                        if (i32 <= iC3) {
                                                            iC4 = g0iVar.c();
                                                            iC5 = g0iVar.c();
                                                            i2 = i21;
                                                            int iA5 = g0iVar.a(6);
                                                            if (iA5 != 63) {
                                                                iA3 = g0iVar.a(iA5 == 0 ? Math.max(0, iC - 30) : Math.max(0, (iA5 + iC) - 31));
                                                                if (zH) {
                                                                    int iA6 = g0iVar.a(6);
                                                                    if (iA6 != 63) {
                                                                        iA4 = g0iVar.a(iA6 == 0 ? Math.max(0, iC2 - 30) : Math.max(0, (iA6 + iC2) - 31));
                                                                        i34 = iA6;
                                                                    }
                                                                } else {
                                                                    zH = zH;
                                                                }
                                                                if (g0iVar.h()) {
                                                                    g0iVar.f(10);
                                                                }
                                                                i32++;
                                                                i33 = iA5;
                                                                i21 = i2;
                                                                zH = zH;
                                                                i10 = i10;
                                                            }
                                                            cuhVar = null;
                                                        } else {
                                                            i2 = i21;
                                                            i10 = i10;
                                                            cuhVar = new cuh(iC, iC2, iC3 + 1, iC4, iC5, i33, iA3, i34, iA4);
                                                        }
                                                    }
                                                } else {
                                                    i25 = 8;
                                                }
                                            }
                                            i10 = i10;
                                            cuhVar = null;
                                        }
                                    }
                                }
                                if (cuhVar == null && axhVarE != null) {
                                    i3 = 0;
                                    if (cuhVar.a == ((soh) axhVarE.a.get(0)).b) {
                                        i21 = i2;
                                        i10 = i10;
                                        i18 = 4;
                                    } else {
                                        i18 = 5;
                                    }
                                }
                                i21 = i2;
                                i10 = i10;
                            } else if (i27 > i26) {
                                i27--;
                            }
                            i2 = i21;
                            i10 = i10;
                            cuhVar = null;
                            if (cuhVar == null) {
                            }
                        }
                    } else {
                        i2 = i21;
                        i10 = i10;
                    }
                    i3 = 0;
                    i21 = i2;
                    i10 = i10;
                } else if (i21 == 0) {
                    uuh uuhVarD = jzh.d(bArr, i23, i23 + iK4, axhVarE);
                    int i35 = uuhVarD.a + 1;
                    int i36 = uuhVarD.e;
                    int i37 = uuhVarD.f;
                    int i38 = uuhVarD.c + 8;
                    int i39 = uuhVarD.d + 8;
                    int i40 = uuhVarD.i;
                    int i41 = uuhVarD.j;
                    int i42 = uuhVarD.k;
                    float f2 = uuhVarD.g;
                    int i43 = uuhVarD.h;
                    tqh tqhVar = uuhVarD.b;
                    if (tqhVar != null) {
                        strD = vcg.d(tqhVar.a, tqhVar.b, tqhVar.c, tqhVar.d, tqhVar.e, tqhVar.f);
                    }
                    i10 = i35;
                    i11 = i36;
                    i3 = 0;
                    i19 = i43;
                    i17 = i42;
                    i15 = i40;
                    f = f2;
                    i16 = i41;
                    i14 = i39;
                    i13 = i38;
                    i12 = i37;
                } else {
                    iG3 = iG3;
                    i2 = i21;
                    i10 = i10;
                    i3 = 0;
                    i21 = i2;
                    i10 = i10;
                }
                i9 = i23 + iK4;
                u4hVar.m(iK4);
                i21++;
                i5 = i3;
                iG2 = i22;
                iK3 = i;
                iG3 = iG3;
                i4 = 4;
            }
            i20++;
            axhVar2 = axhVarE;
            i4 = 4;
        }
        return new r9e(i6 == 0 ? Collections.emptyList() : Collections.singletonList(bArr), iG + 1, i10, i11, i12, i13, i14, i15, i16, i17, i18, f, i19, strD, axhVar2);
    }
}
