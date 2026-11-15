package defpackage;

import com.google.android.gms.internal.ads.zzfww;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public abstract class jzh {
    public static final byte[] a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    public static final Object c = new Object();
    public static int[] d = new int[10];

    public static int a(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        n7g.f(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            i(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            i(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            i(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b2 = bArr[i5];
            if ((b2 & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b2 == 1) {
                    i(zArr);
                    return i6;
                }
                i5 = i6;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    public static int b(erj erjVar) {
        String str = erjVar.o;
        if (Objects.equals(str, "video/avc")) {
            return 1;
        }
        return (Objects.equals(str, "video/hevc") || bue.g(erjVar.k, "video/hevc")) ? 2 : 0;
    }

    public static int c(byte[] bArr, int i) {
        int i2;
        synchronized (c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    try {
                        if (i3 >= i - 2) {
                            i3 = i;
                            break;
                        }
                        int i5 = i3 + 1;
                        if (bArr[i3] == 0 && bArr[i5] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3 = i5;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = d;
                    int length = iArr.length;
                    if (length <= i4) {
                        d = Arrays.copyOf(iArr, length + length);
                    }
                    d[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = d[i8] - i6;
                System.arraycopy(bArr, i6, bArr, i7, i9);
                int i10 = i7 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i7 = i10 + 2;
                bArr[i11] = 0;
                i6 += i9 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i7, i2 - i7);
        }
        return i2;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x004a  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ad  */
    public static uuh d(byte[] bArr, int i, int i2, axh axhVar) {
        boolean z;
        int i3;
        int i4;
        int iC;
        int iC2;
        int i5;
        int i6;
        int iC3;
        int i7;
        int i8;
        float f;
        int i9;
        int i10;
        int i11;
        int iB;
        int i12;
        ewh ewhVar;
        int iA;
        int i13;
        ith ithVar;
        rph rphVarM = m(new g0i(bArr, i, i2));
        g0i g0iVar = new g0i(bArr, i + 2, i2);
        g0iVar.f(4);
        int iA2 = g0iVar.a(3);
        int i14 = rphVarM.b;
        if (i14 == 0 || iA2 != 7) {
            z = false;
        } else {
            iA2 = 7;
            z = true;
        }
        if (axhVar != null) {
            zzfww zzfwwVar = axhVar.a;
            if (zzfwwVar.isEmpty()) {
                i3 = 0;
            } else {
                i3 = ((soh) zzfwwVar.get(Math.min(i14, zzfwwVar.size() - 1))).a;
            }
        } else {
            i3 = 0;
        }
        tqh tqhVarN = null;
        if (!z) {
            g0iVar.e();
            tqhVarN = n(g0iVar, true, iA2, null);
        } else if (axhVar != null) {
            trh trhVar = axhVar.b;
            int i15 = trhVar.b[i3];
            zzfww zzfwwVar2 = trhVar.a;
            if (zzfwwVar2.size() > i15) {
                tqhVarN = (tqh) zzfwwVar2.get(i15);
            }
        }
        int iC4 = g0iVar.c();
        if (z) {
            int iA3 = g0iVar.h() ? g0iVar.a(8) : -1;
            if (axhVar == null || (ithVar = axhVar.c) == null) {
                iC2 = 0;
                i5 = 0;
                iC3 = 0;
                iC = 0;
                i6 = 0;
            } else {
                if (iA3 == -1) {
                    iA3 = ithVar.b[i3];
                }
                if (iA3 != -1) {
                    zzfww zzfwwVar3 = ithVar.a;
                    if (zzfwwVar3.size() > iA3) {
                        osh oshVar = (osh) zzfwwVar3.get(iA3);
                        int i16 = oshVar.a;
                        i6 = oshVar.d;
                        iC = oshVar.e;
                        iC2 = oshVar.b;
                        iC3 = oshVar.c;
                        i5 = i16;
                    } else {
                        iC2 = 0;
                        i5 = 0;
                        iC3 = 0;
                        iC = 0;
                        i6 = 0;
                    }
                } else {
                    iC2 = 0;
                    i5 = 0;
                    iC3 = 0;
                    iC = 0;
                    i6 = 0;
                }
            }
        } else {
            int iC5 = g0iVar.c();
            if (iC5 == 3) {
                g0iVar.e();
                i4 = 3;
            } else {
                i4 = iC5;
            }
            int iC6 = g0iVar.c();
            iC = g0iVar.c();
            if (g0iVar.h()) {
                int iC7 = g0iVar.c();
                int iC8 = g0iVar.c();
                int iC9 = g0iVar.c();
                int iC10 = g0iVar.c();
                iC6 = l(iC6, i4, iC7, iC8);
                iC = k(iC, i4, iC9, iC10);
            }
            iC2 = g0iVar.c();
            i5 = iC5;
            i6 = iC6;
            iC3 = g0iVar.c();
        }
        int iC11 = g0iVar.c();
        if (z) {
            i7 = i6;
            i8 = -1;
        } else {
            int i17 = true != g0iVar.h() ? iA2 : 0;
            int iMax = -1;
            while (i17 <= iA2) {
                g0iVar.c();
                iMax = Math.max(g0iVar.c(), iMax);
                g0iVar.c();
                i17++;
                i6 = i6;
            }
            i7 = i6;
            i8 = iMax;
        }
        g0iVar.c();
        g0iVar.c();
        g0iVar.c();
        g0iVar.c();
        g0iVar.c();
        g0iVar.c();
        if (g0iVar.h()) {
            int i18 = 6;
            if (z && g0iVar.h()) {
                g0iVar.f(6);
            } else if (g0iVar.h()) {
                int i19 = 0;
                for (int i20 = 4; i19 < i20; i20 = 4) {
                    int i21 = 0;
                    while (i21 < i18) {
                        if (g0iVar.h()) {
                            int iMin = Math.min(64, 1 << ((i19 + i19) + 4));
                            if (i19 > 1) {
                                g0iVar.b();
                            }
                            for (int i22 = 0; i22 < iMin; i22++) {
                                g0iVar.b();
                            }
                        } else {
                            g0iVar.c();
                        }
                        i21 += i19 == 3 ? 3 : 1;
                        iC4 = iC4;
                        i18 = 6;
                    }
                    i19++;
                    i18 = 6;
                }
            }
        }
        int i23 = iC4;
        g0iVar.f(2);
        if (g0iVar.h()) {
            g0iVar.f(8);
            g0iVar.c();
            g0iVar.c();
            g0iVar.e();
        }
        int iC12 = g0iVar.c();
        int[] iArr = new int[0];
        int[] iArrCopyOf = new int[0];
        int i24 = 0;
        int i25 = iC3;
        int i26 = -1;
        int i27 = -1;
        while (i24 < iC12) {
            if (i24 == 0 || !g0iVar.h()) {
                int iC13 = g0iVar.c();
                int iC14 = g0iVar.c();
                int[] iArr2 = new int[iC13];
                int i28 = 0;
                while (i28 < iC13) {
                    iArr2[i28] = (i28 > 0 ? iArr2[i28 - 1] : 0) - (g0iVar.c() + 1);
                    g0iVar.e();
                    i28++;
                }
                int[] iArr3 = new int[iC14];
                int i29 = 0;
                while (i29 < iC14) {
                    iArr3[i29] = (i29 > 0 ? iArr3[i29 - 1] : 0) + g0iVar.c() + 1;
                    g0iVar.e();
                    i29++;
                }
                i26 = iC13;
                i27 = iC14;
                iArr = iArr2;
                iArrCopyOf = iArr3;
            } else {
                int i30 = i26 + i27;
                boolean zH = g0iVar.h();
                boolean z2 = true;
                int iC15 = g0iVar.c() + 1;
                int i31 = 1 - ((zH ? 1 : 0) + (zH ? 1 : 0));
                int i32 = i30 + 1;
                boolean[] zArr = new boolean[i32];
                int i33 = 0;
                while (i33 <= i30) {
                    if (g0iVar.h()) {
                        zArr[i33] = z2;
                    } else {
                        zArr[i33] = g0iVar.h();
                    }
                    i33++;
                    z2 = true;
                }
                int i34 = i27 - 1;
                int[] iArr4 = new int[i32];
                int[] iArr5 = new int[i32];
                int i35 = 0;
                while (true) {
                    i13 = i31 * iC15;
                    if (i34 < 0) {
                        break;
                    }
                    int i36 = iArrCopyOf[i34] + i13;
                    if (i36 < 0 && zArr[i26 + i34]) {
                        iArr4[i35] = i36;
                        i35++;
                    }
                    i34--;
                }
                if (i13 < 0 && zArr[i30]) {
                    iArr4[i35] = i13;
                    i35++;
                }
                int i37 = i35;
                for (int i38 = 0; i38 < i26; i38++) {
                    int i39 = iArr[i38] + i13;
                    if (i39 < 0 && zArr[i38]) {
                        iArr4[i37] = i39;
                        i37++;
                    }
                }
                int[] iArrCopyOf2 = Arrays.copyOf(iArr4, i37);
                int i40 = 0;
                for (int i41 = i26 - 1; i41 >= 0; i41--) {
                    int i42 = iArr[i41] + i13;
                    if (i42 > 0 && zArr[i41]) {
                        iArr5[i40] = i42;
                        i40++;
                    }
                }
                if (i13 > 0 && zArr[i30]) {
                    iArr5[i40] = i13;
                    i40++;
                }
                int i43 = i40;
                for (int i44 = 0; i44 < i27; i44++) {
                    int i45 = iArrCopyOf[i44] + i13;
                    if (i45 > 0 && zArr[i26 + i44]) {
                        iArr5[i43] = i45;
                        i43++;
                    }
                }
                iArrCopyOf = Arrays.copyOf(iArr5, i43);
                i26 = i37;
                i27 = i43;
                iArr = iArrCopyOf2;
            }
            i24++;
            iC12 = iC12;
            iA2 = iA2;
            rphVarM = rphVarM;
            iC2 = iC2;
            i5 = i5;
            tqhVarN = tqhVarN;
        }
        int i46 = iC2;
        int i47 = iA2;
        rph rphVar = rphVarM;
        int i48 = i5;
        tqh tqhVar = tqhVarN;
        if (g0iVar.h()) {
            int iC16 = g0iVar.c();
            for (int i49 = 0; i49 < iC16; i49++) {
                g0iVar.f(iC11 + 5);
            }
        }
        g0iVar.f(2);
        float f2 = 1.0f;
        if (g0iVar.h()) {
            if (g0iVar.h()) {
                int iA4 = g0iVar.a(8);
                if (iA4 == 255) {
                    int iA5 = g0iVar.a(16);
                    int iA6 = g0iVar.a(16);
                    if (iA5 != 0 && iA6 != 0) {
                        f2 = iA5 / iA6;
                    }
                } else if (iA4 < 17) {
                    f2 = b[iA4];
                } else {
                    zrg.f("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iA4);
                }
            }
            if (g0iVar.h()) {
                g0iVar.e();
            }
            if (g0iVar.h()) {
                g0iVar.f(3);
                i12 = true != g0iVar.h() ? 2 : 1;
                if (g0iVar.h()) {
                    int iA7 = g0iVar.a(8);
                    int iA8 = g0iVar.a(8);
                    g0iVar.f(8);
                    iA = h6j.a(iA7);
                    iB = h6j.b(iA8);
                } else {
                    iB = -1;
                    iA = -1;
                }
            } else {
                if (axhVar != null && (ewhVar = axhVar.d) != null) {
                    int i50 = ewhVar.b[i3];
                    zzfww zzfwwVar4 = ewhVar.a;
                    if (zzfwwVar4.size() > i50) {
                        jvh jvhVar = (jvh) zzfwwVar4.get(i50);
                        iA = jvhVar.a;
                        int i51 = jvhVar.b;
                        iB = jvhVar.c;
                        i12 = i51;
                    }
                }
                iB = -1;
                i12 = -1;
                iA = -1;
            }
            if (g0iVar.h()) {
                g0iVar.c();
                g0iVar.c();
            }
            g0iVar.e();
            if (g0iVar.h()) {
                iC += iC;
            }
            i11 = iB;
            f = f2;
            i9 = i12;
            i10 = iA;
        } else {
            f = 1.0f;
            i9 = -1;
            i10 = -1;
            i11 = -1;
        }
        return new uuh(rphVar, i47, tqhVar, i48, i46, i25, i23, i7, iC, f, i8, i10, i9, i11);
    }

    /* JADX WARN: Code duplicated, block: B:444:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x010a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0123  */
    /* JADX WARN: Code duplicated, block: B:69:0x0137  */
    /* JADX WARN: Code duplicated, block: B:71:0x013c  */
    /* JADX WARN: Code duplicated, block: B:73:0x0144  */
    /* JADX WARN: Multi-variable type inference failed */
    public static axh e(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int[] iArr;
        int i5;
        ewh ewhVar;
        boolean z;
        int iA;
        int iA2;
        int iA3;
        int iA4;
        int i6;
        int i7;
        int i8;
        int[] iArr2;
        int i9;
        boolean[][] zArr;
        int i10;
        boolean[][] zArr2;
        int[] iArr3;
        int i11;
        int i12;
        boolean z2;
        boolean zH;
        int i13;
        int i14;
        int i15;
        int iC;
        int i16;
        int i17;
        int i18;
        boolean z3;
        boolean z4;
        g0i g0iVar = new g0i(bArr, i, i2);
        rph rphVarM = m(g0iVar);
        g0iVar.f(4);
        boolean zH2 = g0iVar.h();
        boolean zH3 = g0iVar.h();
        int iA5 = g0iVar.a(6);
        int i19 = iA5 + 1;
        int iA6 = g0iVar.a(3);
        g0iVar.f(17);
        int i20 = 1;
        tqh tqhVarN = n(g0iVar, true, iA6, null);
        int i21 = 0;
        for (int i22 = true != g0iVar.h() ? iA6 : 0; i22 <= iA6; i22++) {
            g0iVar.c();
            g0iVar.c();
            g0iVar.c();
        }
        int iA7 = g0iVar.a(6);
        int iC2 = g0iVar.c() + 1;
        trh trhVar = new trh(zzfww.zzo(tqhVarN), new int[1]);
        boolean z5 = i19 >= 2 && iC2 >= 2;
        boolean z6 = zH2 && zH3;
        int i23 = iA7 + 1;
        if (!z5 || !z6 || i23 < i19) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int[][] iArr4 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iC2, i23);
        int[] iArr5 = new int[iC2];
        int[] iArr6 = new int[iC2];
        iArr4[0][0] = 0;
        iArr5[0] = 1;
        iArr6[0] = 0;
        while (i20 < iC2) {
            int i24 = i21;
            while (i21 <= iA7) {
                if (g0iVar.h()) {
                    iArr4[i20][i24] = i21;
                    iArr6[i20] = i21;
                    i24++;
                }
                iArr5[i20] = i24;
                i21++;
            }
            i20++;
            i21 = 0;
        }
        if (g0iVar.h()) {
            g0iVar.f(64);
            if (g0iVar.h()) {
                g0iVar.c();
            }
            int iC3 = g0iVar.c();
            for (int i25 = 0; i25 < iC3; i25++) {
                g0iVar.c();
                if (i25 == 0 || g0iVar.h()) {
                    boolean zH4 = g0iVar.h();
                    boolean zH5 = g0iVar.h();
                    z4 = zH4;
                    z3 = zH5;
                    if (zH4 || zH5) {
                        zH = g0iVar.h();
                        if (zH) {
                            g0iVar.f(19);
                        }
                        g0iVar.f(8);
                        if (zH) {
                            g0iVar.f(4);
                        }
                        g0iVar.f(15);
                        i14 = zH4;
                        i13 = zH5;
                    }
                    i15 = 0;
                    while (i15 <= iA6) {
                        if (!g0iVar.h() || g0iVar.h()) {
                            g0iVar.c();
                        } else {
                            if (g0iVar.h()) {
                                iC = 0;
                            }
                            i16 = i14 + i13;
                            int[][] iArr7 = iArr4;
                            i17 = 0;
                            while (i17 < i16) {
                                int i26 = i16;
                                for (i18 = 0; i18 <= iC; i18++) {
                                    g0iVar.c();
                                    g0iVar.c();
                                    if (zH) {
                                        g0iVar.c();
                                        g0iVar.c();
                                    }
                                    g0iVar.e();
                                }
                                i17++;
                                i16 = i26;
                            }
                            i15++;
                            iArr6 = iArr6;
                            iC3 = iC3;
                            iArr4 = iArr7;
                        }
                        iC = g0iVar.c();
                        i16 = i14 + i13;
                        int[][] iArr8 = iArr4;
                        i17 = 0;
                        while (i17 < i16) {
                            int i27 = i16;
                            while (i18 <= iC) {
                                g0iVar.c();
                                g0iVar.c();
                                if (zH) {
                                    g0iVar.c();
                                    g0iVar.c();
                                }
                                g0iVar.e();
                            }
                            i17++;
                            i16 = i27;
                        }
                        i15++;
                        iArr6 = iArr6;
                        iC3 = iC3;
                        iArr4 = iArr8;
                    }
                } else {
                    z4 = false;
                    z3 = false;
                }
                zH = false;
                i14 = z4;
                i13 = z3;
                i15 = 0;
                while (i15 <= iA6) {
                    if (g0iVar.h()) {
                        g0iVar.c();
                        iC = g0iVar.c();
                    } else {
                        g0iVar.c();
                        iC = g0iVar.c();
                    }
                    i16 = i14 + i13;
                    int[][] iArr9 = iArr4;
                    i17 = 0;
                    while (i17 < i16) {
                        int i28 = i16;
                        while (i18 <= iC) {
                            g0iVar.c();
                            g0iVar.c();
                            if (zH) {
                                g0iVar.c();
                                g0iVar.c();
                            }
                            g0iVar.e();
                        }
                        i17++;
                        i16 = i28;
                    }
                    i15++;
                    iArr6 = iArr6;
                    iC3 = iC3;
                    iArr4 = iArr9;
                }
            }
        }
        int[][] iArr10 = iArr4;
        int[] iArr11 = iArr6;
        if (!g0iVar.h()) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        g0iVar.d();
        tqh tqhVarN2 = n(g0iVar, false, iA6, tqhVarN);
        boolean zH6 = g0iVar.h();
        boolean[] zArr3 = new boolean[16];
        int i29 = 0;
        for (int i30 = 0; i30 < 16; i30++) {
            boolean zH7 = g0iVar.h();
            zArr3[i30] = zH7;
            if (zH7) {
                i29++;
            }
        }
        if (i29 == 0 || !zArr3[1]) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int i31 = i29 + 1;
        int[] iArr12 = new int[i29];
        for (int i32 = 0; i32 < i29 - (zH6 ? 1 : 0); i32++) {
            iArr12[i32] = g0iVar.a(3);
        }
        int[] iArr13 = new int[i31];
        if (zH6) {
            for (int i33 = 1; i33 < i29; i33++) {
                for (int i34 = 0; i34 < i33; i34++) {
                    iArr13[i33] = iArr13[i33] + iArr12[i34] + 1;
                }
            }
            iArr13[i29] = 6;
        }
        int[][] iArr14 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i19, i29);
        int[] iArr15 = new int[i19];
        iArr15[0] = 0;
        boolean zH8 = g0iVar.h();
        int i35 = 1;
        while (i35 < i19) {
            if (zH8) {
                iArr15[i35] = g0iVar.a(6);
            } else {
                iArr15[i35] = i35;
            }
            if (zH6) {
                z2 = zH6 ? 1 : 0;
                int i36 = 0;
                while (i36 < i29) {
                    int i37 = i36 + 1;
                    iArr14[i35][i36] = (iArr15[i35] & ((1 << iArr13[i37]) - 1)) >> iArr13[i36];
                    i36 = i37;
                }
            } else {
                int i38 = 0;
                while (i38 < i29) {
                    iArr14[i35][i38] = g0iVar.a(iArr12[i38] + 1);
                    i38++;
                    zH6 = zH6 ? 1 : 0;
                }
                z2 = zH6;
            }
            i35++;
            zH6 = z2;
        }
        int[] iArr16 = new int[i23];
        int i39 = 1;
        for (int i40 = 0; i40 < i19; i40++) {
            iArr16[iArr15[i40]] = -1;
            int i41 = 0;
            int i42 = 0;
            while (i41 < 16) {
                if (zArr3[i41]) {
                    i11 = 1;
                    if (i41 == 1) {
                        iArr16[iArr15[i40]] = iArr14[i40][i42];
                        i12 = 1;
                    } else {
                        i12 = i41;
                    }
                    i42++;
                    i41 = i12;
                } else {
                    i11 = 1;
                }
                i41 += i11;
            }
            if (i40 > 0) {
                int i43 = 0;
                while (true) {
                    if (i43 >= i40) {
                        i39++;
                        break;
                    }
                    if (iArr16[iArr15[i40]] == iArr16[iArr15[i43]]) {
                        break;
                    }
                    i43++;
                }
            }
        }
        int iA8 = g0iVar.a(4);
        if (i39 < 2 || iA8 == 0) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int[] iArr17 = new int[i39];
        for (int i44 = 0; i44 < i39; i44++) {
            iArr17[i44] = g0iVar.a(iA8);
        }
        int[] iArr18 = new int[i23];
        for (int i45 = 0; i45 < i19; i45++) {
            iArr18[Math.min(iArr15[i45], iA7)] = i45;
        }
        l4i l4iVar = new l4i();
        int i46 = 0;
        while (i46 <= iA7) {
            int[] iArr19 = iArr16;
            int iMin = Math.min(iArr16[i46], i39 - 1);
            l4iVar.g(new soh(iArr18[i46], iMin >= 0 ? iArr17[iMin] : -1));
            i46++;
            iArr16 = iArr19;
        }
        zzfww zzfwwVarJ = l4iVar.j();
        if (((soh) zzfwwVarJ.get(0)).b == -1) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int i47 = 1;
        while (true) {
            if (i47 > iA7) {
                i3 = -1;
                i47 = -1;
                break;
            }
            i3 = -1;
            if (((soh) zzfwwVarJ.get(i47)).b != -1) {
                break;
            }
            i47++;
        }
        if (i47 == i3) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        Class cls = Boolean.TYPE;
        boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls, i19, i19);
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls, i19, i19);
        for (int i48 = 1; i48 < i19; i48++) {
            for (int i49 = 0; i49 < i48; i49++) {
                boolean[] zArr6 = zArr4[i48];
                boolean[] zArr7 = zArr5[i48];
                boolean zH9 = g0iVar.h();
                zArr7[i49] = zH9;
                zArr6[i49] = zH9;
            }
        }
        for (int i50 = 1; i50 < i19; i50++) {
            for (int i51 = 0; i51 < iA5; i51++) {
                for (int i52 = 0; i52 < i50; i52++) {
                    boolean[] zArr8 = zArr5[i50];
                    if (zArr8[i52] && zArr5[i52][i51]) {
                        zArr8[i51] = true;
                        break;
                    }
                }
            }
        }
        int[] iArr20 = new int[i23];
        for (int i53 = 0; i53 < i19; i53++) {
            int i54 = 0;
            for (int i55 = 0; i55 < i53; i55++) {
                i54 += zArr4[i53][i55] ? 1 : 0;
            }
            iArr20[iArr15[i53]] = i54;
        }
        int i56 = 0;
        for (int i57 = 0; i57 < i19; i57++) {
            if (iArr20[iArr15[i57]] == 0) {
                i56++;
            }
        }
        if (i56 > 1) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int[] iArr21 = new int[i19];
        int[] iArr22 = new int[i4];
        if (g0iVar.h()) {
            int i58 = 0;
            while (i58 < i19) {
                i4 = iC2;
                iArr21[i58] = g0iVar.a(3);
                i58++;
                iArr15 = iArr15;
            }
            i4 = iC2;
            iArr = iArr15;
            i5 = iA6;
        } else {
            i4 = iC2;
            iArr = iArr15;
            i5 = iA6;
            Arrays.fill(iArr21, 0, i19, i5);
        }
        int i59 = 0;
        while (i59 < i4) {
            int i60 = i47;
            boolean[][] zArr9 = zArr5;
            int[] iArr23 = iArr20;
            int iMax = 0;
            for (int i61 = 0; i61 < iArr5[i59]; i61++) {
                iMax = Math.max(iMax, iArr21[((soh) zzfwwVarJ.get(iArr10[i59][i61])).a]);
            }
            iArr22[i59] = iMax + 1;
            i59++;
            zArr5 = zArr9;
            iArr20 = iArr23;
            i47 = i60;
        }
        int i62 = i47;
        boolean[][] zArr10 = zArr5;
        int[] iArr24 = iArr20;
        if (g0iVar.h()) {
            int i63 = 0;
            while (i63 < iA5) {
                int i64 = i63 + 1;
                for (int i65 = i64; i65 < i19; i65++) {
                    if (zArr4[i65][i63]) {
                        g0iVar.f(3);
                    }
                }
                i63 = i64;
            }
        }
        g0iVar.e();
        int iC4 = g0iVar.c() + 1;
        l4i l4iVar2 = new l4i();
        l4iVar2.g(tqhVarN);
        if (iC4 > 1) {
            tqh tqhVarN3 = tqhVarN2;
            l4iVar2.g(tqhVarN3);
            for (int i66 = 2; i66 < iC4; i66++) {
                tqhVarN3 = n(g0iVar, g0iVar.h(), i5, tqhVarN3);
                l4iVar2.g(tqhVarN3);
            }
        }
        zzfww zzfwwVarJ2 = l4iVar2.j();
        int iC5 = g0iVar.c() + i4;
        if (iC5 > i4) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int iA9 = g0iVar.a(2);
        boolean[][] zArr11 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iC5, i23);
        int[] iArr25 = new int[iC5];
        int[] iArr26 = new int[iC5];
        int i67 = 0;
        while (i67 < i4) {
            int i68 = i4;
            iArr25[i67] = 0;
            int i69 = iArr11[i67];
            iArr26[i67] = i69;
            if (iA9 == 0) {
                zArr2 = zArr4;
                i10 = i19;
                iArr3 = iArr22;
                Arrays.fill(zArr11[i67], 0, iArr5[i67], true);
                iArr25[i67] = iArr5[i67];
            } else {
                i10 = i19;
                zArr2 = zArr4;
                iArr3 = iArr22;
                if (iA9 == 1) {
                    for (int i70 = 0; i70 < iArr5[i67]; i70++) {
                        zArr11[i67][i70] = iArr10[i67][i70] == i69;
                    }
                    iArr25[i67] = 1;
                } else {
                    zArr11[0][0] = true;
                    iArr25[0] = 1;
                }
                i67++;
                i4 = i68;
                zArr4 = zArr2;
                iArr22 = iArr3;
                i19 = i10;
            }
            i67++;
            i4 = i68;
            zArr4 = zArr2;
            iArr22 = iArr3;
            i19 = i10;
        }
        int i71 = i19;
        boolean[][] zArr12 = zArr4;
        int[] iArr27 = iArr22;
        int i72 = i4;
        int[] iArr28 = new int[i23];
        int i73 = 2;
        boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iC5, i23);
        int i74 = 0;
        int i75 = 1;
        while (i75 < iC5) {
            if (iA9 == i73) {
                for (int i76 = 0; i76 < iArr5[i75]; i76++) {
                    zArr11[i75][i76] = g0iVar.h();
                    int i77 = iArr25[i75];
                    boolean z7 = zArr11[i75][i76];
                    iArr25[i75] = i77 + (z7 ? 1 : 0);
                    if (z7) {
                        iArr26[i75] = iArr10[i75][i76];
                    }
                }
            }
            if (i74 != 0) {
                i6 = iA9;
                i7 = i62;
            } else if (iArr10[i75][0] == 0 && zArr11[i75][0]) {
                i74 = 0;
                int i78 = 1;
                while (i78 < iArr5[i75]) {
                    int i79 = iA9;
                    int i80 = i62;
                    if (iArr10[i75][i78] == i80 && zArr11[i75][i80]) {
                        i74 = i75;
                    }
                    i78++;
                    i62 = i80;
                    iA9 = i79;
                }
                i6 = iA9;
                i7 = i62;
            } else {
                i6 = iA9;
                i7 = i62;
                i74 = 0;
            }
            int i81 = 0;
            while (i81 < iArr5[i75]) {
                if (iC4 > 1) {
                    zArr13[i75][i81] = zArr11[i75][i81];
                    iArr2 = iArr26;
                    i9 = i7;
                    i8 = iC4;
                    int iA10 = j6i.a(iC4, RoundingMode.CEILING);
                    if (zArr13[i75][i81]) {
                        zArr = zArr11;
                        break;
                    }
                    int i82 = ((soh) zzfwwVarJ.get(iArr10[i75][i81])).a;
                    int i83 = 0;
                    while (true) {
                        if (i83 >= i81) {
                            zArr = zArr11;
                            break;
                        }
                        zArr = zArr11;
                        if (zArr10[i82][((soh) zzfwwVarJ.get(iArr10[i75][i83])).a]) {
                            zArr13[i75][i81] = true;
                            break;
                        }
                        i83++;
                        zArr11 = zArr;
                    }
                    if (zArr13[i75][i81]) {
                        if (i74 <= 0 || i75 != i74) {
                            g0iVar.f(iA10);
                        } else {
                            iArr28[i81] = g0iVar.a(iA10);
                        }
                    }
                } else {
                    i8 = iC4;
                    iArr2 = iArr26;
                    i9 = i7;
                    zArr = zArr11;
                }
                i81++;
                iArr26 = iArr2;
                i7 = i9;
                iC4 = i8;
                zArr11 = zArr;
            }
            int i84 = iC4;
            int[] iArr29 = iArr26;
            i62 = i7;
            boolean[][] zArr14 = zArr11;
            if (iArr25[i75] == 1 && iArr24[iArr29[i75]] > 0) {
                g0iVar.e();
            }
            i75++;
            iArr26 = iArr29;
            iA9 = i6;
            iC4 = i84;
            zArr11 = zArr14;
            i73 = 2;
        }
        if (i74 == 0) {
            return new axh(rphVarM, null, trhVar, null, null);
        }
        int iC6 = g0iVar.c();
        int i85 = iC6 + 1;
        l4i l4iVarZzi = zzfww.zzi(i85);
        int[] iArr30 = new int[i71];
        int i86 = 0;
        while (i86 < i85) {
            int iA11 = g0iVar.a(16);
            int iA12 = g0iVar.a(16);
            if (g0iVar.h()) {
                iA2 = g0iVar.a(2);
                if (iA2 == 3) {
                    g0iVar.e();
                }
                iA3 = g0iVar.a(4);
                iA4 = g0iVar.a(4);
            } else {
                iA2 = 0;
                iA3 = 0;
                iA4 = 0;
            }
            if (g0iVar.h()) {
                int iC7 = g0iVar.c();
                int iC8 = g0iVar.c();
                int iC9 = g0iVar.c();
                int iC10 = g0iVar.c();
                iA11 = l(iA11, iA2, iC7, iC8);
                iA12 = k(iA12, iA2, iC9, iC10);
            }
            l4iVarZzi.g(new osh(iA2, iA3, iA4, iA11, iA12));
            i86++;
            zzfwwVarJ = zzfwwVarJ;
            rphVarM = rphVarM;
            iArr28 = iArr28;
        }
        rph rphVar = rphVarM;
        zzfww zzfwwVar = zzfwwVarJ;
        int[] iArr31 = iArr28;
        if (i85 <= 1 || !g0iVar.h()) {
            for (int i87 = 1; i87 < i71; i87++) {
                iArr30[i87] = Math.min(i87, iC6);
            }
        } else {
            int iA13 = j6i.a(i85, RoundingMode.CEILING);
            for (int i88 = 1; i88 < i71; i88++) {
                iArr30[i88] = g0iVar.a(iA13);
            }
        }
        ith ithVar = new ith(l4iVarZzi.j(), iArr30);
        g0iVar.f(2);
        for (int i89 = 1; i89 < i71; i89++) {
            if (iArr24[iArr[i89]] == 0) {
                g0iVar.e();
            }
        }
        for (int i90 = 1; i90 < iC5; i90++) {
            boolean zH10 = g0iVar.h();
            int i91 = 0;
            while (i91 < iArr27[i90]) {
                if ((i91 <= 0 || !zH10) ? i91 == 0 : g0iVar.h()) {
                    for (int i92 = 0; i92 < iArr5[i90]; i92++) {
                        if (zArr13[i90][i92]) {
                            g0iVar.c();
                        }
                    }
                    g0iVar.c();
                    g0iVar.c();
                }
                i91++;
            }
        }
        int iC11 = g0iVar.c() + 2;
        if (g0iVar.h()) {
            g0iVar.f(iC11);
        } else {
            for (int i93 = 1; i93 < i71; i93++) {
                for (int i94 = 0; i94 < i93; i94++) {
                    if (zArr12[i93][i94]) {
                        g0iVar.f(iC11);
                    }
                }
            }
        }
        int iC12 = g0iVar.c();
        for (int i95 = 1; i95 <= iC12; i95++) {
            g0iVar.f(8);
        }
        if (g0iVar.h()) {
            g0iVar.d();
            if (g0iVar.h() || g0iVar.h()) {
                g0iVar.e();
            }
            boolean zH11 = g0iVar.h();
            boolean zH12 = g0iVar.h();
            if (zH11 || zH12) {
                for (int i96 = 0; i96 < i72; i96++) {
                    for (int i97 = 0; i97 < iArr27[i96]; i97++) {
                        boolean zH13 = zH11 ? g0iVar.h() : false;
                        boolean zH14 = zH12 ? g0iVar.h() : false;
                        if (zH13) {
                            g0iVar.f(32);
                        }
                        if (zH14) {
                            g0iVar.f(18);
                        }
                    }
                }
            }
            boolean zH15 = g0iVar.h();
            if (zH15) {
                z = true;
                iA = g0iVar.a(4) + 1;
            } else {
                z = true;
                iA = i71;
            }
            l4i l4iVarZzi2 = zzfww.zzi(iA);
            int[] iArr32 = new int[i71];
            int i98 = 0;
            while (i98 < iA) {
                g0iVar.f(3);
                int i99 = z != g0iVar.h() ? 2 : 1;
                int iA14 = h6j.a(g0iVar.a(8));
                int iB = h6j.b(g0iVar.a(8));
                g0iVar.f(8);
                l4iVarZzi2.g(new jvh(iA14, i99, iB));
                i98++;
                z = true;
            }
            if (zH15 && iA > 1) {
                for (int i100 = 0; i100 < i71; i100++) {
                    iArr32[i100] = g0iVar.a(4);
                }
            }
            ewhVar = new ewh(l4iVarZzi2.j(), iArr32);
        } else {
            ewhVar = null;
        }
        return new axh(rphVar, zzfwwVar, new trh(zzfwwVarJ2, iArr31), ithVar, ewhVar);
    }

    public static wxh f(byte[] bArr, int i, int i2) {
        g0i g0iVar = new g0i(bArr, 4, i2);
        int iC = g0iVar.c();
        int iC2 = g0iVar.c();
        g0iVar.e();
        return new wxh(iC, iC2, g0iVar.h());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:102:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:105:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:108:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:110:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:115:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:116:0x01fb  */
    /* JADX WARN: Code duplicated, block: B:119:0x0204  */
    /* JADX WARN: Code duplicated, block: B:122:0x0210  */
    /* JADX WARN: Code duplicated, block: B:125:0x021b  */
    /* JADX WARN: Code duplicated, block: B:128:0x0224  */
    /* JADX WARN: Code duplicated, block: B:131:0x022b  */
    /* JADX WARN: Code duplicated, block: B:134:0x0237  */
    /* JADX WARN: Code duplicated, block: B:136:0x0257  */
    /* JADX WARN: Code duplicated, block: B:137:0x025e  */
    /* JADX WARN: Code duplicated, block: B:142:0x00a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:21:0x0059  */
    /* JADX WARN: Code duplicated, block: B:22:0x005f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    /* JADX WARN: Code duplicated, block: B:30:0x007d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:0x0086  */
    /* JADX WARN: Code duplicated, block: B:35:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x0093  */
    /* JADX WARN: Code duplicated, block: B:41:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:57:0x010c  */
    /* JADX WARN: Code duplicated, block: B:60:0x011d  */
    /* JADX WARN: Code duplicated, block: B:62:0x012f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x0134  */
    /* JADX WARN: Code duplicated, block: B:65:0x0137  */
    /* JADX WARN: Code duplicated, block: B:67:0x013b  */
    /* JADX WARN: Code duplicated, block: B:68:0x013e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0167 A[PHI: r2
      0x0167: PHI (r2v26 int) = (r2v4 int), (r2v3 int) binds: [B:86:0x016c, B:82:0x0163] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x016a A[PHI: r2
      0x016a: PHI (r2v4 int) = (r2v3 int), (r2v3 int), (r2v3 int), (r2v3 int), (r2v3 int), (r2v27 int) binds: [B:72:0x014f, B:74:0x0153, B:76:0x0157, B:78:0x015b, B:80:0x015f, B:83:0x0165] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:87:0x016e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0178  */
    /* JADX WARN: Code duplicated, block: B:92:0x017e  */
    /* JADX WARN: Code duplicated, block: B:94:0x0188  */
    /* JADX WARN: Code duplicated, block: B:98:0x0199  */
    /* JADX WARN: Code duplicated, block: B:99:0x019c  */
    /* JADX WARN: Instruction removed from duplicated block: B:102:0x01a5, please report this as an issue */
    public static oyh g(byte[] bArr, int i, int i2) {
        int iC;
        int i3;
        boolean zH;
        int iC2;
        int iC3;
        int i4;
        int i5;
        int i6;
        int i7;
        int iB;
        int i8;
        int iC4;
        boolean z;
        boolean zH2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iB2;
        float f;
        float f2;
        boolean zH3;
        boolean zH4;
        int iA;
        int iA2;
        int i18;
        int i19;
        g0i g0iVar = new g0i(bArr, i, i2);
        int iA3 = g0iVar.a(8);
        int iA4 = g0iVar.a(8);
        int iA5 = g0iVar.a(8);
        int iC5 = g0iVar.c();
        if (iA3 == 100 || iA3 == 110 || iA3 == 122 || iA3 == 244 || iA3 == 44 || iA3 == 83 || iA3 == 86 || iA3 == 118 || iA3 == 128) {
            iC = g0iVar.c();
            if (iC == 3) {
                zH = g0iVar.h();
                i3 = 3;
            } else {
                i3 = iC;
                zH = false;
            }
            iC2 = g0iVar.c();
            iC3 = g0iVar.c();
            g0iVar.e();
            if (g0iVar.h()) {
                if (i3 != 3) {
                    i4 = 8;
                } else {
                    i4 = 12;
                }
                for (i5 = 0; i5 < i4; i5++) {
                    if (!g0iVar.h()) {
                        if (i5 < 6) {
                            i6 = 16;
                        } else {
                            i6 = 64;
                        }
                        iB = 8;
                        i8 = 8;
                        for (i7 = 0; i7 < i6; i7++) {
                            if (iB != 0) {
                                iB = ((i8 + g0iVar.b()) + 256) % 256;
                            }
                            if (iB != 0) {
                                i8 = iB;
                            }
                        }
                    }
                }
            }
        } else if (iA3 == 138) {
            iA3 = 138;
            iC = g0iVar.c();
            if (iC == 3) {
                zH = g0iVar.h();
                i3 = 3;
            } else {
                i3 = iC;
                zH = false;
            }
            iC2 = g0iVar.c();
            iC3 = g0iVar.c();
            g0iVar.e();
            if (g0iVar.h()) {
                if (i3 != 3) {
                    i4 = 8;
                } else {
                    i4 = 12;
                }
                while (i5 < i4) {
                    if (!g0iVar.h()) {
                        if (i5 < 6) {
                            i6 = 16;
                        } else {
                            i6 = 64;
                        }
                        iB = 8;
                        i8 = 8;
                        while (i7 < i6) {
                            if (iB != 0) {
                                iB = ((i8 + g0iVar.b()) + 256) % 256;
                            }
                            if (iB != 0) {
                                i8 = iB;
                            }
                        }
                    }
                }
            }
        } else {
            iC = 1;
            zH = false;
            iC2 = 0;
            iC3 = 0;
        }
        int iC6 = g0iVar.c() + 4;
        int iC7 = g0iVar.c();
        if (iC7 != 0) {
            if (iC7 == 1) {
                boolean zH5 = g0iVar.h();
                g0iVar.b();
                g0iVar.b();
                long jC = g0iVar.c();
                for (int i20 = 0; i20 < jC; i20++) {
                    g0iVar.c();
                }
                z = zH5;
                iC7 = 1;
                iC4 = 0;
            } else {
                iC4 = 0;
            }
            int iC8 = g0iVar.c();
            g0iVar.e();
            int iC9 = g0iVar.c() + 1;
            int iC10 = g0iVar.c() + 1;
            zH2 = g0iVar.h();
            i9 = 2 - (zH2 ? 1 : 0);
            if (!zH2) {
                g0iVar.e();
            }
            g0iVar.e();
            i10 = iC9 * 16;
            i11 = iC10 * i9 * 16;
            if (g0iVar.h()) {
                int iC11 = g0iVar.c();
                int iC12 = g0iVar.c();
                int iC13 = g0iVar.c();
                int iC14 = g0iVar.c();
                if (iC == 0) {
                    i18 = 1;
                } else {
                    if (iC == 3) {
                        i18 = 1;
                    } else {
                        i18 = 2;
                    }
                    if (iC == 1) {
                        i19 = 2;
                    } else {
                        i19 = 1;
                    }
                    i9 *= i19;
                }
                i10 -= (iC11 + iC12) * i18;
                i11 -= (iC13 + iC14) * i9;
            }
            int i21 = i10;
            int i22 = i11;
            if (iA3 != 44 || iA3 == 86 || iA3 == 100 || iA3 == 110 || iA3 == 122) {
                if ((iA4 & 16) != 0) {
                    i12 = iA3;
                    i13 = 0;
                } else {
                    i12 = iA3;
                    i13 = 16;
                }
            } else if (iA3 == 244) {
                iA3 = 244;
                if ((iA4 & 16) != 0) {
                    i12 = iA3;
                    i13 = 0;
                } else {
                    i12 = iA3;
                    i13 = 16;
                }
            } else {
                i12 = iA3;
                i13 = 16;
            }
            i14 = -1;
            if (g0iVar.h()) {
                if (g0iVar.h()) {
                    iA = g0iVar.a(8);
                    if (iA == 255) {
                        iA2 = g0iVar.a(16);
                        int iA6 = g0iVar.a(16);
                        if (iA2 != 0 || iA6 == 0) {
                            f2 = 1.0f;
                        } else {
                            f2 = iA2 / iA6;
                        }
                    } else if (iA < 17) {
                        f2 = b[iA];
                    } else {
                        zrg.f("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iA);
                        f2 = 1.0f;
                    }
                } else {
                    f2 = 1.0f;
                }
                if (g0iVar.h()) {
                    g0iVar.e();
                }
                if (g0iVar.h()) {
                    g0iVar.f(3);
                    int i23 = true != g0iVar.h() ? 2 : 1;
                    if (g0iVar.h()) {
                        int iA7 = g0iVar.a(8);
                        int iA8 = g0iVar.a(8);
                        g0iVar.f(8);
                        int iA9 = h6j.a(iA7);
                        iB2 = h6j.b(iA8);
                        i16 = iA9;
                    } else {
                        i16 = -1;
                        iB2 = -1;
                    }
                    i14 = i23;
                } else {
                    i16 = -1;
                    iB2 = -1;
                }
                if (g0iVar.h()) {
                    g0iVar.c();
                    g0iVar.c();
                }
                if (g0iVar.h()) {
                    g0iVar.f(65);
                }
                zH3 = g0iVar.h();
                if (zH3) {
                    o(g0iVar);
                }
                zH4 = g0iVar.h();
                if (zH4) {
                    o(g0iVar);
                }
                if (zH3 || zH4) {
                    g0iVar.e();
                }
                g0iVar.e();
                if (g0iVar.h()) {
                    g0iVar.e();
                    g0iVar.c();
                    g0iVar.c();
                    g0iVar.c();
                    g0iVar.c();
                    int iC15 = g0iVar.c();
                    g0iVar.c();
                    i15 = iC15;
                } else {
                    i15 = i13;
                }
                i17 = i14;
                f = f2;
            } else {
                i15 = i13;
                i16 = -1;
                i17 = -1;
                iB2 = -1;
                f = 1.0f;
            }
            return new oyh(i12, iA4, iA5, iC5, iC8, i21, i22, f, iC2, iC3, zH, zH2, iC6, iC7, iC4, z, i16, i17, iB2, i15);
        }
        iC4 = g0iVar.c() + 4;
        z = false;
        int iC16 = g0iVar.c();
        g0iVar.e();
        int iC17 = g0iVar.c() + 1;
        int iC18 = g0iVar.c() + 1;
        zH2 = g0iVar.h();
        i9 = 2 - (zH2 ? 1 : 0);
        if (!zH2) {
            g0iVar.e();
        }
        g0iVar.e();
        i10 = iC17 * 16;
        i11 = iC18 * i9 * 16;
        if (g0iVar.h()) {
            int iC19 = g0iVar.c();
            int iC110 = g0iVar.c();
            int iC111 = g0iVar.c();
            int iC112 = g0iVar.c();
            if (iC == 0) {
                i18 = 1;
            } else {
                if (iC == 3) {
                    i18 = 1;
                } else {
                    i18 = 2;
                }
                if (iC == 1) {
                    i19 = 2;
                } else {
                    i19 = 1;
                }
                i9 *= i19;
            }
            i10 -= (iC19 + iC110) * i18;
            i11 -= (iC111 + iC112) * i9;
        }
        int i24 = i10;
        int i25 = i11;
        if (iA3 != 44) {
            if ((iA4 & 16) != 0) {
                i12 = iA3;
                i13 = 0;
            } else {
                i12 = iA3;
                i13 = 16;
            }
        } else if ((iA4 & 16) != 0) {
            i12 = iA3;
            i13 = 0;
        } else {
            i12 = iA3;
            i13 = 16;
        }
        i14 = -1;
        if (g0iVar.h()) {
            if (g0iVar.h()) {
                f2 = 1.0f;
            } else {
                iA = g0iVar.a(8);
                if (iA == 255) {
                    iA2 = g0iVar.a(16);
                    int iA10 = g0iVar.a(16);
                    if (iA2 != 0) {
                        f2 = 1.0f;
                    } else {
                        f2 = 1.0f;
                    }
                } else if (iA < 17) {
                    f2 = b[iA];
                } else {
                    zrg.f("NalUnitUtil", "Unexpected aspect_ratio_idc value: " + iA);
                    f2 = 1.0f;
                }
            }
            if (g0iVar.h()) {
                g0iVar.e();
            }
            if (g0iVar.h()) {
                g0iVar.f(3);
                if (true != g0iVar.h()) {
                }
                if (g0iVar.h()) {
                    int iA11 = g0iVar.a(8);
                    int iA12 = g0iVar.a(8);
                    g0iVar.f(8);
                    int iA13 = h6j.a(iA11);
                    iB2 = h6j.b(iA12);
                    i16 = iA13;
                } else {
                    i16 = -1;
                    iB2 = -1;
                }
                i14 = i23;
            } else {
                i16 = -1;
                iB2 = -1;
            }
            if (g0iVar.h()) {
                g0iVar.c();
                g0iVar.c();
            }
            if (g0iVar.h()) {
                g0iVar.f(65);
            }
            zH3 = g0iVar.h();
            if (zH3) {
                o(g0iVar);
            }
            zH4 = g0iVar.h();
            if (zH4) {
                o(g0iVar);
            }
            if (zH3) {
                g0iVar.e();
            } else {
                g0iVar.e();
            }
            g0iVar.e();
            if (g0iVar.h()) {
                g0iVar.e();
                g0iVar.c();
                g0iVar.c();
                g0iVar.c();
                g0iVar.c();
                int iC113 = g0iVar.c();
                g0iVar.c();
                i15 = iC113;
            } else {
                i15 = i13;
            }
            i17 = i14;
            f = f2;
        } else {
            i15 = i13;
            i16 = -1;
            i17 = -1;
            iB2 = -1;
            f = 1.0f;
        }
        return new oyh(i12, iA4, iA5, iC5, iC16, i24, i25, f, iC2, iC3, zH, zH2, iC6, iC7, iC4, z, i16, i17, iB2, i15);
    }

    public static String h(List list) {
        for (int i = 0; i < list.size(); i++) {
            byte[] bArr = (byte[]) list.get(i);
            int length = bArr.length;
            if (length > 3) {
                boolean[] zArr = new boolean[3];
                int i2 = zzfww.zzd;
                l4i l4iVar = new l4i();
                int i3 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i3 >= length2) {
                        break;
                    }
                    int iA = a(bArr, i3, length2, zArr);
                    if (iA != length2) {
                        l4iVar.g(Integer.valueOf(iA));
                    }
                    i3 = iA + 3;
                }
                zzfww zzfwwVarJ = l4iVar.j();
                for (int i4 = 0; i4 < zzfwwVarJ.size(); i4++) {
                    if (((Integer) zzfwwVarJ.get(i4)).intValue() + 3 < length) {
                        g0i g0iVar = new g0i(bArr, ((Integer) zzfwwVarJ.get(i4)).intValue() + 3, length);
                        rph rphVarM = m(g0iVar);
                        if (rphVarM.a == 33 && rphVarM.b == 0) {
                            g0iVar.f(4);
                            int iA2 = g0iVar.a(3);
                            g0iVar.e();
                            tqh tqhVarN = n(g0iVar, true, iA2, null);
                            return vcg.d(tqhVarN.a, tqhVarN.b, tqhVarN.c, tqhVarN.d, tqhVarN.e, tqhVarN.f);
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void i(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static boolean j(byte[] bArr, int i, int i2, erj erjVar) {
        int i3;
        String str = erjVar.o;
        if (Objects.equals(str, "video/avc")) {
            byte b2 = bArr[4];
            if (((b2 & 96) >> 5) == 0 && ((i3 = b2 & 31) == 1 || i3 == 9 || i3 == 14)) {
                return false;
            }
        } else if (Objects.equals(str, "video/hevc")) {
            rph rphVarM = m(new g0i(bArr, 4, i2 + 4));
            int i4 = rphVarM.a;
            if (i4 == 35) {
                return false;
            }
            if (i4 <= 14 && i4 % 2 == 0 && rphVarM.c == erjVar.D - 1) {
                return false;
            }
        }
        return true;
    }

    public static int k(int i, int i2, int i3, int i4) {
        return i - ((i2 == 1 ? 2 : 1) * (i3 + i4));
    }

    public static int l(int i, int i2, int i3, int i4) {
        int i5 = 2;
        if (i2 != 1 && i2 != 2) {
            i5 = 1;
        }
        return i - (i5 * (i3 + i4));
    }

    public static rph m(g0i g0iVar) {
        g0iVar.e();
        return new rph(g0iVar.a(6), g0iVar.a(6), g0iVar.a(3) - 1);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:30:0x0074  */
    /* JADX WARN: Code duplicated, block: B:39:0x006c A[SYNTHETIC] */
    public static tqh n(g0i g0iVar, boolean z, int i, tqh tqhVar) {
        int[] iArr;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean zH;
        int iA;
        int i5;
        int i6;
        int[] iArr2 = new int[6];
        if (!z) {
            if (tqhVar != null) {
                int i7 = tqhVar.a;
                zH = tqhVar.b;
                iA = tqhVar.c;
                i5 = tqhVar.d;
                iArr2 = tqhVar.e;
                i2 = i7;
            } else {
                iArr = iArr2;
                i2 = 0;
                z2 = false;
                i3 = 0;
                i4 = 0;
            }
            int iA2 = g0iVar.a(8);
            i6 = 0;
            for (int i8 = 0; i8 < i; i8++) {
                if (g0iVar.h()) {
                    i6 += 88;
                }
                if (g0iVar.h()) {
                    i6 += 8;
                }
            }
            g0iVar.f(i6);
            if (i > 0) {
                int i9 = 8 - i;
                g0iVar.f(i9 + i9);
            }
            return new tqh(i2, z2, i3, i4, iArr, iA2);
        }
        int iA3 = g0iVar.a(2);
        zH = g0iVar.h();
        iA = g0iVar.a(5);
        i5 = 0;
        for (int i10 = 0; i10 < 32; i10++) {
            if (g0iVar.h()) {
                i5 |= 1 << i10;
            }
        }
        for (int i11 = 0; i11 < 6; i11++) {
            iArr2[i11] = g0iVar.a(8);
        }
        i2 = iA3;
        iArr = iArr2;
        z2 = zH;
        i3 = iA;
        i4 = i5;
        int iA4 = g0iVar.a(8);
        i6 = 0;
        while (i8 < i) {
            if (g0iVar.h()) {
                i6 += 88;
            }
            if (g0iVar.h()) {
                i6 += 8;
            }
        }
        g0iVar.f(i6);
        if (i > 0) {
            int i12 = 8 - i;
            g0iVar.f(i12 + i12);
        }
        return new tqh(i2, z2, i3, i4, iArr, iA4);
    }

    public static void o(g0i g0iVar) {
        int iC = g0iVar.c() + 1;
        g0iVar.f(8);
        for (int i = 0; i < iC; i++) {
            g0iVar.c();
            g0iVar.c();
            g0iVar.e();
        }
        g0iVar.f(20);
    }
}
