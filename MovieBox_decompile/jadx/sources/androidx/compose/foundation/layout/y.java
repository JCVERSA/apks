package androidx.compose.foundation.layout;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

public abstract class y {
    public static final androidx.compose.ui.layout.v a(x xVar, int i10, int i11, int i12, int i13, int i14, androidx.compose.ui.layout.x xVar2, List list, androidx.compose.ui.layout.g0[] g0VarArr, int i15, int i16, int[] iArr, int i17) throws Throwable {
        int[] iArr2;
        long j10;
        long j11;
        String str;
        String str2;
        int i18;
        Integer num;
        int i19;
        int iL;
        int i20;
        String str3;
        int i21;
        float f10;
        String str4;
        float f11;
        long j12;
        int i22;
        int i23;
        String str5;
        int i24;
        int i25;
        String str6;
        long j13;
        int i26;
        String str7;
        String str8;
        int i27;
        float f12;
        float f13;
        char c10;
        int i28;
        int i29;
        int[] iArr3;
        int i30;
        List list2 = list;
        int i31 = i16;
        int i32 = i31 - i15;
        int i33 = 0;
        int i34 = i15;
        int i35 = 0;
        int i36 = 0;
        int i37 = 0;
        int i38 = 0;
        int[] iArr4 = new int[i32];
        long j14 = i14;
        float f14 = 0.0f;
        int i39 = 0;
        while (true) {
            if (i34 >= i31) {
                break;
            }
            int i40 = i39;
            androidx.compose.ui.layout.s sVar = (androidx.compose.ui.layout.s) list2.get(i34);
            z zVarC = v.c(sVar);
            float fE = v.e(zVarC);
            i38 = (i38 != 0 || v.f(zVarC)) ? 1 : i33;
            if (fE > 0.0f) {
                i37++;
                i34 = i34;
                j14 = j14;
                iArr3 = iArr4;
                i32 = i32;
                f14 += fE;
                i30 = i33;
            } else {
                if (i13 != Integer.MAX_VALUE && zVarC != null) {
                    zVarC.c();
                }
                int i41 = i12 - i36;
                androidx.compose.ui.layout.g0 g0VarP = g0VarArr[i34];
                if (g0VarP == null) {
                    g0VarP = sVar.P(w.a(xVar, 0, 0, i12 != Integer.MAX_VALUE ? RangesKt.e(i41, i33) : Integer.MAX_VALUE, i13, false, 16, null));
                }
                androidx.compose.ui.layout.g0 g0Var = g0VarP;
                int iE = xVar.e(g0Var);
                int iF = xVar.f(g0Var);
                iArr3 = iArr4;
                iArr3[i34 - i15] = iE;
                i30 = 0;
                int iMin = Math.min(i14, RangesKt.e(i41 - iE, 0));
                i36 = iE + iMin + i36;
                int iMax = Math.max(i40, iF);
                g0VarArr[i34] = g0Var;
                i40 = iMax;
                i35 = iMin;
                i37 = i37;
            }
            i34++;
            iArr4 = iArr3;
            i33 = i30;
            f14 = f14;
            i32 = i32;
            i39 = i40;
            j14 = j14;
        }
        int i42 = i39;
        long j15 = j14;
        int[] iArr5 = iArr4;
        int i43 = i32;
        float f15 = f14;
        int i44 = i33;
        int i45 = i36;
        int i46 = i37;
        if (i46 == 0) {
            i20 = i45 - i35;
            iArr2 = iArr5;
            iL = i44;
            i18 = i10;
            i19 = i42;
            num = null;
        } else {
            int i47 = i12 != Integer.MAX_VALUE ? i12 : i10;
            iArr2 = iArr5;
            long j16 = ((long) (i46 - 1)) * j15;
            long jF = RangesKt.f(((long) (i47 - i45)) - j16, 0L);
            float f16 = jF / f15;
            int i48 = i15;
            long jRound = jF;
            while (true) {
                j10 = jF;
                j11 = j16;
                str = "arrangementSpacingPx ";
                str2 = "targetSpace ";
                if (i48 >= i31) {
                    break;
                }
                float fE2 = v.e(v.c((androidx.compose.ui.layout.s) list2.get(i48)));
                float f17 = f16 * fE2;
                try {
                    jRound -= (long) Math.round(f17);
                    i48++;
                    list2 = list;
                    i31 = i16;
                    jF = j10;
                    j16 = j11;
                } catch (IllegalArgumentException e10) {
                    throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/297974033 mainAxisMax " + i12 + "mainAxisMin " + i10 + "targetSpace " + i47 + "arrangementSpacingPx " + j15 + "weightChildrenCount " + i46 + "fixedSpace " + i45 + "arrangementSpacingTotal " + j11 + "remainingToTarget " + j10 + "totalWeight " + f15 + "weightUnitSpace " + f16 + "itemWeight " + fE2 + "weightedSize " + f17).initCause(e10);
                }
            }
            i18 = i10;
            float f18 = f15;
            String str9 = "weightedSize ";
            String str10 = "weightUnitSpace ";
            String str11 = "totalWeight ";
            long j17 = j10;
            String str12 = "remainingToTarget ";
            long j18 = j11;
            String str13 = "arrangementSpacingTotal ";
            long j19 = j15;
            int i49 = i42;
            int i50 = 0;
            int i51 = i15;
            while (i51 < i16) {
                if (g0VarArr[i51] == null) {
                    androidx.compose.ui.layout.s sVar2 = (androidx.compose.ui.layout.s) list.get(i51);
                    z zVarC2 = v.c(sVar2);
                    float fE3 = v.e(zVarC2);
                    String str14 = str;
                    int i52 = i47;
                    if (i13 != Integer.MAX_VALUE && zVarC2 != null) {
                        zVarC2.c();
                    }
                    if (fE3 <= 0.0f) {
                        throw new IllegalStateException("All weights <= 0 should have placeables");
                    }
                    int iB = MathKt.b(jRound);
                    String str15 = str2;
                    jRound -= (long) iB;
                    float f19 = f16 * fE3;
                    int iMax2 = Math.max(0, Math.round(f19) + iB);
                    try {
                        try {
                            if (v.b(zVarC2)) {
                                c10 = 65535;
                                int i53 = iMax2 != Integer.MAX_VALUE ? iMax2 : 0;
                                j13 = j18;
                                str7 = str14;
                                i27 = iMax2;
                                str8 = str15;
                                int i54 = i53;
                                i26 = i52;
                                i24 = i46;
                                i25 = i45;
                                f12 = f16;
                                str6 = str9;
                                f13 = f18;
                                j12 = j19;
                                androidx.compose.ui.layout.g0 g0VarP2 = sVar2.P(xVar.a(i54, 0, i27, i13, true));
                                int iE2 = xVar.e(g0VarP2);
                                int iF2 = xVar.f(g0VarP2);
                                iArr2[i51 - i15] = iE2;
                                i50 += iE2;
                                int iMax3 = Math.max(i49, iF2);
                                g0VarArr[i51] = g0VarP2;
                                i49 = iMax3;
                                str4 = str6;
                                f11 = f13;
                                f10 = f12;
                                j18 = j13;
                                str3 = str7;
                                str5 = str8;
                                i22 = i26;
                                i23 = i24;
                                i21 = i25;
                            } else {
                                c10 = 65535;
                            }
                            androidx.compose.ui.layout.g0 g0VarP3 = sVar2.P(xVar.a(i54, 0, i27, i13, true));
                            int iE3 = xVar.e(g0VarP3);
                            int iF3 = xVar.f(g0VarP3);
                            iArr2[i51 - i15] = iE3;
                            i50 += iE3;
                            int iMax4 = Math.max(i49, iF3);
                            g0VarArr[i51] = g0VarP3;
                            i49 = iMax4;
                            str4 = str6;
                            f11 = f13;
                            f10 = f12;
                            j18 = j13;
                            str3 = str7;
                            str5 = str8;
                            i22 = i26;
                            i23 = i24;
                            i21 = i25;
                        } catch (IllegalArgumentException e11) {
                            e = e11;
                            throw new IllegalArgumentException("This log indicates a hard-to-reproduce Compose issue, modified with additional debugging details. Please help us by adding your experiences to the bug link provided. Thank you for helping us improve Compose. https://issuetracker.google.com/issues/300280216 mainAxisMax " + i12 + "mainAxisMin " + i18 + str8 + i26 + str7 + j12 + "weightChildrenCount " + i24 + "fixedSpace " + i25 + str13 + j13 + str12 + j17 + str11 + f13 + str10 + f12 + "weight " + fE3 + str6 + f19 + "crossAxisDesiredSize " + ((Object) null) + "remainderUnit " + iB + "childMainAxisSize " + i27).initCause(e);
                        }
                        j13 = j18;
                        str7 = str14;
                        i27 = iMax2;
                        str8 = str15;
                        int i55 = i53;
                        i26 = i52;
                        i24 = i46;
                        i25 = i45;
                        f12 = f16;
                        str6 = str9;
                        f13 = f18;
                        j12 = j19;
                    } catch (IllegalArgumentException e12) {
                        e = e12;
                        i24 = i46;
                        i25 = i45;
                        str6 = str9;
                        j13 = j18;
                        i26 = i52;
                        str7 = str14;
                        str8 = str15;
                        i27 = iMax2;
                        f12 = f16;
                        f13 = f18;
                        j12 = j19;
                    }
                } else {
                    str3 = str;
                    i21 = i45;
                    f10 = f16;
                    str4 = str9;
                    f11 = f18;
                    j12 = j19;
                    i22 = i47;
                    i23 = i46;
                    str5 = str2;
                }
                i51++;
                str2 = str5;
                i47 = i22;
                str = str3;
                i46 = i23;
                i45 = i21;
                j17 = j17;
                f16 = f10;
                str10 = str10;
                str11 = str11;
                str12 = str12;
                str13 = str13;
                j19 = j12;
                f18 = f11;
                str9 = str4;
            }
            int i56 = i45;
            num = null;
            i19 = i49;
            iL = RangesKt.l((int) (((long) i50) + j18), 0, i12 - i56);
            i20 = i56;
        }
        if (i38 != 0) {
            int iMax5 = 0;
            int iMax6 = 0;
            for (int i57 = i15; i57 < i16; i57++) {
                androidx.compose.ui.layout.g0 g0Var2 = g0VarArr[i57];
                Intrinsics.e(g0Var2);
                m mVarA = v.a(v.d(g0Var2));
                Integer numB = mVarA != null ? mVarA.b(g0Var2) : num;
                if (numB != null) {
                    int iIntValue = numB.intValue();
                    int iF4 = xVar.f(g0Var2);
                    iMax5 = Math.max(iMax5, iIntValue != Integer.MIN_VALUE ? numB.intValue() : 0);
                    if (iIntValue == Integer.MIN_VALUE) {
                        iIntValue = iF4;
                    }
                    iMax6 = Math.max(iMax6, iF4 - iIntValue);
                }
            }
            i28 = iMax6;
            i29 = iMax5;
        } else {
            i28 = 0;
            i29 = 0;
        }
        int iMax7 = Math.max(RangesKt.e(i20 + iL, 0), i18);
        int iMax8 = Math.max(i19, Math.max(i11, i28 + i29));
        int[] iArr6 = new int[i43];
        for (int i58 = 0; i58 < i43; i58++) {
            iArr6[i58] = 0;
        }
        xVar.b(iMax7, iArr2, iArr6, xVar2);
        return xVar.d(g0VarArr, xVar2, i29, iArr6, iMax7, iMax8, iArr, i17, i15, i16);
    }
}
