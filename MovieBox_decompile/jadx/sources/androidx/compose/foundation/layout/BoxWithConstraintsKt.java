package androidx.compose.foundation.layout;

import androidx.compose.runtime.g2;
import androidx.compose.runtime.v1;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.o0;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

public abstract class BoxWithConstraintsKt {
    public static final void a(androidx.compose.ui.f fVar, androidx.compose.ui.b bVar, boolean z10, final Function3 function3, androidx.compose.runtime.i iVar, final int i10, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(1781813501);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 6) == 0) {
            i12 = (iVarG.O(fVar) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i14 = i11 & 2;
        if (i14 != 0) {
            i12 |= 48;
        } else if ((i10 & 48) == 0) {
            i12 |= iVarG.O(bVar) ? 32 : 16;
        }
        int i15 = i11 & 4;
        if (i15 != 0) {
            i12 |= 384;
        } else if ((i10 & 384) == 0) {
            i12 |= iVarG.a(z10) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 3072) == 0) {
            i12 |= iVarG.A(function3) ? 2048 : 1024;
        }
        if ((i12 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
        } else {
            if (i13 != 0) {
                fVar = androidx.compose.ui.f.f3869a;
            }
            if (i14 != 0) {
                bVar = androidx.compose.ui.b.f3778a.m();
            }
            if (i15 != 0) {
                z10 = false;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1781813501, i12, -1, "androidx.compose.foundation.layout.BoxWithConstraints (BoxWithConstraints.kt:64)");
            }
            final androidx.compose.ui.layout.t tVarH = BoxKt.h(bVar, z10);
            boolean zO = ((i12 & 7168) == 2048) | iVarG.O(tVarH);
            Object objY = iVarG.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new Function2<o0, o0.b, androidx.compose.ui.layout.v>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override
                    public Object invoke(Object obj, Object obj2) {
                        return m38invoke0kLqBqw((o0) obj, ((o0.b) obj2).r());
                    }

                    public final androidx.compose.ui.layout.v m38invoke0kLqBqw(o0 o0Var, long j10) {
                        final h hVar = new h(o0Var, j10, null);
                        Unit unit = Unit.f64096a;
                        final Function3<g, androidx.compose.runtime.i, Integer, Unit> function4 = function3;
                        return tVarH.c(o0Var, o0Var.E(unit, androidx.compose.runtime.internal.b.b(-1945019079, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() {
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

                            public final void invoke(androidx.compose.runtime.i iVar2, int i16) {
                                if ((i16 & 3) == 2 && iVar2.h()) {
                                    iVar2.G();
                                    return;
                                }
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.Q(-1945019079, i16, -1, "androidx.compose.foundation.layout.BoxWithConstraints.<anonymous>.<anonymous>.<anonymous> (BoxWithConstraints.kt:68)");
                                }
                                function4.invoke(hVar, iVar2, 0);
                                if (androidx.compose.runtime.k.H()) {
                                    androidx.compose.runtime.k.P();
                                }
                            }
                        })), j10);
                    }
                };
                iVarG.p(objY);
            }
            SubcomposeLayoutKt.a(fVar, (Function2) objY, iVarG, i12 & 14, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        final androidx.compose.ui.f fVar2 = fVar;
        final androidx.compose.ui.b bVar2 = bVar;
        final boolean z11 = z10;
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

                public final void invoke(androidx.compose.runtime.i iVar2, int i16) {
                    BoxWithConstraintsKt.a(fVar2, bVar2, z11, function3, iVar2, v1.a(i10 | 1), i11);
                }
            });
        }
    }
}
