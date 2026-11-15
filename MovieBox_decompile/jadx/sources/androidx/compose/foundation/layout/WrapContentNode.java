package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

final class WrapContentNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    private Direction f2519n;

    private boolean f2520o;

    private Function2 f2521p;

    public WrapContentNode(Direction direction, boolean z10, Function2 function2) {
        this.f2519n = direction;
        this.f2520o = z10;
        this.f2521p = function2;
    }

    public final Function2 C1() {
        return this.f2521p;
    }

    public final void D1(Function2 function2) {
        this.f2521p = function2;
    }

    public final void E1(Direction direction) {
        this.f2519n = direction;
    }

    public final void F1(boolean z10) {
        this.f2520o = z10;
    }

    @Override
    public androidx.compose.ui.layout.v z(final androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        Direction direction = this.f2519n;
        Direction direction2 = Direction.Vertical;
        int iN = direction != direction2 ? 0 : o0.b.n(j10);
        Direction direction3 = this.f2519n;
        Direction direction4 = Direction.Horizontal;
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.a(iN, (this.f2519n == direction2 || !this.f2520o) ? o0.b.l(j10) : Integer.MAX_VALUE, direction3 == direction4 ? o0.b.m(j10) : 0, (this.f2519n == direction4 || !this.f2520o) ? o0.b.k(j10) : Integer.MAX_VALUE));
        final int iL = RangesKt.l(g0VarP.u0(), o0.b.n(j10), o0.b.l(j10));
        final int iL2 = RangesKt.l(g0VarP.l0(), o0.b.m(j10), o0.b.k(j10));
        return androidx.compose.ui.layout.w.b(xVar, iL, iL2, null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
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
                androidx.compose.ui.layout.g0.a.j(aVar, g0VarP, ((o0.p) this.this$0.C1().invoke(o0.t.b(o0.u.a(iL - g0VarP.u0(), iL2 - g0VarP.l0())), xVar.getLayoutDirection())).n(), 0.0f, 2, null);
            }
        }, 4, null);
    }
}
