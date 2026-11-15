package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.g;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import o0.u;
import y.i;
import y.n;

public abstract class ScrollIntoView__ScrollIntoViewRequesterKt {
    public static final Object a(androidx.compose.ui.node.f fVar, final i iVar, Continuation continuation) {
        if (!fVar.getNode().j1()) {
            return Unit.f64096a;
        }
        final l lVarK = g.k(fVar);
        a aVarA = b.a(fVar);
        if (aVarA == null) {
            return Unit.f64096a;
        }
        Object objU = aVarA.U(lVarK, new Function0<i>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final i invoke() {
                i iVar2 = iVar;
                if (iVar2 != null) {
                    return iVar2;
                }
                l lVar = lVarK;
                if (!lVar.F()) {
                    lVar = null;
                }
                if (lVar != null) {
                    return n.c(u.d(lVar.k()));
                }
                return null;
            }
        }, continuation);
        return objU == IntrinsicsKt.f() ? objU : Unit.f64096a;
    }

    public static Object b(androidx.compose.ui.node.f fVar, i iVar, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            iVar = null;
        }
        return f.a(fVar, iVar, continuation);
    }
}
