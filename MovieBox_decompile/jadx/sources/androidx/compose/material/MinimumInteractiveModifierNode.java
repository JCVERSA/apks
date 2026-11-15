package androidx.compose.material;

import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.node.x;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

public final class MinimumInteractiveModifierNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, x {
    @Override
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        boolean z10 = j1() && ((Boolean) androidx.compose.ui.node.e.a(this, InteractiveComponentSizeKt.b())).booleanValue();
        long j11 = InteractiveComponentSizeKt.f3052c;
        final g0 g0VarP = sVar.P(j10);
        final int iMax = z10 ? Math.max(g0VarP.u0(), xVar.c0(o0.l.d(j11))) : g0VarP.u0();
        final int iMax2 = z10 ? Math.max(g0VarP.l0(), xVar.c0(o0.l.c(j11))) : g0VarP.l0();
        return w.b(xVar, iMax, iMax2, null, new Function1<g0.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.h(aVar, g0VarP, MathKt.d((iMax - g0VarP.u0()) / 2.0f), MathKt.d((iMax2 - g0VarP.l0()) / 2.0f), 0.0f, 4, null);
            }
        }, 4, null);
    }
}
