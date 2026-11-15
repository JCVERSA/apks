package androidx.compose.material;

import androidx.compose.animation.core.r0;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.e0;
import androidx.compose.foundation.v;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.s;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.v1;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.t4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.input.pointer.w;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import org.mvel2.ast.ASTNode;

public abstract class SliderKt {

    private static final float f3066a = o0.i.g(10);

    private static final float f3067b = o0.i.g(24);

    private static final float f3068c = o0.i.g(1);

    private static final float f3069d = o0.i.g(6);

    private static final float f3070e = o0.i.g(4);

    private static final float f3071f;

    private static final float f3072g;

    private static final androidx.compose.ui.f f3073h;

    private static final r0 f3074i;

    static {
        float fG = o0.i.g(48);
        f3071f = fG;
        float fG2 = o0.i.g(144);
        f3072g = fG2;
        f3073h = SizeKt.g(SizeKt.n(androidx.compose.ui.f.f3869a, fG2, 0.0f, 2, null), 0.0f, fG, 1, null);
        f3074i = new r0(100, 0, null, 6, null);
    }

    public static final void a(final Function1 function1, final ClosedFloatingPointRange closedFloatingPointRange, final ClosedFloatingPointRange closedFloatingPointRange2, final i1 i1Var, final float f10, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVarG = iVar.g(-743965752);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.A(function1) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.O(closedFloatingPointRange) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.O(closedFloatingPointRange2) ? 256 : 128;
        }
        if ((i10 & 3072) == 0) {
            i11 |= iVarG.O(i1Var) ? 2048 : 1024;
        }
        if ((i10 & 24576) == 0) {
            i11 |= iVarG.b(f10) ? 16384 : 8192;
        }
        if ((i11 & 9363) == 9362 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-743965752, i11, -1, "androidx.compose.material.CorrectValueSideEffect (Slider.kt:847)");
            }
            boolean z10 = ((i11 & 112) == 32) | ((i11 & 14) == 4) | ((57344 & i11) == 16384) | ((i11 & 7168) == 2048) | ((i11 & 896) == 256);
            Object objY = iVarG.y();
            if (z10 || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function0<Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m75invoke();
                        return Unit.f64096a;
                    }

                    public final void m75invoke() {
                        float fFloatValue = (((Number) closedFloatingPointRange.e()).floatValue() - ((Number) closedFloatingPointRange.j()).floatValue()) / 1000;
                        float fFloatValue2 = ((Number) function1.invoke(Float.valueOf(f10))).floatValue();
                        if (Math.abs(fFloatValue2 - ((Number) i1Var.getValue()).floatValue()) <= fFloatValue || !closedFloatingPointRange2.a((Comparable) i1Var.getValue())) {
                            return;
                        }
                        i1Var.setValue(Float.valueOf(fFloatValue2));
                    }
                };
                iVarG.p(objY);
            }
            g0.e((Function0) objY, iVarG, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i12) {
                    SliderKt.a(function1, closedFloatingPointRange, closedFloatingPointRange2, i1Var, f10, iVar2, v1.a(i10 | 1));
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0133 A[PHI: r0 r4 r6 r7 r8 r38
      0x0133: PHI (r0v9 boolean) = (r0v4 boolean), (r0v13 boolean) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r4v6 kotlin.jvm.functions.Function0) = (r4v2 kotlin.jvm.functions.Function0), (r4v1 kotlin.jvm.functions.Function0) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r6v30 int) = (r6v19 int), (r6v32 int) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r7v14 kotlin.ranges.ClosedFloatingPointRange) = (r7v9 kotlin.ranges.ClosedFloatingPointRange), (r7v15 kotlin.ranges.ClosedFloatingPointRange) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r8v7 androidx.compose.ui.f) = (r8v3 androidx.compose.ui.f), (r8v2 androidx.compose.ui.f) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r38v4 int) = (r38v1 int), (r38v5 int) binds: [B:121:0x015b, B:104:0x012f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:106:0x0136 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x0138  */
    /* JADX WARN: Code duplicated, block: B:109:0x013d  */
    /* JADX WARN: Code duplicated, block: B:110:0x013f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0144  */
    /* JADX WARN: Code duplicated, block: B:114:0x014e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0151  */
    /* JADX WARN: Code duplicated, block: B:117:0x0154  */
    /* JADX WARN: Code duplicated, block: B:119:0x0158  */
    /* JADX WARN: Code duplicated, block: B:122:0x015d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0191  */
    /* JADX WARN: Code duplicated, block: B:128:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:131:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:134:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:136:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:137:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:140:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:145:0x0253  */
    /* JADX WARN: Code duplicated, block: B:149:0x0263  */
    /* JADX WARN: Code duplicated, block: B:151:0x0275  */
    /* JADX WARN: Code duplicated, block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:38:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x0074  */
    /* JADX WARN: Code duplicated, block: B:43:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:51:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0093  */
    /* JADX WARN: Code duplicated, block: B:58:0x009b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00af  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:69:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:74:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00db  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:93:0x010b  */
    /* JADX WARN: Code duplicated, block: B:95:0x0119  */
    public static final void b(final ClosedFloatingPointRange closedFloatingPointRange, final Function1 function1, androidx.compose.ui.f fVar, boolean z10, ClosedFloatingPointRange closedFloatingPointRange2, int i10, Function0 function0, j jVar, androidx.compose.runtime.i iVar, final int i11, final int i12) {
        int i13;
        androidx.compose.ui.f fVar2;
        int i14;
        boolean z11;
        int i15;
        ClosedFloatingPointRange closedFloatingPointRange3;
        int i16;
        int i17;
        int i18;
        int i19;
        Function0 function2;
        int i20;
        j jVarA;
        boolean z12;
        ClosedFloatingPointRange closedFloatingPointRangeB;
        int i21;
        int i22;
        Object objY;
        androidx.compose.runtime.i.a aVar;
        p.i iVar2;
        Object objY2;
        p.i iVar3;
        boolean z13;
        Object objY3;
        final androidx.compose.ui.f fVar3;
        final int i23;
        final j jVar2;
        final ClosedFloatingPointRange closedFloatingPointRange4;
        final Function0 function3;
        final boolean z14;
        g2 g2VarJ;
        androidx.compose.runtime.i iVarG = iVar.g(-1556183027);
        if ((i12 & 1) != 0) {
            i13 = i11 | 6;
        } else if ((i11 & 6) == 0) {
            i13 = (iVarG.O(closedFloatingPointRange) ? 4 : 2) | i11;
        } else {
            i13 = i11;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i11 & 48) == 0) {
            i13 |= iVarG.A(function1) ? 32 : 16;
        }
        int i24 = i12 & 4;
        if (i24 == 0) {
            if ((i11 & 384) == 0) {
                fVar2 = fVar;
                i13 |= iVarG.O(fVar2) ? 256 : 128;
            }
            i14 = i12 & 8;
            if (i14 != 0) {
                if ((i11 & 3072) == 0) {
                    z11 = z10;
                    if (iVarG.a(z11)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i13 |= i15;
                }
                if ((i11 & 24576) == 0) {
                    if ((i12 & 16) == 0) {
                        closedFloatingPointRange3 = closedFloatingPointRange2;
                        int i25 = iVarG.O(closedFloatingPointRange3) ? 16384 : 8192;
                        i13 |= i25;
                    } else {
                        closedFloatingPointRange3 = closedFloatingPointRange2;
                    }
                    i13 |= i25;
                } else {
                    closedFloatingPointRange3 = closedFloatingPointRange2;
                }
                i16 = i12 & 32;
                if (i16 != 0) {
                    i13 |= 196608;
                    i17 = i10;
                } else {
                    i17 = i10;
                    if ((i11 & 196608) == 0) {
                        if (iVarG.c(i17)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i13 |= i18;
                    }
                }
                i19 = i12 & 64;
                if (i19 != 0) {
                    i13 |= 1572864;
                    function2 = function0;
                } else {
                    function2 = function0;
                    if ((i11 & 1572864) == 0) {
                        if (iVarG.A(function2)) {
                            i20 = 1048576;
                        } else {
                            i20 = 524288;
                        }
                        i13 |= i20;
                    }
                }
                if ((i11 & 12582912) == 0) {
                    if ((i12 & 128) == 0) {
                        jVarA = jVar;
                        int i26 = iVarG.O(jVarA) ? 8388608 : 4194304;
                        i13 |= i26;
                    } else {
                        jVarA = jVar;
                    }
                    i13 |= i26;
                } else {
                    jVarA = jVar;
                }
                if ((i13 & 4793491) == 4793490 || !iVarG.h()) {
                    iVarG.B();
                    if ((i11 & 1) != 0 || iVarG.I()) {
                        if (i24 != 0) {
                            fVar2 = androidx.compose.ui.f.f3869a;
                        }
                        if (i14 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if ((i12 & 16) != 0) {
                            closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                            i13 &= -57345;
                        } else {
                            closedFloatingPointRangeB = closedFloatingPointRange3;
                        }
                        if (i16 != 0) {
                            i21 = 0;
                        } else {
                            i21 = i17;
                        }
                        if (i19 != 0) {
                            function2 = null;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                            i22 = 131072;
                            jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                        }
                        iVarG.s();
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                        }
                        objY = iVarG.y();
                        aVar = androidx.compose.runtime.i.f3427a;
                        if (objY == aVar.a()) {
                            objY = p.h.a();
                            iVarG.p(objY);
                        }
                        iVar2 = (p.i) objY;
                        objY2 = iVarG.y();
                        if (objY2 == aVar.a()) {
                            objY2 = p.h.a();
                            iVarG.p(objY2);
                        }
                        iVar3 = (p.i) objY2;
                        if (i21 >= 0) {
                            throw new IllegalArgumentException("steps should be >= 0");
                        }
                        a3 a3VarI = r2.i(function1, iVarG, (i13 >> 3) & 14);
                        if ((i13 & 458752) == i22) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        objY3 = iVarG.y();
                        if (z13 || objY3 == aVar.a()) {
                            objY3 = z(i21);
                            iVarG.p(objY3);
                        }
                        List list = (List) objY3;
                        androidx.compose.ui.f fVarC = InteractiveComponentSizeKt.c(fVar2);
                        float f10 = f3066a;
                        BoxWithConstraintsKt.a(SizeKt.i(fVarC, o0.i.g(4 * f10), o0.i.g(f10 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list, function2, a3VarI, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                        if (androidx.compose.runtime.k.H()) {
                            androidx.compose.runtime.k.P();
                        }
                        fVar3 = fVar2;
                        i23 = i21;
                        jVar2 = jVarA;
                        closedFloatingPointRange4 = closedFloatingPointRangeB;
                        function3 = function2;
                        z14 = z12;
                    } else {
                        iVarG.G();
                        if ((i12 & 16) != 0) {
                            i13 &= -57345;
                        }
                        if ((i12 & 128) != 0) {
                            i13 &= -29360129;
                        }
                        z12 = z11;
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                        i21 = i17;
                    }
                    i22 = 131072;
                    iVarG.s();
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                    }
                    objY = iVarG.y();
                    aVar = androidx.compose.runtime.i.f3427a;
                    if (objY == aVar.a()) {
                        objY = p.h.a();
                        iVarG.p(objY);
                    }
                    iVar2 = (p.i) objY;
                    objY2 = iVarG.y();
                    if (objY2 == aVar.a()) {
                        objY2 = p.h.a();
                        iVarG.p(objY2);
                    }
                    iVar3 = (p.i) objY2;
                    if (i21 >= 0) {
                        throw new IllegalArgumentException("steps should be >= 0");
                    }
                    a3 a3VarI2 = r2.i(function1, iVarG, (i13 >> 3) & 14);
                    if ((i13 & 458752) == i22) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    objY3 = iVarG.y();
                    if (z13) {
                        objY3 = z(i21);
                        iVarG.p(objY3);
                    } else {
                        objY3 = z(i21);
                        iVarG.p(objY3);
                    }
                    List list2 = (List) objY3;
                    androidx.compose.ui.f fVarC2 = InteractiveComponentSizeKt.c(fVar2);
                    float f11 = f3066a;
                    BoxWithConstraintsKt.a(SizeKt.i(fVarC2, o0.i.g(4 * f11), o0.i.g(f11 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list2, function2, a3VarI2, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                    fVar3 = fVar2;
                    i23 = i21;
                    jVar2 = jVarA;
                    closedFloatingPointRange4 = closedFloatingPointRangeB;
                    function3 = function2;
                    z14 = z12;
                } else {
                    iVarG.G();
                    function3 = function2;
                    fVar3 = fVar2;
                    z14 = z11;
                    i23 = i17;
                    jVar2 = jVarA;
                    closedFloatingPointRange4 = closedFloatingPointRange3;
                }
                g2VarJ = iVarG.j();
                if (g2VarJ != null) {
                    g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override
                        public Object invoke(Object obj, Object obj2) {
                            invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                            return Unit.f64096a;
                        }

                        public final void invoke(androidx.compose.runtime.i iVar4, int i27) {
                            SliderKt.b(closedFloatingPointRange, function1, fVar3, z14, closedFloatingPointRange4, i23, function3, jVar2, iVar4, v1.a(i11 | 1), i12);
                        }
                    });
                }
            }
            i13 |= 3072;
            z11 = z10;
            if ((i11 & 24576) == 0) {
                if ((i12 & 16) == 0) {
                    closedFloatingPointRange3 = closedFloatingPointRange2;
                    if (iVarG.O(closedFloatingPointRange3)) {
                    }
                    i13 |= i25;
                } else {
                    closedFloatingPointRange3 = closedFloatingPointRange2;
                }
                i13 |= i25;
            } else {
                closedFloatingPointRange3 = closedFloatingPointRange2;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                i13 |= 196608;
                i17 = i10;
            } else {
                i17 = i10;
                if ((i11 & 196608) == 0) {
                    if (iVarG.c(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
            }
            i19 = i12 & 64;
            if (i19 != 0) {
                i13 |= 1572864;
                function2 = function0;
            } else {
                function2 = function0;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.A(function2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
            }
            if ((i11 & 12582912) == 0) {
                if ((i12 & 128) == 0) {
                    jVarA = jVar;
                    if (iVarG.O(jVarA)) {
                    }
                    i13 |= i26;
                } else {
                    jVarA = jVar;
                }
                i13 |= i26;
            } else {
                jVarA = jVar;
            }
            if ((i13 & 4793491) == 4793490) {
                iVarG.B();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                } else {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                }
                objY = iVarG.y();
                aVar = androidx.compose.runtime.i.f3427a;
                if (objY == aVar.a()) {
                    objY = p.h.a();
                    iVarG.p(objY);
                }
                iVar2 = (p.i) objY;
                objY2 = iVarG.y();
                if (objY2 == aVar.a()) {
                    objY2 = p.h.a();
                    iVarG.p(objY2);
                }
                iVar3 = (p.i) objY2;
                if (i21 >= 0) {
                    throw new IllegalArgumentException("steps should be >= 0");
                }
                a3 a3VarI3 = r2.i(function1, iVarG, (i13 >> 3) & 14);
                if ((i13 & 458752) == i22) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                objY3 = iVarG.y();
                if (z13) {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                } else {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                }
                List list3 = (List) objY3;
                androidx.compose.ui.f fVarC3 = InteractiveComponentSizeKt.c(fVar2);
                float f12 = f3066a;
                BoxWithConstraintsKt.a(SizeKt.i(fVarC3, o0.i.g(4 * f12), o0.i.g(f12 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list3, function2, a3VarI3, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                fVar3 = fVar2;
                i23 = i21;
                jVar2 = jVarA;
                closedFloatingPointRange4 = closedFloatingPointRangeB;
                function3 = function2;
                z14 = z12;
            } else {
                iVarG.B();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                } else {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                }
                objY = iVarG.y();
                aVar = androidx.compose.runtime.i.f3427a;
                if (objY == aVar.a()) {
                    objY = p.h.a();
                    iVarG.p(objY);
                }
                iVar2 = (p.i) objY;
                objY2 = iVarG.y();
                if (objY2 == aVar.a()) {
                    objY2 = p.h.a();
                    iVarG.p(objY2);
                }
                iVar3 = (p.i) objY2;
                if (i21 >= 0) {
                    throw new IllegalArgumentException("steps should be >= 0");
                }
                a3 a3VarI4 = r2.i(function1, iVarG, (i13 >> 3) & 14);
                if ((i13 & 458752) == i22) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                objY3 = iVarG.y();
                if (z13) {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                } else {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                }
                List list4 = (List) objY3;
                androidx.compose.ui.f fVarC4 = InteractiveComponentSizeKt.c(fVar2);
                float f13 = f3066a;
                BoxWithConstraintsKt.a(SizeKt.i(fVarC4, o0.i.g(4 * f13), o0.i.g(f13 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list4, function2, a3VarI4, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                fVar3 = fVar2;
                i23 = i21;
                jVar2 = jVarA;
                closedFloatingPointRange4 = closedFloatingPointRangeB;
                function3 = function2;
                z14 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar4, int i27) {
                        SliderKt.b(closedFloatingPointRange, function1, fVar3, z14, closedFloatingPointRange4, i23, function3, jVar2, iVar4, v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 384;
        fVar2 = fVar;
        i14 = i12 & 8;
        if (i14 != 0) {
            if ((i11 & 3072) == 0) {
                z11 = z10;
                if (iVarG.a(z11)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            if ((i11 & 24576) == 0) {
                if ((i12 & 16) == 0) {
                    closedFloatingPointRange3 = closedFloatingPointRange2;
                    if (iVarG.O(closedFloatingPointRange3)) {
                    }
                    i13 |= i25;
                } else {
                    closedFloatingPointRange3 = closedFloatingPointRange2;
                }
                i13 |= i25;
            } else {
                closedFloatingPointRange3 = closedFloatingPointRange2;
            }
            i16 = i12 & 32;
            if (i16 != 0) {
                i13 |= 196608;
                i17 = i10;
            } else {
                i17 = i10;
                if ((i11 & 196608) == 0) {
                    if (iVarG.c(i17)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i13 |= i18;
                }
            }
            i19 = i12 & 64;
            if (i19 != 0) {
                i13 |= 1572864;
                function2 = function0;
            } else {
                function2 = function0;
                if ((i11 & 1572864) == 0) {
                    if (iVarG.A(function2)) {
                        i20 = 1048576;
                    } else {
                        i20 = 524288;
                    }
                    i13 |= i20;
                }
            }
            if ((i11 & 12582912) == 0) {
                if ((i12 & 128) == 0) {
                    jVarA = jVar;
                    if (iVarG.O(jVarA)) {
                    }
                    i13 |= i26;
                } else {
                    jVarA = jVar;
                }
                i13 |= i26;
            } else {
                jVarA = jVar;
            }
            if ((i13 & 4793491) == 4793490) {
                iVarG.B();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                } else {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                }
                objY = iVarG.y();
                aVar = androidx.compose.runtime.i.f3427a;
                if (objY == aVar.a()) {
                    objY = p.h.a();
                    iVarG.p(objY);
                }
                iVar2 = (p.i) objY;
                objY2 = iVarG.y();
                if (objY2 == aVar.a()) {
                    objY2 = p.h.a();
                    iVarG.p(objY2);
                }
                iVar3 = (p.i) objY2;
                if (i21 >= 0) {
                    throw new IllegalArgumentException("steps should be >= 0");
                }
                a3 a3VarI5 = r2.i(function1, iVarG, (i13 >> 3) & 14);
                if ((i13 & 458752) == i22) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                objY3 = iVarG.y();
                if (z13) {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                } else {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                }
                List list5 = (List) objY3;
                androidx.compose.ui.f fVarC5 = InteractiveComponentSizeKt.c(fVar2);
                float f14 = f3066a;
                BoxWithConstraintsKt.a(SizeKt.i(fVarC5, o0.i.g(4 * f14), o0.i.g(f14 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list5, function2, a3VarI5, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                fVar3 = fVar2;
                i23 = i21;
                jVar2 = jVarA;
                closedFloatingPointRange4 = closedFloatingPointRangeB;
                function3 = function2;
                z14 = z12;
            } else {
                iVarG.B();
                if ((i11 & 1) != 0) {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                } else {
                    if (i24 != 0) {
                        fVar2 = androidx.compose.ui.f.f3869a;
                    }
                    if (i14 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if ((i12 & 16) != 0) {
                        closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                        i13 &= -57345;
                    } else {
                        closedFloatingPointRangeB = closedFloatingPointRange3;
                    }
                    if (i16 != 0) {
                        i21 = 0;
                    } else {
                        i21 = i17;
                    }
                    if (i19 != 0) {
                        function2 = null;
                    }
                    if ((i12 & 128) != 0) {
                        i13 &= -29360129;
                        i22 = 131072;
                        jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                    } else {
                        i22 = 131072;
                    }
                }
                iVarG.s();
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
                }
                objY = iVarG.y();
                aVar = androidx.compose.runtime.i.f3427a;
                if (objY == aVar.a()) {
                    objY = p.h.a();
                    iVarG.p(objY);
                }
                iVar2 = (p.i) objY;
                objY2 = iVarG.y();
                if (objY2 == aVar.a()) {
                    objY2 = p.h.a();
                    iVarG.p(objY2);
                }
                iVar3 = (p.i) objY2;
                if (i21 >= 0) {
                    throw new IllegalArgumentException("steps should be >= 0");
                }
                a3 a3VarI6 = r2.i(function1, iVarG, (i13 >> 3) & 14);
                if ((i13 & 458752) == i22) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                objY3 = iVarG.y();
                if (z13) {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                } else {
                    objY3 = z(i21);
                    iVarG.p(objY3);
                }
                List list6 = (List) objY3;
                androidx.compose.ui.f fVarC6 = InteractiveComponentSizeKt.c(fVar2);
                float f15 = f3066a;
                BoxWithConstraintsKt.a(SizeKt.i(fVarC6, o0.i.g(4 * f15), o0.i.g(f15 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list6, function2, a3VarI6, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
                if (androidx.compose.runtime.k.H()) {
                    androidx.compose.runtime.k.P();
                }
                fVar3 = fVar2;
                i23 = i21;
                jVar2 = jVarA;
                closedFloatingPointRange4 = closedFloatingPointRangeB;
                function3 = function2;
                z14 = z12;
            }
            g2VarJ = iVarG.j();
            if (g2VarJ != null) {
                g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.runtime.i iVar4, int i27) {
                        SliderKt.b(closedFloatingPointRange, function1, fVar3, z14, closedFloatingPointRange4, i23, function3, jVar2, iVar4, v1.a(i11 | 1), i12);
                    }
                });
            }
        }
        i13 |= 3072;
        z11 = z10;
        if ((i11 & 24576) == 0) {
            if ((i12 & 16) == 0) {
                closedFloatingPointRange3 = closedFloatingPointRange2;
                if (iVarG.O(closedFloatingPointRange3)) {
                }
                i13 |= i25;
            } else {
                closedFloatingPointRange3 = closedFloatingPointRange2;
            }
            i13 |= i25;
        } else {
            closedFloatingPointRange3 = closedFloatingPointRange2;
        }
        i16 = i12 & 32;
        if (i16 != 0) {
            i13 |= 196608;
            i17 = i10;
        } else {
            i17 = i10;
            if ((i11 & 196608) == 0) {
                if (iVarG.c(i17)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i13 |= i18;
            }
        }
        i19 = i12 & 64;
        if (i19 != 0) {
            i13 |= 1572864;
            function2 = function0;
        } else {
            function2 = function0;
            if ((i11 & 1572864) == 0) {
                if (iVarG.A(function2)) {
                    i20 = 1048576;
                } else {
                    i20 = 524288;
                }
                i13 |= i20;
            }
        }
        if ((i11 & 12582912) == 0) {
            if ((i12 & 128) == 0) {
                jVarA = jVar;
                if (iVarG.O(jVarA)) {
                }
                i13 |= i26;
            } else {
                jVarA = jVar;
            }
            i13 |= i26;
        } else {
            jVarA = jVar;
        }
        if ((i13 & 4793491) == 4793490) {
            iVarG.B();
            if ((i11 & 1) != 0) {
                if (i24 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                }
                if (i14 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if ((i12 & 16) != 0) {
                    closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    closedFloatingPointRangeB = closedFloatingPointRange3;
                }
                if (i16 != 0) {
                    i21 = 0;
                } else {
                    i21 = i17;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    i22 = 131072;
                    jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                } else {
                    i22 = 131072;
                }
            } else {
                if (i24 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                }
                if (i14 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if ((i12 & 16) != 0) {
                    closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    closedFloatingPointRangeB = closedFloatingPointRange3;
                }
                if (i16 != 0) {
                    i21 = 0;
                } else {
                    i21 = i17;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    i22 = 131072;
                    jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                } else {
                    i22 = 131072;
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
            }
            objY = iVarG.y();
            aVar = androidx.compose.runtime.i.f3427a;
            if (objY == aVar.a()) {
                objY = p.h.a();
                iVarG.p(objY);
            }
            iVar2 = (p.i) objY;
            objY2 = iVarG.y();
            if (objY2 == aVar.a()) {
                objY2 = p.h.a();
                iVarG.p(objY2);
            }
            iVar3 = (p.i) objY2;
            if (i21 >= 0) {
                throw new IllegalArgumentException("steps should be >= 0");
            }
            a3 a3VarI7 = r2.i(function1, iVarG, (i13 >> 3) & 14);
            if ((i13 & 458752) == i22) {
                z13 = true;
            } else {
                z13 = false;
            }
            objY3 = iVarG.y();
            if (z13) {
                objY3 = z(i21);
                iVarG.p(objY3);
            } else {
                objY3 = z(i21);
                iVarG.p(objY3);
            }
            List list7 = (List) objY3;
            androidx.compose.ui.f fVarC7 = InteractiveComponentSizeKt.c(fVar2);
            float f16 = f3066a;
            BoxWithConstraintsKt.a(SizeKt.i(fVarC7, o0.i.g(4 * f16), o0.i.g(f16 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list7, function2, a3VarI7, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            fVar3 = fVar2;
            i23 = i21;
            jVar2 = jVarA;
            closedFloatingPointRange4 = closedFloatingPointRangeB;
            function3 = function2;
            z14 = z12;
        } else {
            iVarG.B();
            if ((i11 & 1) != 0) {
                if (i24 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                }
                if (i14 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if ((i12 & 16) != 0) {
                    closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    closedFloatingPointRangeB = closedFloatingPointRange3;
                }
                if (i16 != 0) {
                    i21 = 0;
                } else {
                    i21 = i17;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    i22 = 131072;
                    jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                } else {
                    i22 = 131072;
                }
            } else {
                if (i24 != 0) {
                    fVar2 = androidx.compose.ui.f.f3869a;
                }
                if (i14 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if ((i12 & 16) != 0) {
                    closedFloatingPointRangeB = RangesKt.b(0.0f, 1.0f);
                    i13 &= -57345;
                } else {
                    closedFloatingPointRangeB = closedFloatingPointRange3;
                }
                if (i16 != 0) {
                    i21 = 0;
                } else {
                    i21 = i17;
                }
                if (i19 != 0) {
                    function2 = null;
                }
                if ((i12 & 128) != 0) {
                    i13 &= -29360129;
                    i22 = 131072;
                    jVarA = k.f3109a.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, iVarG, 0, 6, 1023);
                } else {
                    i22 = 131072;
                }
            }
            iVarG.s();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-1556183027, i13, -1, "androidx.compose.material.RangeSlider (Slider.kt:305)");
            }
            objY = iVarG.y();
            aVar = androidx.compose.runtime.i.f3427a;
            if (objY == aVar.a()) {
                objY = p.h.a();
                iVarG.p(objY);
            }
            iVar2 = (p.i) objY;
            objY2 = iVarG.y();
            if (objY2 == aVar.a()) {
                objY2 = p.h.a();
                iVarG.p(objY2);
            }
            iVar3 = (p.i) objY2;
            if (i21 >= 0) {
                throw new IllegalArgumentException("steps should be >= 0");
            }
            a3 a3VarI8 = r2.i(function1, iVarG, (i13 >> 3) & 14);
            if ((i13 & 458752) == i22) {
                z13 = true;
            } else {
                z13 = false;
            }
            objY3 = iVarG.y();
            if (z13) {
                objY3 = z(i21);
                iVarG.p(objY3);
            } else {
                objY3 = z(i21);
                iVarG.p(objY3);
            }
            List list8 = (List) objY3;
            androidx.compose.ui.f fVarC8 = InteractiveComponentSizeKt.c(fVar2);
            float f17 = f3066a;
            BoxWithConstraintsKt.a(SizeKt.i(fVarC8, o0.i.g(4 * f17), o0.i.g(f17 * 2), 0.0f, 0.0f, 12, null), null, false, androidx.compose.runtime.internal.b.d(652589923, true, new SliderKt$RangeSlider$2(closedFloatingPointRangeB, closedFloatingPointRange, list8, function2, a3VarI8, iVar2, iVar3, z12, i21, jVarA), iVarG, 54), iVarG, 3072, 6);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
            fVar3 = fVar2;
            i23 = i21;
            jVar2 = jVarA;
            closedFloatingPointRange4 = closedFloatingPointRangeB;
            function3 = function2;
            z14 = z12;
        }
        g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar4, int i27) {
                    SliderKt.b(closedFloatingPointRange, function1, fVar3, z14, closedFloatingPointRange4, i23, function3, jVar2, iVar4, v1.a(i11 | 1), i12);
                }
            });
        }
    }

    public static final void c(final boolean z10, final float f10, final float f11, final List list, final j jVar, final float f12, final p.i iVar, final p.i iVar2, final androidx.compose.ui.f fVar, final androidx.compose.ui.f fVar2, final androidx.compose.ui.f fVar3, androidx.compose.runtime.i iVar3, final int i10, final int i11) {
        int i12;
        int i13;
        androidx.compose.runtime.i iVar4;
        androidx.compose.runtime.i iVarG = iVar3.g(-278895713);
        if ((i10 & 6) == 0) {
            i12 = (iVarG.a(z10) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 48) == 0) {
            i12 |= iVarG.b(f10) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i12 |= iVarG.b(f11) ? 256 : 128;
        }
        if ((i10 & 3072) == 0) {
            i12 |= iVarG.A(list) ? 2048 : 1024;
        }
        if ((i10 & 24576) == 0) {
            i12 |= iVarG.O(jVar) ? 16384 : 8192;
        }
        if ((i10 & 196608) == 0) {
            i12 |= iVarG.b(f12) ? 131072 : 65536;
        }
        if ((i10 & 1572864) == 0) {
            i12 |= iVarG.O(iVar) ? 1048576 : 524288;
        }
        if ((i10 & 12582912) == 0) {
            i12 |= iVarG.O(iVar2) ? 8388608 : 4194304;
        }
        if ((i10 & 100663296) == 0) {
            i12 |= iVarG.O(fVar) ? 67108864 : ASTNode.PCTX_STORED;
        }
        if ((i10 & 805306368) == 0) {
            i12 |= iVarG.O(fVar2) ? ASTNode.DISCARD : ASTNode.DEOP;
        }
        if ((i11 & 6) == 0) {
            i13 = i11 | (iVarG.O(fVar3) ? 4 : 2);
        } else {
            i13 = i11;
        }
        if ((i12 & 306783379) == 306783378 && (i13 & 3) == 2 && iVarG.h()) {
            iVarG.G();
            iVar4 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-278895713, i12, i13, "androidx.compose.material.RangeSliderImpl (Slider.kt:633)");
            }
            l.a aVar = l.f3111a;
            final String strA = m.a(aVar.g(), iVarG, 6);
            final String strA2 = m.a(aVar.f(), iVarG, 6);
            androidx.compose.ui.f fVarE = fVar.e(f3073h);
            androidx.compose.ui.b.a aVar2 = androidx.compose.ui.b.f3778a;
            t tVarH = BoxKt.h(aVar2.m(), false);
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            s sVarN = iVarG.n();
            androidx.compose.ui.f fVarE2 = ComposedModifierKt.e(iVarG, fVarE);
            ComposeUiNode.Companion companion = ComposeUiNode.f4915c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE2, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2435a;
            o0.e eVar = (o0.e) iVarG.l(CompositionLocalsKt.c());
            float fD0 = eVar.D0(f3070e);
            float f13 = f3066a;
            float fD1 = eVar.D0(f13);
            float fX0 = eVar.x0(f12);
            float fG = o0.i.g(f13 * 2);
            float fG2 = o0.i.g(fX0 * f10);
            float fG3 = o0.i.g(fX0 * f11);
            androidx.compose.ui.f.a aVar3 = androidx.compose.ui.f.f3869a;
            androidx.compose.ui.f fVarB = SizeKt.b(boxScopeInstance.b(aVar3, aVar2.g()), 0.0f, 1, null);
            int i14 = i12 >> 9;
            int i15 = i12 << 6;
            int i16 = i12;
            e(fVarB, jVar, z10, f10, f11, list, fD1, fD0, iVarG, (i15 & 896) | (i14 & 112) | (i15 & 7168) | (i15 & 57344) | (i15 & 458752));
            iVar4 = iVarG;
            boolean zO = iVar4.O(strA);
            Object objY = iVar4.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function1<androidx.compose.ui.semantics.n, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((androidx.compose.ui.semantics.n) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                        SemanticsPropertiesKt.v(nVar, strA);
                    }
                };
                iVar4.p(objY);
            }
            int i17 = i16 & 57344;
            int i18 = (i16 << 15) & 458752;
            d(boxScopeInstance, FocusableKt.a(androidx.compose.ui.semantics.k.b(aVar3, true, (Function1) objY), true, iVar).e(fVar2), fG2, iVar, jVar, z10, fG, iVar4, (i14 & 7168) | 1572870 | i17 | i18);
            boolean zO2 = iVar4.O(strA2);
            Object objY2 = iVar4.y();
            if (zO2 || objY2 == androidx.compose.runtime.i.f3427a.a()) {
                objY2 = new Function1<androidx.compose.ui.semantics.n, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((androidx.compose.ui.semantics.n) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.ui.semantics.n nVar) {
                        SemanticsPropertiesKt.v(nVar, strA2);
                    }
                };
                iVar4.p(objY2);
            }
            d(boxScopeInstance, FocusableKt.a(androidx.compose.ui.semantics.k.b(aVar3, true, (Function1) objY2), true, iVar2).e(fVar3), fG3, iVar2, jVar, z10, fG, iVar4, ((i16 >> 12) & 7168) | 1572870 | i17 | i18);
            iVar4.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar4.j();
        if (g2VarJ != null) {
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

                public final void invoke(androidx.compose.runtime.i iVar5, int i19) {
                    SliderKt.c(z10, f10, f11, list, jVar, f12, iVar, iVar2, fVar, fVar2, fVar3, iVar5, v1.a(i10 | 1), v1.a(i11));
                }
            });
        }
    }

    public static final void d(final androidx.compose.foundation.layout.f fVar, final androidx.compose.ui.f fVar2, final float f10, final p.i iVar, final j jVar, final boolean z10, final float f11, androidx.compose.runtime.i iVar2, final int i10) {
        int i11;
        androidx.compose.runtime.i iVarG = iVar2.g(428907178);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.O(fVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.O(fVar2) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.b(f10) ? 256 : 128;
        }
        if ((i10 & 3072) == 0) {
            i11 |= iVarG.O(iVar) ? 2048 : 1024;
        }
        if ((i10 & 24576) == 0) {
            i11 |= iVarG.O(jVar) ? 16384 : 8192;
        }
        if ((196608 & i10) == 0) {
            i11 |= iVarG.a(z10) ? 131072 : 65536;
        }
        if ((1572864 & i10) == 0) {
            i11 |= iVarG.b(f11) ? 1048576 : 524288;
        }
        int i12 = i11;
        if ((599187 & i12) == 599186 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(428907178, i12, -1, "androidx.compose.material.SliderThumb (Slider.kt:696)");
            }
            androidx.compose.ui.f fVarI = PaddingKt.i(androidx.compose.ui.f.f3869a, f10, 0.0f, 0.0f, 0.0f, 14, null);
            androidx.compose.ui.b.a aVar = androidx.compose.ui.b.f3778a;
            androidx.compose.ui.f fVarB = fVar.b(fVarI, aVar.g());
            t tVarH = BoxKt.h(aVar.m(), false);
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            s sVarN = iVarG.n();
            androidx.compose.ui.f fVarE = ComposedModifierKt.e(iVarG, fVarB);
            ComposeUiNode.Companion companion = ComposeUiNode.f4915c1;
            Function0 function0A = companion.a();
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarH, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            f3.b(iVarA, fVarE, companion.d());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f2435a;
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar2 = androidx.compose.runtime.i.f3427a;
            if (objY == aVar2.a()) {
                objY = r2.d();
                iVarG.p(objY);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) objY;
            boolean z11 = (i12 & 7168) == 2048;
            Object objY2 = iVarG.y();
            if (z11 || objY2 == aVar2.a()) {
                objY2 = new SliderKt$SliderThumb$1$1$1(iVar, snapshotStateList, null);
                iVarG.p(objY2);
            }
            int i13 = i12 >> 9;
            g0.d(iVar, (Function2) objY2, iVarG, i13 & 14);
            e0.a(BackgroundKt.a(androidx.compose.ui.draw.l.b(v.b(IndicationKt.b(SizeKt.k(fVar2, f11, f11), iVar, RippleKt.f(false, f3067b, 0L, iVarG, 54, 4)), iVar, false, 2, null), z10 ? !snapshotStateList.isEmpty() ? f3069d : f3068c : o0.i.g(0), q.g.e(), false, 0L, 0L, 24, null), ((u1) jVar.c(z10, iVarG, ((i12 >> 15) & 14) | (i13 & 112)).getValue()).u(), q.g.e()), iVarG, 0);
            iVarG.r();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
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

                public final void invoke(androidx.compose.runtime.i iVar3, int i14) {
                    SliderKt.d(fVar, fVar2, f10, iVar, jVar, z10, f11, iVar3, v1.a(i10 | 1));
                }
            });
        }
    }

    public static final void e(final androidx.compose.ui.f fVar, final j jVar, final boolean z10, final float f10, final float f11, final List list, final float f12, final float f13, androidx.compose.runtime.i iVar, final int i10) {
        int i11;
        androidx.compose.runtime.i iVar2;
        androidx.compose.runtime.i iVarG = iVar.g(1833126050);
        if ((i10 & 6) == 0) {
            i11 = (iVarG.O(fVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            i11 |= iVarG.O(jVar) ? 32 : 16;
        }
        if ((i10 & 384) == 0) {
            i11 |= iVarG.a(z10) ? 256 : 128;
        }
        if ((i10 & 3072) == 0) {
            i11 |= iVarG.b(f10) ? 2048 : 1024;
        }
        if ((i10 & 24576) == 0) {
            i11 |= iVarG.b(f11) ? 16384 : 8192;
        }
        if ((196608 & i10) == 0) {
            i11 |= iVarG.A(list) ? 131072 : 65536;
        }
        if ((1572864 & i10) == 0) {
            i11 |= iVarG.b(f12) ? 1048576 : 524288;
        }
        if ((12582912 & i10) == 0) {
            i11 |= iVarG.b(f13) ? 8388608 : 4194304;
        }
        if ((i11 & 4793491) == 4793490 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1833126050, i11, -1, "androidx.compose.material.Track (Slider.kt:747)");
            }
            int i12 = ((i11 >> 6) & 14) | 48 | ((i11 << 3) & 896);
            final a3 a3VarB = jVar.b(z10, false, iVarG, i12);
            final a3 a3VarB2 = jVar.b(z10, true, iVarG, i12);
            final a3 a3VarA = jVar.a(z10, false, iVarG, i12);
            final a3 a3VarA2 = jVar.a(z10, true, iVarG, i12);
            boolean zO = ((29360128 & i11) == 8388608) | ((i11 & 3670016) == 1048576) | iVarG.O(a3VarB) | ((57344 & i11) == 16384) | ((i11 & 7168) == 2048) | iVarG.O(a3VarB2) | iVarG.A(list) | iVarG.O(a3VarA) | iVarG.O(a3VarA2);
            Object objY = iVarG.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                iVar2 = iVarG;
                Object obj = new Function1<z.g, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj2) {
                        invoke((z.g) obj2);
                        return Unit.f64096a;
                    }

                    public final void invoke(z.g gVar) {
                        boolean z11 = gVar.getLayoutDirection() == LayoutDirection.Rtl;
                        long jA = y.h.a(f12, y.g.n(gVar.N0()));
                        long jA2 = y.h.a(y.m.i(gVar.i()) - f12, y.g.n(gVar.N0()));
                        long j10 = z11 ? jA2 : jA;
                        if (!z11) {
                            jA = jA2;
                        }
                        long jU = ((u1) a3VarB.getValue()).u();
                        float f14 = f13;
                        c5.a aVar = c5.f4009a;
                        long j11 = j10;
                        z.f.f(gVar, jU, j10, jA, f14, aVar.b(), null, 0.0f, null, 0, 480, null);
                        z.f.f(gVar, ((u1) a3VarB2.getValue()).u(), y.h.a(y.g.m(j11) + ((y.g.m(jA) - y.g.m(j11)) * f10), y.g.n(gVar.N0())), y.h.a(y.g.m(j11) + ((y.g.m(jA) - y.g.m(j11)) * f11), y.g.n(gVar.N0())), f13, aVar.b(), null, 0.0f, null, 0, 480, null);
                        List<Float> list2 = list;
                        float f15 = f11;
                        float f16 = f10;
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        for (Object obj2 : list2) {
                            float fFloatValue = ((Number) obj2).floatValue();
                            Boolean boolValueOf = Boolean.valueOf(fFloatValue > f15 || fFloatValue < f16);
                            Object arrayList = linkedHashMap.get(boolValueOf);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                linkedHashMap.put(boolValueOf, arrayList);
                            }
                            ((List) arrayList).add(obj2);
                        }
                        a3 a3Var = a3VarA;
                        a3 a3Var2 = a3VarA2;
                        float f17 = f13;
                        for (Map.Entry entry : linkedHashMap.entrySet()) {
                            boolean zBooleanValue = ((Boolean) entry.getKey()).booleanValue();
                            List list3 = (List) entry.getValue();
                            ArrayList arrayList2 = new ArrayList(list3.size());
                            int size = list3.size();
                            for (int i13 = 0; i13 < size; i13++) {
                                arrayList2.add(y.g.d(y.h.a(y.g.m(y.h.e(j11, jA, ((Number) list3.get(i13)).floatValue())), y.g.n(gVar.N0()))));
                            }
                            z.f.h(gVar, arrayList2, t4.f4342a.b(), ((u1) (zBooleanValue ? a3Var : a3Var2).getValue()).u(), f17, c5.f4009a.b(), null, 0.0f, null, 0, 480, null);
                        }
                    }
                };
                iVar2.p(obj);
                objY = obj;
            } else {
                iVar2 = iVarG;
            }
            CanvasKt.a(fVar, (Function1) objY, iVar2, i11 & 14);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar3, int i13) {
                    SliderKt.e(fVar, jVar, z10, f10, f11, list, f12, f13, iVar3, v1.a(i10 | 1));
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object r(androidx.compose.ui.input.pointer.c cVar, long j10, int i10, Continuation continuation) {
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$1;
        Ref.FloatRef floatRef;
        if (continuation instanceof SliderKt$awaitSlop$1) {
            sliderKt$awaitSlop$1 = (SliderKt$awaitSlop$1) continuation;
            int i11 = sliderKt$awaitSlop$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                sliderKt$awaitSlop$1.label = i11 - Integer.MIN_VALUE;
            } else {
                sliderKt$awaitSlop$1 = new SliderKt$awaitSlop$1(continuation);
            }
        } else {
            sliderKt$awaitSlop$1 = new SliderKt$awaitSlop$1(continuation);
        }
        SliderKt$awaitSlop$1 sliderKt$awaitSlop$2 = sliderKt$awaitSlop$1;
        Object obj = sliderKt$awaitSlop$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = sliderKt$awaitSlop$2.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            final Ref.FloatRef floatRef2 = new Ref.FloatRef();
            Function2<w, Float, Unit> function2 = new Function2<w, Float, Unit>() {
                {
                    super(2);
                }

                @Override
                public Object invoke(Object obj2, Object obj3) {
                    invoke((w) obj2, ((Number) obj3).floatValue());
                    return Unit.f64096a;
                }

                public final void invoke(w wVar, float f10) {
                    wVar.a();
                    floatRef2.element = f10;
                }
            };
            sliderKt$awaitSlop$2.L$0 = floatRef2;
            sliderKt$awaitSlop$2.label = 1;
            Object objA = DragGestureDetectorCopyKt.a(cVar, j10, i10, function2, sliderKt$awaitSlop$2);
            if (objA == objF) {
                return objF;
            }
            obj = objA;
            floatRef = floatRef2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            floatRef = (Ref.FloatRef) sliderKt$awaitSlop$2.L$0;
            ResultKt.b(obj);
        }
        w wVar = (w) obj;
        if (wVar != null) {
            return TuplesKt.a(wVar, Boxing.c(floatRef.element));
        }
        return null;
    }

    public static final float s(float f10, float f11, float f12) {
        float f13 = f11 - f10;
        float f14 = f13 == 0.0f ? 0.0f : (f12 - f10) / f13;
        float f15 = f14 >= 0.0f ? f14 : 0.0f;
        if (f15 > 1.0f) {
            return 1.0f;
        }
        return f15;
    }

    public static final float t() {
        return f3066a;
    }

    public static final androidx.compose.ui.f u(androidx.compose.ui.f fVar, p.i iVar, p.i iVar2, a3 a3Var, a3 a3Var2, boolean z10, boolean z11, float f10, ClosedFloatingPointRange closedFloatingPointRange, a3 a3Var3, a3 a3Var4) {
        return z10 ? l0.d(fVar, new Object[]{iVar, iVar2, Float.valueOf(f10), Boolean.valueOf(z11), closedFloatingPointRange}, new SliderKt$rangeSliderPressDragModifier$1(iVar, iVar2, a3Var, a3Var2, a3Var4, z11, f10, a3Var3, null)) : fVar;
    }

    public static final float v(float f10, float f11, float f12, float f13, float f14) {
        return q0.b.b(f13, f14, s(f10, f11, f12));
    }

    public static final ClosedFloatingPointRange w(float f10, float f11, ClosedFloatingPointRange closedFloatingPointRange, float f12, float f13) {
        return RangesKt.b(v(f10, f11, ((Number) closedFloatingPointRange.j()).floatValue(), f12, f13), v(f10, f11, ((Number) closedFloatingPointRange.e()).floatValue(), f12, f13));
    }

    public static final androidx.compose.ui.f x(androidx.compose.ui.f fVar, float f10, final boolean z10, final Function1 function1, final Function0 function0, final ClosedFloatingPointRange closedFloatingPointRange, final int i10) {
        final float fK = RangesKt.k(f10, ((Number) closedFloatingPointRange.j()).floatValue(), ((Number) closedFloatingPointRange.e()).floatValue());
        return ProgressSemanticsKt.a(androidx.compose.ui.semantics.k.c(fVar, false, new Function1<androidx.compose.ui.semantics.n, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.semantics.n) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.semantics.n nVar) {
                if (!z10) {
                    SemanticsPropertiesKt.f(nVar);
                }
                final ClosedFloatingPointRange<Float> closedFloatingPointRange2 = closedFloatingPointRange;
                final int i11 = i10;
                final float f11 = fK;
                final Function1<Float, Unit> function2 = function1;
                final Function0<Unit> function3 = function0;
                SemanticsPropertiesKt.z(nVar, null, new Function1<Float, Boolean>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        return invoke(((Number) obj).floatValue());
                    }

                    public final Boolean invoke(float f12) {
                        int i12;
                        float fK2 = RangesKt.k(f12, ((Number) closedFloatingPointRange2.j()).floatValue(), ((Number) closedFloatingPointRange2.e()).floatValue());
                        int i13 = i11;
                        boolean z11 = false;
                        if (i13 > 0 && (i12 = i13 + 1) >= 0) {
                            float fAbs = fK2;
                            float f13 = fAbs;
                            int i14 = 0;
                            while (true) {
                                float fB = q0.b.b(((Number) closedFloatingPointRange2.j()).floatValue(), ((Number) closedFloatingPointRange2.e()).floatValue(), i14 / (i11 + 1));
                                float f14 = fB - fK2;
                                if (Math.abs(f14) <= fAbs) {
                                    fAbs = Math.abs(f14);
                                    f13 = fB;
                                }
                                if (i14 == i12) {
                                    break;
                                }
                                i14++;
                            }
                            fK2 = f13;
                        }
                        if (fK2 != f11) {
                            function2.invoke(Float.valueOf(fK2));
                            Function0<Unit> function4 = function3;
                            if (function4 != null) {
                                function4.invoke();
                            }
                            z11 = true;
                        }
                        return Boolean.valueOf(z11);
                    }
                }, 1, null);
            }
        }, 1, null), f10, closedFloatingPointRange, i10);
    }

    public static final float y(float f10, List list, float f11, float f12) {
        Object obj;
        if (list.isEmpty()) {
            obj = null;
        } else {
            Object obj2 = list.get(0);
            float fAbs = Math.abs(q0.b.b(f11, f12, ((Number) obj2).floatValue()) - f10);
            int iN = CollectionsKt.n(list);
            int i10 = 1;
            if (1 <= iN) {
                while (true) {
                    Object obj3 = list.get(i10);
                    float fAbs2 = Math.abs(q0.b.b(f11, f12, ((Number) obj3).floatValue()) - f10);
                    if (Float.compare(fAbs, fAbs2) > 0) {
                        obj2 = obj3;
                        fAbs = fAbs2;
                    }
                    if (i10 == iN) {
                        break;
                    }
                    i10++;
                }
            }
            obj = obj2;
        }
        Float f13 = (Float) obj;
        return f13 != null ? q0.b.b(f11, f12, f13.floatValue()) : f10;
    }

    private static final List z(int i10) {
        if (i10 == 0) {
            return CollectionsKt.l();
        }
        int i11 = i10 + 2;
        ArrayList arrayList = new ArrayList(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(Float.valueOf(i12 / (i10 + 1)));
        }
        return arrayList;
    }
}
