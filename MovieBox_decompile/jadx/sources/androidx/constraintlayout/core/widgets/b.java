package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

public class b {
    /* JADX WARN: Code duplicated, block: B:100:0x016d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0173  */
    /* JADX WARN: Code duplicated, block: B:104:0x0194  */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[PHI: r8 r16
      0x0033: PHI (r8v39 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0033: PHI (r16v6 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[PHI: r8 r16
      0x0035: PHI (r8v3 boolean) = (r8v1 boolean), (r8v41 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
      0x0035: PHI (r16v3 boolean) = (r16v1 boolean), (r16v8 boolean) binds: [B:26:0x004b, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:202:0x034e  */
    /* JADX WARN: Code duplicated, block: B:222:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:323:0x03a9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:98:0x016a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r38v0, types: [androidx.constraintlayout.core.d] */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [androidx.constraintlayout.core.SolverVariable] */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    static void a(d dVar, androidx.constraintlayout.core.d dVar2, int i10, int i11, c cVar) {
        boolean z10;
        boolean z11;
        boolean z12;
        Object obj;
        int i12;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        ?? r10;
        SolverVariable solverVariable4;
        int size;
        ConstraintAnchor constraintAnchor3;
        int i13;
        int i14 = i10;
        ConstraintWidget constraintWidget = cVar.f6684a;
        ConstraintWidget constraintWidget2 = cVar.f6686c;
        ConstraintWidget constraintWidget3 = cVar.f6685b;
        ConstraintWidget constraintWidget4 = cVar.f6687d;
        ConstraintWidget constraintWidget5 = cVar.f6688e;
        float f10 = cVar.f6694k;
        boolean z13 = dVar.f6550b0[i14] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i14 == 0) {
            int i15 = constraintWidget5.J0;
            z10 = i15 == 0;
            z11 = i15 == 1;
            if (i15 == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
        } else {
            int i16 = constraintWidget5.K0;
            z10 = i16 == 0;
            z11 = i16 == 1;
            if (i16 == 2) {
                z12 = true;
            } else {
                z12 = false;
            }
        }
        boolean z14 = z11;
        boolean z15 = false;
        boolean z16 = z10;
        ?? r11 = constraintWidget;
        while (true) {
            obj = null;
            if (z15) {
                break;
            }
            ConstraintAnchor constraintAnchor4 = r11.Y[i11];
            int i17 = z12 ? 1 : 4;
            int iF = constraintAnchor4.f();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r11.f6550b0[i14];
            float f11 = f10;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z17 = dimensionBehaviour == dimensionBehaviour2 && r11.f6595y[i14] == 0;
            ConstraintAnchor constraintAnchor5 = constraintAnchor4.f6542f;
            if (constraintAnchor5 != null && r11 != constraintWidget) {
                iF += constraintAnchor5.f();
            }
            int i18 = iF;
            if (z12 && r11 != constraintWidget && r11 != constraintWidget3) {
                i17 = 8;
            }
            ConstraintAnchor constraintAnchor6 = constraintAnchor4.f6542f;
            if (constraintAnchor6 != null) {
                if (r11 == constraintWidget3) {
                    dVar2.h(constraintAnchor4.f6545i, constraintAnchor6.f6545i, i18, 6);
                } else {
                    dVar2.h(constraintAnchor4.f6545i, constraintAnchor6.f6545i, i18, 8);
                }
                if (z17 && !z12) {
                    i17 = 5;
                }
                dVar2.e(constraintAnchor4.f6545i, constraintAnchor4.f6542f.f6545i, i18, (r11 == constraintWidget3 && z12 && r11.j0(i14)) ? 5 : i17);
            } else {
                constraintWidget = constraintWidget;
            }
            if (z13) {
                if (r11.X() == 8 || r11.f6550b0[i14] != dimensionBehaviour2) {
                    i13 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr = r11.Y;
                    i13 = 0;
                    dVar2.h(constraintAnchorArr[i11 + 1].f6545i, constraintAnchorArr[i11].f6545i, 0, 5);
                }
                dVar2.h(r11.Y[i11].f6545i, dVar.Y[i11].f6545i, i13, 8);
            }
            ConstraintAnchor constraintAnchor7 = r11.Y[i11 + 1].f6542f;
            if (constraintAnchor7 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor7.f6540d;
                ConstraintAnchor constraintAnchor8 = constraintWidget6.Y[i11].f6542f;
                if (constraintAnchor8 != null && constraintAnchor8.f6540d == r11) {
                    obj = constraintWidget6;
                }
            }
            if (obj != null) {
                r11 = obj;
                z15 = z15;
            } else {
                z15 = true;
            }
            constraintWidget5 = constraintWidget5;
            f10 = f11;
            constraintWidget = constraintWidget;
            r11 = r11;
        }
        ConstraintWidget constraintWidget7 = constraintWidget5;
        float f12 = f10;
        ConstraintWidget constraintWidget8 = constraintWidget;
        if (constraintWidget4 != null) {
            int i19 = i11 + 1;
            if (constraintWidget2.Y[i19].f6542f != null) {
                ConstraintAnchor constraintAnchor9 = constraintWidget4.Y[i19];
                if (constraintWidget4.f6550b0[i14] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.f6595y[i14] == 0 && !z12) {
                    ConstraintAnchor constraintAnchor10 = constraintAnchor9.f6542f;
                    if (constraintAnchor10.f6540d == dVar) {
                        dVar2.e(constraintAnchor9.f6545i, constraintAnchor10.f6545i, -constraintAnchor9.f(), 5);
                    } else if (z12) {
                        constraintAnchor3 = constraintAnchor9.f6542f;
                        if (constraintAnchor3.f6540d == dVar) {
                            dVar2.e(constraintAnchor9.f6545i, constraintAnchor3.f6545i, -constraintAnchor9.f(), 4);
                        }
                    }
                } else if (z12) {
                    constraintAnchor3 = constraintAnchor9.f6542f;
                    if (constraintAnchor3.f6540d == dVar) {
                        dVar2.e(constraintAnchor9.f6545i, constraintAnchor3.f6545i, -constraintAnchor9.f(), 4);
                    }
                }
                dVar2.j(constraintAnchor9.f6545i, constraintWidget2.Y[i19].f6542f.f6545i, -constraintAnchor9.f(), 6);
            }
        }
        if (z13) {
            int i20 = i11 + 1;
            SolverVariable solverVariable5 = dVar.Y[i20].f6545i;
            ConstraintAnchor constraintAnchor11 = constraintWidget2.Y[i20];
            dVar2.h(solverVariable5, constraintAnchor11.f6545i, constraintAnchor11.f(), 8);
        }
        ArrayList arrayList = cVar.f6691h;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f13 = (!cVar.f6701r || cVar.f6703t) ? f12 : cVar.f6693j;
            float f14 = 0.0f;
            float f15 = 0.0f;
            ConstraintWidget constraintWidget9 = null;
            int i21 = 0;
            while (i21 < size) {
                ConstraintWidget constraintWidget10 = (ConstraintWidget) arrayList.get(i21);
                float f16 = constraintWidget10.N0[i14];
                if (f16 < f14) {
                    if (cVar.f6703t) {
                        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget10.Y;
                        dVar2.e(constraintAnchorArr2[i11 + 1].f6545i, constraintAnchorArr2[i11].f6545i, 0, 4);
                    } else {
                        f16 = 1.0f;
                    }
                    arrayList = arrayList;
                    size = size;
                    i21++;
                    size = size;
                    arrayList = arrayList;
                    f14 = 0.0f;
                }
                if (f16 == 0.0f) {
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget10.Y;
                    dVar2.e(constraintAnchorArr3[i11 + 1].f6545i, constraintAnchorArr3[i11].f6545i, 0, 8);
                    arrayList = arrayList;
                    size = size;
                } else {
                    if (constraintWidget9 != null) {
                        ConstraintAnchor[] constraintAnchorArr4 = constraintWidget9.Y;
                        SolverVariable solverVariable6 = constraintAnchorArr4[i11].f6545i;
                        int i22 = i11 + 1;
                        SolverVariable solverVariable7 = constraintAnchorArr4[i22].f6545i;
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget10.Y;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i11].f6545i;
                        SolverVariable solverVariable9 = constraintAnchorArr5[i22].f6545i;
                        androidx.constraintlayout.core.b bVarR = dVar2.r();
                        bVarR.l(f15, f13, f16, solverVariable6, solverVariable7, solverVariable8, solverVariable9);
                        dVar2.d(bVarR);
                    }
                    constraintWidget9 = constraintWidget10;
                    f15 = f16;
                }
                i21++;
                size = size;
                arrayList = arrayList;
                f14 = 0.0f;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z12)) {
            ConstraintAnchor constraintAnchor12 = constraintWidget8.Y[i11];
            int i23 = i11 + 1;
            ConstraintAnchor constraintAnchor13 = constraintWidget2.Y[i23];
            ConstraintAnchor constraintAnchor14 = constraintAnchor12.f6542f;
            SolverVariable solverVariable10 = constraintAnchor14 != null ? constraintAnchor14.f6545i : null;
            ConstraintAnchor constraintAnchor15 = constraintAnchor13.f6542f;
            SolverVariable solverVariable11 = constraintAnchor15 != null ? constraintAnchor15.f6545i : null;
            ConstraintAnchor constraintAnchor16 = constraintWidget3.Y[i11];
            if (constraintWidget4 != null) {
                constraintAnchor13 = constraintWidget4.Y[i23];
            }
            if (solverVariable10 != null && solverVariable11 != null) {
                dVar2.c(constraintAnchor16.f6545i, solverVariable10, constraintAnchor16.f(), i14 == 0 ? constraintWidget7.f6580q0 : constraintWidget7.f6582r0, solverVariable11, constraintAnchor13.f6545i, constraintAnchor13.f(), 7);
            }
        } else if (!z16 || constraintWidget3 == null) {
            int i24 = 8;
            if (z14 && constraintWidget3 != null) {
                int i25 = cVar.f6693j;
                boolean z18 = i25 > 0 && cVar.f6692i == i25;
                ConstraintWidget constraintWidget11 = constraintWidget3;
                ConstraintWidget constraintWidget12 = constraintWidget11;
                while (constraintWidget12 != null) {
                    ConstraintWidget constraintWidget13 = constraintWidget12.P0[i14];
                    while (constraintWidget13 != null && constraintWidget13.X() == i24) {
                        constraintWidget13 = constraintWidget13.P0[i14];
                    }
                    if (constraintWidget12 == constraintWidget3 || constraintWidget12 == constraintWidget4 || constraintWidget13 == null) {
                        constraintWidget11 = constraintWidget11;
                        i12 = i24;
                    } else {
                        ConstraintWidget constraintWidget14 = constraintWidget13 == constraintWidget4 ? null : constraintWidget13;
                        ConstraintAnchor constraintAnchor17 = constraintWidget12.Y[i11];
                        SolverVariable solverVariable12 = constraintAnchor17.f6545i;
                        ConstraintAnchor constraintAnchor18 = constraintAnchor17.f6542f;
                        if (constraintAnchor18 != null) {
                            SolverVariable solverVariable13 = constraintAnchor18.f6545i;
                        }
                        int i26 = i11 + 1;
                        SolverVariable solverVariable14 = constraintWidget11.Y[i26].f6545i;
                        int iF2 = constraintAnchor17.f();
                        int iF3 = constraintWidget12.Y[i26].f();
                        if (constraintWidget14 != null) {
                            constraintAnchor = constraintWidget14.Y[i11];
                            SolverVariable solverVariable15 = constraintAnchor.f6545i;
                            ConstraintAnchor constraintAnchor19 = constraintAnchor.f6542f;
                            solverVariable2 = constraintAnchor19 != null ? constraintAnchor19.f6545i : null;
                            solverVariable = solverVariable15;
                        } else {
                            constraintAnchor = constraintWidget4.Y[i11];
                            solverVariable = constraintAnchor != null ? constraintAnchor.f6545i : null;
                            solverVariable2 = constraintWidget12.Y[i26].f6545i;
                        }
                        if (constraintAnchor != null) {
                            iF3 += constraintAnchor.f();
                        }
                        int i27 = iF3;
                        int iF4 = constraintWidget11.Y[i26].f() + iF2;
                        int i28 = z18 ? 8 : 4;
                        if (solverVariable12 == null || solverVariable14 == null || solverVariable == null || solverVariable2 == null) {
                            i12 = 8;
                        } else {
                            i12 = 8;
                            dVar2.c(solverVariable12, solverVariable14, iF4, 0.5f, solverVariable, solverVariable2, i27, i28);
                        }
                        constraintWidget13 = constraintWidget14;
                    }
                    constraintWidget11 = constraintWidget12.X() != i12 ? constraintWidget12 : constraintWidget11;
                    constraintWidget12 = constraintWidget13;
                    i24 = i12;
                    i14 = i10;
                }
                ConstraintAnchor constraintAnchor20 = constraintWidget3.Y[i11];
                ConstraintAnchor constraintAnchor21 = constraintWidget8.Y[i11].f6542f;
                int i29 = i11 + 1;
                ConstraintAnchor constraintAnchor22 = constraintWidget4.Y[i29];
                ConstraintAnchor constraintAnchor23 = constraintWidget2.Y[i29].f6542f;
                if (constraintAnchor21 != null) {
                    if (constraintWidget3 != constraintWidget4) {
                        dVar2.e(constraintAnchor20.f6545i, constraintAnchor21.f6545i, constraintAnchor20.f(), 5);
                    } else if (constraintAnchor23 != null) {
                        dVar2.c(constraintAnchor20.f6545i, constraintAnchor21.f6545i, constraintAnchor20.f(), 0.5f, constraintAnchor22.f6545i, constraintAnchor23.f6545i, constraintAnchor22.f(), 5);
                    }
                }
                if (constraintAnchor23 != null && constraintWidget3 != constraintWidget4) {
                    dVar2.e(constraintAnchor22.f6545i, constraintAnchor23.f6545i, -constraintAnchor22.f(), 5);
                }
            }
        } else {
            int i30 = cVar.f6693j;
            boolean z19 = i30 > 0 && cVar.f6692i == i30;
            ConstraintWidget constraintWidget15 = constraintWidget3;
            ConstraintWidget constraintWidget16 = constraintWidget15;
            while (constraintWidget16 != null) {
                ConstraintWidget constraintWidget17 = constraintWidget16.P0[i14];
                while (constraintWidget17 != null && constraintWidget17.X() == 8) {
                    constraintWidget17 = constraintWidget17.P0[i14];
                }
                if (constraintWidget17 != null || constraintWidget16 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor24 = constraintWidget16.Y[i11];
                    SolverVariable solverVariable16 = constraintAnchor24.f6545i;
                    ConstraintAnchor constraintAnchor25 = constraintAnchor24.f6542f;
                    SolverVariable solverVariable17 = constraintAnchor25 != null ? constraintAnchor25.f6545i : null;
                    if (constraintWidget15 != constraintWidget16) {
                        solverVariable17 = constraintWidget15.Y[i11 + 1].f6545i;
                    } else if (constraintWidget16 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor26 = constraintWidget8.Y[i11].f6542f;
                        solverVariable17 = constraintAnchor26 != null ? constraintAnchor26.f6545i : null;
                    }
                    int iF5 = constraintAnchor24.f();
                    int i31 = i11 + 1;
                    int iF6 = constraintWidget16.Y[i31].f();
                    if (constraintWidget17 != null) {
                        constraintAnchor2 = constraintWidget17.Y[i11];
                        solverVariable3 = constraintAnchor2.f6545i;
                    } else {
                        constraintAnchor2 = constraintWidget2.Y[i31].f6542f;
                        if (constraintAnchor2 != null) {
                            solverVariable3 = constraintAnchor2.f6545i;
                        } else {
                            solverVariable3 = null;
                        }
                        SolverVariable solverVariable18 = constraintWidget16.Y[i31].f6545i;
                        if (constraintAnchor2 != null) {
                            iF6 += constraintAnchor2.f();
                        }
                        int iF7 = iF5 + constraintWidget15.Y[i31].f();
                        if (solverVariable16 == null && solverVariable17 != null && solverVariable3 != null && solverVariable18 != null) {
                            if (constraintWidget16 == constraintWidget3) {
                                iF7 = constraintWidget3.Y[i11].f();
                            }
                            constraintWidget17 = constraintWidget17;
                            dVar2.c(solverVariable16, solverVariable17, iF7, 0.5f, solverVariable3, solverVariable18, constraintWidget16 == constraintWidget4 ? constraintWidget4.Y[i31].f() : iF6, z19 ? 8 : 5);
                        }
                        if (constraintWidget16.X() != 8) {
                            constraintWidget16 = constraintWidget15;
                        }
                        constraintWidget15 = constraintWidget16;
                        constraintWidget16 = constraintWidget17;
                    }
                    SolverVariable solverVariable19 = constraintWidget16.Y[i31].f6545i;
                    if (constraintAnchor2 != null) {
                        iF6 += constraintAnchor2.f();
                    }
                    int iF8 = iF5 + constraintWidget15.Y[i31].f();
                    if (solverVariable16 == null) {
                    }
                }
                if (constraintWidget16.X() != 8) {
                    constraintWidget16 = constraintWidget15;
                }
                constraintWidget15 = constraintWidget16;
                constraintWidget16 = constraintWidget17;
            }
        }
        if ((!z16 && !z14) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
            return;
        }
        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget3.Y;
        ConstraintAnchor constraintAnchor27 = constraintAnchorArr6[i11];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        int i32 = i11 + 1;
        ConstraintAnchor constraintAnchor28 = constraintWidget4.Y[i32];
        ConstraintAnchor constraintAnchor29 = constraintAnchor27.f6542f;
        SolverVariable solverVariable20 = constraintAnchor29 != null ? constraintAnchor29.f6545i : null;
        ConstraintAnchor constraintAnchor30 = constraintAnchor28.f6542f;
        if (constraintAnchor30 != null) {
            solverVariable4 = constraintAnchor30.f6545i;
        } else {
            r10 = 0;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor31 = constraintWidget2.Y[i32].f6542f;
            if (constraintAnchor31 != null) {
                r10 = solverVariable4;
                obj = constraintAnchor31.f6545i;
            }
            r10 = solverVariable4;
            r10 = obj;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor28 = constraintAnchorArr6[i32];
        }
        if (solverVariable20 == null || r10 == 0) {
            return;
        }
        dVar2.c(constraintAnchor27.f6545i, solverVariable20, constraintAnchor27.f(), 0.5f, r10, constraintAnchor28.f6545i, constraintWidget4.Y[i32].f(), 5);
    }

    public static void b(d dVar, androidx.constraintlayout.core.d dVar2, ArrayList arrayList, int i10) {
        int i11;
        c[] cVarArr;
        int i12;
        if (i10 == 0) {
            i11 = dVar.f6713h1;
            cVarArr = dVar.f6716k1;
            i12 = 0;
        } else {
            i11 = dVar.f6714i1;
            cVarArr = dVar.f6715j1;
            i12 = 2;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            c cVar = cVarArr[i13];
            cVar.a();
            if (arrayList == null || arrayList.contains(cVar.f6684a)) {
                a(dVar, dVar2, i10, i12, cVar);
            }
        }
    }
}
