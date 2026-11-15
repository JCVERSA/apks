package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

final class SizeNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    private float f2478n;

    private float f2479o;

    private float f2480p;

    private float f2481q;

    private boolean f2482r;

    public SizeNode(float f10, float f11, float f12, float f13, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, z10);
    }

    private final long C1(o0.e eVar) {
        int iE;
        int iE2;
        float f10 = this.f2480p;
        o0.i.a aVar = o0.i.f67404b;
        int i10 = 0;
        int iE3 = !o0.i.i(f10, aVar.b()) ? RangesKt.e(eVar.c0(this.f2480p), 0) : Integer.MAX_VALUE;
        int iE4 = !o0.i.i(this.f2481q, aVar.b()) ? RangesKt.e(eVar.c0(this.f2481q), 0) : Integer.MAX_VALUE;
        if (o0.i.i(this.f2478n, aVar.b()) || (iE = RangesKt.e(RangesKt.h(eVar.c0(this.f2478n), iE3), 0)) == Integer.MAX_VALUE) {
            iE = 0;
        }
        if (!o0.i.i(this.f2479o, aVar.b()) && (iE2 = RangesKt.e(RangesKt.h(eVar.c0(this.f2479o), iE4), 0)) != Integer.MAX_VALUE) {
            i10 = iE2;
        }
        return o0.c.a(iE, iE3, i10, iE4);
    }

    public final void D1(boolean z10) {
        this.f2482r = z10;
    }

    public final void E1(float f10) {
        this.f2481q = f10;
    }

    public final void F1(float f10) {
        this.f2480p = f10;
    }

    public final void G1(float f10) {
        this.f2479o = f10;
    }

    public final void H1(float f10) {
        this.f2478n = f10;
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        long jA;
        long jC1 = C1(xVar);
        if (this.f2482r) {
            jA = o0.c.g(j10, jC1);
        } else {
            float f10 = this.f2478n;
            o0.i.a aVar = o0.i.f67404b;
            jA = o0.c.a(!o0.i.i(f10, aVar.b()) ? o0.b.n(jC1) : RangesKt.h(o0.b.n(j10), o0.b.l(jC1)), !o0.i.i(this.f2480p, aVar.b()) ? o0.b.l(jC1) : RangesKt.e(o0.b.l(j10), o0.b.n(jC1)), !o0.i.i(this.f2479o, aVar.b()) ? o0.b.m(jC1) : RangesKt.h(o0.b.m(j10), o0.b.k(jC1)), !o0.i.i(this.f2481q, aVar.b()) ? o0.b.k(jC1) : RangesKt.e(o0.b.k(j10), o0.b.m(jC1)));
        }
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(jA);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar2) {
                androidx.compose.ui.layout.g0.a.l(aVar2, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    private SizeNode(float f10, float f11, float f12, float f13, boolean z10) {
        this.f2478n = f10;
        this.f2479o = f11;
        this.f2480p = f12;
        this.f2481q = f13;
        this.f2482r = z10;
    }
}
