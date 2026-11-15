package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class PaddingNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    private float f2456n;

    private float f2457o;

    private float f2458p;

    private float f2459q;

    private boolean f2460r;

    public PaddingNode(float f10, float f11, float f12, float f13, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, z10);
    }

    public final boolean C1() {
        return this.f2460r;
    }

    public final float D1() {
        return this.f2456n;
    }

    public final float E1() {
        return this.f2457o;
    }

    public final void F1(float f10) {
        this.f2459q = f10;
    }

    public final void G1(float f10) {
        this.f2458p = f10;
    }

    public final void H1(boolean z10) {
        this.f2460r = z10;
    }

    public final void I1(float f10) {
        this.f2456n = f10;
    }

    public final void J1(float f10) {
        this.f2457o = f10;
    }

    @Override
    public androidx.compose.ui.layout.v z(final androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        int iC0 = xVar.c0(this.f2456n) + xVar.c0(this.f2458p);
        int iC1 = xVar.c0(this.f2457o) + xVar.c0(this.f2459q);
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.n(j10, -iC0, -iC1));
        return androidx.compose.ui.layout.w.b(xVar, o0.c.i(j10, g0VarP.u0() + iC0), o0.c.h(j10, g0VarP.l0() + iC1), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
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
                if (this.this$0.C1()) {
                    androidx.compose.ui.layout.g0.a.l(aVar, g0VarP, xVar.c0(this.this$0.D1()), xVar.c0(this.this$0.E1()), 0.0f, 4, null);
                } else {
                    androidx.compose.ui.layout.g0.a.h(aVar, g0VarP, xVar.c0(this.this$0.D1()), xVar.c0(this.this$0.E1()), 0.0f, 4, null);
                }
            }
        }, 4, null);
    }

    private PaddingNode(float f10, float f11, float f12, float f13, boolean z10) {
        this.f2456n = f10;
        this.f2457o = f11;
        this.f2458p = f12;
        this.f2459q = f13;
        this.f2460r = z10;
    }
}
