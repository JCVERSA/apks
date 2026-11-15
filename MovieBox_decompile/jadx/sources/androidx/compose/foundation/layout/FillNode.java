package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

final class FillNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    private Direction f2442n;

    private float f2443o;

    public FillNode(Direction direction, float f10) {
        this.f2442n = direction;
        this.f2443o = f10;
    }

    public final void C1(Direction direction) {
        this.f2442n = direction;
    }

    public final void D1(float f10) {
        this.f2443o = f10;
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        int iN;
        int iL;
        int iK;
        int iL2;
        if (!o0.b.h(j10) || this.f2442n == Direction.Vertical) {
            iN = o0.b.n(j10);
            iL = o0.b.l(j10);
        } else {
            iN = RangesKt.l(Math.round(o0.b.l(j10) * this.f2443o), o0.b.n(j10), o0.b.l(j10));
            iL = iN;
        }
        if (!o0.b.g(j10) || this.f2442n == Direction.Horizontal) {
            int iM = o0.b.m(j10);
            iK = o0.b.k(j10);
            iL2 = iM;
        } else {
            iL2 = RangesKt.l(Math.round(o0.b.k(j10) * this.f2443o), o0.b.m(j10), o0.b.k(j10));
            iK = iL2;
        }
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.a(iN, iL, iL2, iK));
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.l(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
