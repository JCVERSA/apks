package androidx.compose.foundation.layout;

import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class InsetsPaddingModifier implements androidx.compose.ui.layout.o, androidx.compose.ui.modifier.d, androidx.compose.ui.modifier.j {

    private final h0 f2445b;

    private final i1 f2446c;

    private final i1 f2447d;

    public InsetsPaddingModifier(h0 h0Var) {
        this.f2445b = h0Var;
        this.f2446c = u2.c(h0Var, null, 2, null);
        this.f2447d = u2.c(h0Var, null, 2, null);
    }

    private final h0 a() {
        return (h0) this.f2447d.getValue();
    }

    private final h0 i() {
        return (h0) this.f2446c.getValue();
    }

    private final void k(h0 h0Var) {
        this.f2447d.setValue(h0Var);
    }

    private final void l(h0 h0Var) {
        this.f2446c.setValue(h0Var);
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override
    public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof InsetsPaddingModifier) {
            return Intrinsics.c(((InsetsPaddingModifier) obj).f2445b, this.f2445b);
        }
        return false;
    }

    @Override
    public void f(androidx.compose.ui.modifier.k kVar) {
        h0 h0Var = (h0) kVar.P(WindowInsetsPaddingKt.a());
        l(i0.b(this.f2445b, h0Var));
        k(i0.c(h0Var, this.f2445b));
    }

    @Override
    public androidx.compose.ui.modifier.l getKey() {
        return WindowInsetsPaddingKt.a();
    }

    public int hashCode() {
        return this.f2445b.hashCode();
    }

    @Override
    public h0 getValue() {
        return a();
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        final int iC = i().c(xVar, xVar.getLayoutDirection());
        final int iA = i().a(xVar);
        int iD = i().d(xVar, xVar.getLayoutDirection()) + iC;
        int iB = i().b(xVar) + iA;
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.n(j10, -iD, -iB));
        return androidx.compose.ui.layout.w.b(xVar, o0.c.i(j10, g0VarP.u0() + iD), o0.c.h(j10, g0VarP.l0() + iB), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
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
                androidx.compose.ui.layout.g0.a.h(aVar, g0VarP, iC, iA, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
