package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.ui.draw.j;
import androidx.compose.ui.graphics.b4;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.n;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import y.m;

public abstract class IconKt {

    private static final androidx.compose.ui.f f3208a = SizeKt.j(androidx.compose.ui.f.f3869a, r.c.f70314a.a());

    /* JADX WARN: Code duplicated, block: B:102:0x018b  */
    /* JADX WARN: Code duplicated, block: B:106:0x0197  */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:50:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00db  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:83:0x0103  */
    /* JADX WARN: Code duplicated, block: B:84:0x0105  */
    /* JADX WARN: Code duplicated, block: B:88:0x0124  */
    /* JADX WARN: Code duplicated, block: B:90:0x0130  */
    /* JADX WARN: Code duplicated, block: B:91:0x0132  */
    /* JADX WARN: Code duplicated, block: B:94:0x0139  */
    /* JADX WARN: Code duplicated, block: B:96:0x0141  */
    /* JADX WARN: Code duplicated, block: B:99:0x0154  */
    public static final void a(final Painter painter, final String str, androidx.compose.ui.f fVar, long j10, i iVar, final int i10, final int i11) {
        int i12;
        androidx.compose.ui.f fVar2;
        long jU;
        androidx.compose.ui.f fVar3;
        androidx.compose.ui.f fVar4;
        boolean z10;
        Object objY;
        androidx.compose.ui.f fVarC;
        final androidx.compose.ui.f fVar5;
        final long j11;
        boolean z11;
        Object objY2;
        g2 g2VarJ;
        int i13;
        i iVarG = iVar.g(-2142239481);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            i12 = (iVarG.A(painter) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            i12 |= iVarG.O(str) ? 32 : 16;
        }
        int i14 = i11 & 4;
        if (i14 == 0) {
            if ((i10 & 384) == 0) {
                fVar2 = fVar;
                i12 |= iVarG.O(fVar2) ? 256 : 128;
            }
            if ((i10 & 3072) == 0) {
                jU = j10;
                if ((i11 & 8) == 0 || !iVarG.d(jU)) {
                    i13 = 1024;
                } else {
                    i13 = 2048;
                }
                i12 |= i13;
            } else {
                jU = j10;
            }
            if ((i12 & 1171) == 1170 || !iVarG.h()) {
                iVarG.B();
                if ((i10 & 1) != 0 || iVarG.I()) {
                    if (i14 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        fVar4 = fVar3;
                        jU = ((u1) iVarG.l(ContentColorKt.a())).u();
                    } else {
                        fVar4 = fVar3;
                    }
                } else {
                    iVarG.G();
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                    }
                    fVar4 = fVar2;
                }
                iVarG.s();
                if (k.H()) {
                    k.Q(-2142239481, i12, -1, "androidx.compose.material3.Icon (Icon.kt:136)");
                }
                iVarG.x(69356724);
                z10 = (((i12 & 7168) ^ 3072) <= 2048 && iVarG.d(jU)) || (i12 & 3072) == 2048;
                objY = iVarG.y();
                if (z10 || objY == i.f3427a.a()) {
                    if (u1.m(jU, u1.f4349b.e())) {
                        objY = null;
                    } else {
                        objY = v1.a.b(v1.f4366b, jU, 0, 2, null);
                    }
                    iVarG.p(objY);
                }
                v1 v1Var = (v1) objY;
                iVarG.N();
                iVarG.x(69356847);
                if (str != null) {
                    androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f3869a;
                    iVarG.x(69356912);
                    if ((i12 & 112) == 32) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    objY2 = iVarG.y();
                    if (z11 || objY2 == i.f3427a.a()) {
                        objY2 = new Function1<n, Unit>() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public Object invoke(Object obj) {
                                invoke((n) obj);
                                return Unit.f64096a;
                            }

                            public final void invoke(n nVar) {
                                SemanticsPropertiesKt.v(nVar, str);
                                SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5655b.d());
                            }
                        };
                        iVarG.p(objY2);
                    }
                    iVarG.N();
                    fVarC = androidx.compose.ui.semantics.k.c(aVar, false, (Function1) objY2, 1, null);
                } else {
                    fVarC = androidx.compose.ui.f.f3869a;
                }
                androidx.compose.ui.f fVar6 = fVarC;
                iVarG.N();
                long j12 = jU;
                BoxKt.a(j.b(b(b4.c(fVar4), painter), painter, false, null, androidx.compose.ui.layout.e.f4867a.a(), 0.0f, v1Var, 22, null).e(fVar6), iVarG, 0);
                if (k.H()) {
                    k.P();
                }
                fVar5 = fVar4;
                j11 = j12;
            } else {
                iVarG.G();
                fVar5 = fVar2;
                j11 = jU;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(i iVar2, int i15) {
                        IconKt.a(painter, str, fVar5, j11, iVar2, androidx.compose.runtime.v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 384;
        fVar2 = fVar;
        if ((i10 & 3072) == 0) {
            jU = j10;
            if ((i11 & 8) == 0) {
                i13 = 1024;
            } else {
                i13 = 1024;
            }
            i12 |= i13;
        } else {
            jU = j10;
        }
        if ((i12 & 1171) == 1170) {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i14 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    fVar4 = fVar3;
                    jU = ((u1) iVarG.l(ContentColorKt.a())).u();
                } else {
                    fVar4 = fVar3;
                }
            } else {
                if (i14 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    fVar4 = fVar3;
                    jU = ((u1) iVarG.l(ContentColorKt.a())).u();
                } else {
                    fVar4 = fVar3;
                }
            }
            iVarG.s();
            if (k.H()) {
                k.Q(-2142239481, i12, -1, "androidx.compose.material3.Icon (Icon.kt:136)");
            }
            iVarG.x(69356724);
            if (((i12 & 7168) ^ 3072) <= 2048) {
            }
            objY = iVarG.y();
            if (z10) {
                if (u1.m(jU, u1.f4349b.e())) {
                    objY = null;
                } else {
                    objY = v1.a.b(v1.f4366b, jU, 0, 2, null);
                }
                iVarG.p(objY);
            } else {
                if (u1.m(jU, u1.f4349b.e())) {
                    objY = null;
                } else {
                    objY = v1.a.b(v1.f4366b, jU, 0, 2, null);
                }
                iVarG.p(objY);
            }
            v1 v1Var2 = (v1) objY;
            iVarG.N();
            iVarG.x(69356847);
            if (str != null) {
                androidx.compose.ui.f.a aVar2 = androidx.compose.ui.f.f3869a;
                iVarG.x(69356912);
                if ((i12 & 112) == 32) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                objY2 = iVarG.y();
                if (z11) {
                    objY2 = new Function1<n, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((n) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5655b.d());
                        }
                    };
                    iVarG.p(objY2);
                } else {
                    objY2 = new Function1<n, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((n) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5655b.d());
                        }
                    };
                    iVarG.p(objY2);
                }
                iVarG.N();
                fVarC = androidx.compose.ui.semantics.k.c(aVar2, false, (Function1) objY2, 1, null);
            } else {
                fVarC = androidx.compose.ui.f.f3869a;
            }
            androidx.compose.ui.f fVar7 = fVarC;
            iVarG.N();
            long j13 = jU;
            BoxKt.a(j.b(b(b4.c(fVar4), painter), painter, false, null, androidx.compose.ui.layout.e.f4867a.a(), 0.0f, v1Var2, 22, null).e(fVar7), iVarG, 0);
            if (k.H()) {
                k.P();
            }
            fVar5 = fVar4;
            j11 = j13;
        } else {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i14 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    fVar4 = fVar3;
                    jU = ((u1) iVarG.l(ContentColorKt.a())).u();
                } else {
                    fVar4 = fVar3;
                }
            } else {
                if (i14 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    fVar4 = fVar3;
                    jU = ((u1) iVarG.l(ContentColorKt.a())).u();
                } else {
                    fVar4 = fVar3;
                }
            }
            iVarG.s();
            if (k.H()) {
                k.Q(-2142239481, i12, -1, "androidx.compose.material3.Icon (Icon.kt:136)");
            }
            iVarG.x(69356724);
            if (((i12 & 7168) ^ 3072) <= 2048) {
            }
            objY = iVarG.y();
            if (z10) {
                if (u1.m(jU, u1.f4349b.e())) {
                    objY = null;
                } else {
                    objY = v1.a.b(v1.f4366b, jU, 0, 2, null);
                }
                iVarG.p(objY);
            } else {
                if (u1.m(jU, u1.f4349b.e())) {
                    objY = null;
                } else {
                    objY = v1.a.b(v1.f4366b, jU, 0, 2, null);
                }
                iVarG.p(objY);
            }
            v1 v1Var3 = (v1) objY;
            iVarG.N();
            iVarG.x(69356847);
            if (str != null) {
                androidx.compose.ui.f.a aVar3 = androidx.compose.ui.f.f3869a;
                iVarG.x(69356912);
                if ((i12 & 112) == 32) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                objY2 = iVarG.y();
                if (z11) {
                    objY2 = new Function1<n, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((n) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5655b.d());
                        }
                    };
                    iVarG.p(objY2);
                } else {
                    objY2 = new Function1<n, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj) {
                            invoke((n) obj);
                            return Unit.f64096a;
                        }

                        public final void invoke(n nVar) {
                            SemanticsPropertiesKt.v(nVar, str);
                            SemanticsPropertiesKt.B(nVar, androidx.compose.ui.semantics.f.f5655b.d());
                        }
                    };
                    iVarG.p(objY2);
                }
                iVarG.N();
                fVarC = androidx.compose.ui.semantics.k.c(aVar3, false, (Function1) objY2, 1, null);
            } else {
                fVarC = androidx.compose.ui.f.f3869a;
            }
            androidx.compose.ui.f fVar8 = fVarC;
            iVarG.N();
            long j14 = jU;
            BoxKt.a(j.b(b(b4.c(fVar4), painter), painter, false, null, androidx.compose.ui.layout.e.f4867a.a(), 0.0f, v1Var3, 22, null).e(fVar8), iVarG, 0);
            if (k.H()) {
                k.P();
            }
            fVar5 = fVar4;
            j11 = j14;
        }
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(i iVar2, int i15) {
                    IconKt.a(painter, str, fVar5, j11, iVar2, androidx.compose.runtime.v1.a(i10 | 1), i11);
                }
            });
        }
    }

    private static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, Painter painter) {
        return fVar.e((m.f(painter.h(), m.f76020b.a()) || c(painter.h())) ? f3208a : androidx.compose.ui.f.f3869a);
    }

    private static final boolean c(long j10) {
        return Float.isInfinite(m.i(j10)) && Float.isInfinite(m.g(j10));
    }
}
