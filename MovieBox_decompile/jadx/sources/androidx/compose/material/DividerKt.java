package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

public abstract class DividerKt {
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072  */
    /* JADX WARN: Code duplicated, block: B:43:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:52:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0096  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00da  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:80:0x0115  */
    /* JADX WARN: Code duplicated, block: B:81:0x0134  */
    /* JADX WARN: Code duplicated, block: B:84:0x0164  */
    /* JADX WARN: Code duplicated, block: B:87:0x016f  */
    /* JADX WARN: Code duplicated, block: B:89:? A[RETURN, SYNTHETIC] */
    public static final void a(androidx.compose.ui.f fVar, long j10, float f10, float f11, androidx.compose.runtime.i iVar, final int i10, final int i11) {
        androidx.compose.ui.f fVar2;
        int i12;
        long jK;
        float fG;
        int i13;
        float fG2;
        int i14;
        androidx.compose.ui.f fVar3;
        androidx.compose.ui.f fVarI;
        float fG3;
        final float f12;
        final float f13;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(-1249392198);
        int i15 = i11 & 1;
        if (i15 != 0) {
            i12 = i10 | 6;
            fVar2 = fVar;
        } else if ((i10 & 6) == 0) {
            fVar2 = fVar;
            i12 = (iVarG.O(fVar2) ? 4 : 2) | i10;
        } else {
            fVar2 = fVar;
            i12 = i10;
        }
        if ((i10 & 48) == 0) {
            jK = j10;
            i12 |= ((i11 & 2) == 0 && iVarG.d(jK)) ? 32 : 16;
        } else {
            jK = j10;
        }
        int i16 = i11 & 4;
        if (i16 == 0) {
            if ((i10 & 384) == 0) {
                fG = f10;
                i12 |= iVarG.b(fG) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 3072) == 0) {
                    fG2 = f11;
                    if (iVarG.b(fG2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i12 & 1171) == 1170 || !iVarG.h()) {
                    iVarG.B();
                    if ((i10 & 1) != 0 || iVarG.I()) {
                        if (i15 != 0) {
                            fVar3 = androidx.compose.ui.f.f3869a;
                        } else {
                            fVar3 = fVar2;
                        }
                        if ((i11 & 2) != 0) {
                            jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                            i12 &= -113;
                        }
                        if (i16 != 0) {
                            fG = o0.i.g(1);
                        }
                        if (i13 != 0) {
                            fG2 = o0.i.g(0);
                        }
                    } else {
                        iVarG.G();
                        if ((i11 & 2) != 0) {
                            i12 &= -113;
                        }
                        fVar3 = fVar2;
                    }
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
                    }
                    if (fG2 == 0.0f) {
                        fVarI = androidx.compose.ui.f.f3869a;
                    } else {
                        fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    if (o0.i.i(fG, o0.i.f67404b.a())) {
                        iVarG.P(-129374855);
                        fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                        iVarG.K();
                    } else {
                        iVarG.P(-129316234);
                        iVarG.K();
                        fG3 = fG;
                    }
                    BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                } else {
                    iVarG.G();
                    fVar3 = fVar2;
                }
                f12 = fG;
                f13 = fG2;
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    final androidx.compose.ui.f fVar4 = fVar3;
                    final long j11 = jK;
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar2, int i17) {
                            DividerKt.a(fVar4, j11, f12, f13, iVar2, v1.a(i10 | 1), i11);
                        }
                    });
                }
            }
            i12 |= 3072;
            fG2 = f11;
            if ((i12 & 1171) == 1170) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                } else {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
                }
                if (fG2 == 0.0f) {
                    fVarI = androidx.compose.ui.f.f3869a;
                } else {
                    fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
                }
                if (o0.i.i(fG, o0.i.f67404b.a())) {
                    iVarG.P(-129374855);
                    fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                    iVarG.K();
                } else {
                    iVarG.P(-129316234);
                    iVarG.K();
                    fG3 = fG;
                }
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                } else {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
                }
                if (fG2 == 0.0f) {
                    fVarI = androidx.compose.ui.f.f3869a;
                } else {
                    fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
                }
                if (o0.i.i(fG, o0.i.f67404b.a())) {
                    iVarG.P(-129374855);
                    fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                    iVarG.K();
                } else {
                    iVarG.P(-129316234);
                    iVarG.K();
                    fG3 = fG;
                }
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }
            f12 = fG;
            f13 = fG2;
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar5 = fVar3;
                final long j12 = jK;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i17) {
                        DividerKt.a(fVar5, j12, f12, f13, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 384;
        fG = f10;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 3072) == 0) {
                fG2 = f11;
                if (iVarG.b(fG2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i12 & 1171) == 1170) {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                } else {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
                }
                if (fG2 == 0.0f) {
                    fVarI = androidx.compose.ui.f.f3869a;
                } else {
                    fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
                }
                if (o0.i.i(fG, o0.i.f67404b.a())) {
                    iVarG.P(-129374855);
                    fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                    iVarG.K();
                } else {
                    iVarG.P(-129316234);
                    iVarG.K();
                    fG3 = fG;
                }
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            } else {
                iVarG.B();
                if ((i10 & 1) != 0) {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                } else {
                    if (i15 != 0) {
                        fVar3 = androidx.compose.ui.f.f3869a;
                    } else {
                        fVar3 = fVar2;
                    }
                    if ((i11 & 2) != 0) {
                        jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                        i12 &= -113;
                    }
                    if (i16 != 0) {
                        fG = o0.i.g(1);
                    }
                    if (i13 != 0) {
                        fG2 = o0.i.g(0);
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
                }
                if (fG2 == 0.0f) {
                    fVarI = androidx.compose.ui.f.f3869a;
                } else {
                    fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
                }
                if (o0.i.i(fG, o0.i.f67404b.a())) {
                    iVarG.P(-129374855);
                    fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                    iVarG.K();
                } else {
                    iVarG.P(-129316234);
                    iVarG.K();
                    fG3 = fG;
                }
                BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
            }
            f12 = fG;
            f13 = fG2;
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                final androidx.compose.ui.f fVar6 = fVar3;
                final long j13 = jK;
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar2, int i17) {
                        DividerKt.a(fVar6, j13, f12, f13, iVar2, v1.a(i10 | 1), i11);
                    }
                });
            }
        }
        i12 |= 3072;
        fG2 = f11;
        if ((i12 & 1171) == 1170) {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 2) != 0) {
                    jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -113;
                }
                if (i16 != 0) {
                    fG = o0.i.g(1);
                }
                if (i13 != 0) {
                    fG2 = o0.i.g(0);
                }
            } else {
                if (i15 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 2) != 0) {
                    jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -113;
                }
                if (i16 != 0) {
                    fG = o0.i.g(1);
                }
                if (i13 != 0) {
                    fG2 = o0.i.g(0);
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
            }
            if (fG2 == 0.0f) {
                fVarI = androidx.compose.ui.f.f3869a;
            } else {
                fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
            }
            if (o0.i.i(fG, o0.i.f67404b.a())) {
                iVarG.P(-129374855);
                fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                iVarG.K();
            } else {
                iVarG.P(-129316234);
                iVarG.K();
                fG3 = fG;
            }
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        } else {
            iVarG.B();
            if ((i10 & 1) != 0) {
                if (i15 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 2) != 0) {
                    jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -113;
                }
                if (i16 != 0) {
                    fG = o0.i.g(1);
                }
                if (i13 != 0) {
                    fG2 = o0.i.g(0);
                }
            } else {
                if (i15 != 0) {
                    fVar3 = androidx.compose.ui.f.f3869a;
                } else {
                    fVar3 = fVar2;
                }
                if ((i11 & 2) != 0) {
                    jK = u1.k(e.f3100a.a(iVarG, 6).g(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
                    i12 &= -113;
                }
                if (i16 != 0) {
                    fG = o0.i.g(1);
                }
                if (i13 != 0) {
                    fG2 = o0.i.g(0);
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1249392198, i12, -1, "androidx.compose.material.Divider (Divider.kt:48)");
            }
            if (fG2 == 0.0f) {
                fVarI = androidx.compose.ui.f.f3869a;
            } else {
                fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, fG2, 0.0f, 0.0f, 0.0f, 14, null);
            }
            if (o0.i.i(fG, o0.i.f67404b.a())) {
                iVarG.P(-129374855);
                fG3 = o0.i.g(1.0f / ((o0.e) iVarG.l(CompositionLocalsKt.c())).getDensity());
                iVarG.K();
            } else {
                iVarG.P(-129316234);
                iVarG.K();
                fG3 = fG;
            }
            BoxKt.a(BackgroundKt.b(SizeKt.e(SizeKt.d(fVar3.e(fVarI), 0.0f, 1, null), fG3), jK, null, 2, null), iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        f12 = fG;
        f13 = fG2;
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            final androidx.compose.ui.f fVar7 = fVar3;
            final long j14 = jK;
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i17) {
                    DividerKt.a(fVar7, j14, f12, f13, iVar2, v1.a(i10 | 1), i11);
                }
            });
        }
    }
}
