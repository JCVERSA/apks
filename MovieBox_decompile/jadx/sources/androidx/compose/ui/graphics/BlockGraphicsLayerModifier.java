package androidx.compose.ui.graphics;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class BlockGraphicsLayerModifier extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    private Function1 f3949n;

    public BlockGraphicsLayerModifier(Function1 function1) {
        this.f3949n = function1;
    }

    public final Function1 C1() {
        return this.f3949n;
    }

    public final void D1() {
        NodeCoordinator nodeCoordinatorY1 = androidx.compose.ui.node.g.h(this, androidx.compose.ui.node.s0.a(2)).Y1();
        if (nodeCoordinatorY1 != null) {
            nodeCoordinatorY1.K2(this.f3949n, true);
        }
    }

    public final void E1(Function1 function1) {
        this.f3949n = function1;
    }

    @Override
    public boolean h1() {
        return false;
    }

    public String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.f3949n + ')';
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(j10);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.t(aVar, g0VarP, 0, 0, 0.0f, this.C1(), 4, null);
            }
        }, 4, null);
    }
}
