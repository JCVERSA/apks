package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.t1;
import androidx.compose.runtime.v1;
import androidx.compose.ui.layout.PinnableContainerKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

public abstract class LazyLayoutPinnableItemKt {
    public static final void a(final Object obj, final int i10, final w wVar, final Function2 function2, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(-2079116560);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(obj) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.c(i10) ? 32 : 16;
        }
        if ((i11 & 384) == 0) {
            i12 |= iVarG.A(wVar) ? 256 : 128;
        }
        if ((i11 & 3072) == 0) {
            i12 |= iVarG.A(function2) ? 2048 : 1024;
        }
        if ((i12 & 1171) == 1170 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-2079116560, i12, -1, "androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem (LazyLayoutPinnableItem.kt:52)");
            }
            boolean zO = iVarG.O(obj) | iVarG.O(wVar);
            Object objY = iVarG.y();
            if (zO || objY == androidx.compose.runtime.i.f3427a.a()) {
                objY = new v(obj, wVar);
                iVarG.p(objY);
            }
            final v vVar = (v) objY;
            vVar.g(i10);
            vVar.i((androidx.compose.ui.layout.f0) iVarG.l(PinnableContainerKt.a()));
            boolean zO2 = iVarG.O(vVar);
            Object objY2 = iVarG.y();
            if (zO2 || objY2 == androidx.compose.runtime.i.f3427a.a()) {
                objY2 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() {

                    public static final class a implements androidx.compose.runtime.c0 {

                        final v f2679a;

                        public a(v vVar) {
                            this.f2679a = vVar;
                        }

                        @Override
                        public void dispose() {
                            this.f2679a.f();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        return new a(vVar);
                    }
                };
                iVarG.p(objY2);
            }
            androidx.compose.runtime.g0.a(vVar, (Function1) objY2, iVarG, 0);
            CompositionLocalKt.a(PinnableContainerKt.a().d(vVar), function2, iVarG, ((i12 >> 6) & 112) | t1.f3732i);
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
                public Object invoke(Object obj2, Object obj3) {
                    invoke((androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
                    return Unit.f64096a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    LazyLayoutPinnableItemKt.a(obj, i10, wVar, function2, iVar2, v1.a(i11 | 1));
                }
            });
        }
    }
}
